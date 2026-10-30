<?php

/**
 * OI-1280 - Data the "Saisie patient" screen needs, that a varset model cannot carry:
 * - the project dictionaries sexe, langues, pays (records of the "dico" varset);
 * - the project theme (style resource = design tokens), linked to the project.
 *
 * Played by the core ScriptPlayer (migration type "include_script", see app-migration.xml).
 * Goes through the core API (varset InsertMultipleData, Resource Save) rather than raw SQL,
 * so group rights (_data_group), audit and the project configuration stay consistent.
 * Idempotent: values and resources already present are left untouched.
 */
class App_Migration_1_0_DesignSystemSetup
{
    public const STYLE_RESOURCE_NAME = 'Theme Design System (OI-1280)';
    public const STYLE_FILE = 'style.designsystem.xml';

    /**
     * Project dictionaries: dico_name => [code => label], in display order (position)
     *
     * @var array
     */
    protected $_aDicos = array(
        'sexe' => array(
            'F' => 'Féminin',
            'M' => 'Masculin',
            'I' => 'Indéterminé',
        ),
        'langues' => array(
            'FR' => 'Français',
            'EN' => 'English',
            'ES' => 'Español',
            'DE' => 'Deutsch',
            'IT' => 'Italiano',
            'AUTRE' => 'Autre',
        ),
        'pays' => array(
            'FR' => 'France',
            'BE' => 'Belgique',
            'CH' => 'Suisse',
            'LU' => 'Luxembourg',
            'CA' => 'Canada',
            'AUTRE' => 'Autre',
        ),
    );

    /**
     * Entry point called by Core_Library_Resource_XML_ScriptPlayer_Action_Migration_IncludeScript
     */
    public function Exec()
    {
        $oDb = Zend_Db_Table::getDefaultAdapter();
        $aProjects = $oDb->select()->from('sys_project', array('name'))->query()->fetchAll();

        foreach ($aProjects as $aProject) {
            $oAccount = Core_Library_Account::GetInstance();
            $oAccount->SetCurrentProjectName($aProject['name']);
            $oProject = $oAccount->GetCurrentProject();

            $this->_addDicoValues($oProject);
            $this->_installStyle($oProject);
        }
    }

    /**
     * Insert the missing dictionary values (matched on dico_name + code)
     *
     * @param Core_Library_Project $oProject
     */
    protected function _addDicoValues(Core_Library_Project $oProject)
    {
        $sTable = $oProject->DicoManager()->GetDicoTableName();
        $aNewValues = array();

        foreach ($this->_aDicos as $sDicoName => $aValues) {
            $aExistingCodes = $oProject->Db()->select()
                ->from($sTable, array('code'))
                ->where('dico_name = ?', $sDicoName)
                ->query()
                ->fetchAll(Zend_Db::FETCH_COLUMN);

            $iPosition = 0;
            foreach ($aValues as $sCode => $sLabel) {
                $iPosition++;
                if (in_array((string) $sCode, $aExistingCodes, true)) {
                    continue;
                }
                $aNewValues[] = array(
                    'dico_name' => $sDicoName,
                    'code' => $sCode,
                    'label' => $sLabel,
                    'position' => $iPosition,
                );
            }
        }

        // Nothing to insert when every value already exists (migration re-run)
        if (!empty($aNewValues)) {
            // Varset API: also writes the rights rows (_data_group) and the audit trail
            $oProject
                ->GetVarSet(Core_Library_Model_Dico_Manager::DEFAULT_DICO_VARSET_NAME)
                ->InsertMultipleData($aNewValues);
        }
    }

    /**
     * Create the theme style resource if missing, and make it the project's style
     *
     * @param Core_Library_Project $oProject
     */
    protected function _installStyle(Core_Library_Project $oProject)
    {
        // The type column holds the id of the code in the "resource_type" system dico
        $iStyleType = $oProject->DicoManager()->code2Id('resource_type', Core_Library_Resource::TYPE_XML_STYLE, true);

        // A project can only have one style resource
        $aStyle = $oProject->Db()->select()
            ->from(Core_Library_TName::GetPjResource(), array('id_data', 'name'))
            ->where('type = ?', $iStyleType)
            ->query()
            ->fetch();

        if ($aStyle) {
            if ($aStyle['name'] !== self::STYLE_RESOURCE_NAME) {
                throw new Core_Library_Exception(sprintf(
                    'Project "%s" already has another style resource ("%s", id %d): left untouched.',
                    $oProject->GetName(),
                    $aStyle['name'],
                    $aStyle['id_data']
                ));
            }
            if ((int) $oProject->GetIdStyleResource() !== (int) $aStyle['id_data']) {
                $oProject->SetIdStyleResource($aStyle['id_data']);
            }

            return;
        }

        $sFile = sprintf(
            '%s/xml/%s',
            Core_Library_MigrationManager::GetInstance()->GetPath(null),
            self::STYLE_FILE
        );
        $oStyle = new Core_Library_Resource_XML_Style();
        $oStyle->SetProject($oProject);
        $oStyle->LoadFromFile($sFile);
        $oStyle->SetName(self::STYLE_RESOURCE_NAME);
        // Style::_save() also sets the project's id_style_resource parameter
        $oStyle->Save();
    }
}
