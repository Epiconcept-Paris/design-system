<?php
/****************************************************************************
 * THIS FILE MUST NOT BE MODIFIED OR MOVED TO ANOTHER LOCATION.
 * ANY CHANGE TO THIS FILE WILL BE REVERTED BY A DAILY PROCESS.
 * THIS FILE IS FOR INFRA AND FRAMEWORK TEAM USE ONLY.
 ****************************************************************************/

$aPath = explode(DIRECTORY_SEPARATOR, __DIR__);
$sAppName = $aPath[count($aPath) - 3];
$sApplicationPath = realpath(__DIR__ . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . '..');

$aAppInfos = json_decode(
    file_get_contents($sApplicationPath . DIRECTORY_SEPARATOR . 'configs' . DIRECTORY_SEPARATOR . 'APPINFOS'),
    true
);

$sVersionVoo4 = $aAppInfos['DEPENDENCIES']['VOOZANOO4'] ?? '2.26';

if (defined('PATH_ENV')) {
    require_once(PATH_ENV . '/' . $sAppName . '_env.php');
} else {
    require_once($sApplicationPath . DIRECTORY_SEPARATOR . 'configs' . DIRECTORY_SEPARATOR . 'env.php');
}

putenv('APPLICATION_PATH=' . $sApplicationPath);
putenv('VOO4_APPBOOTSTRAPPER=' . VOO4_APPBOOTSTRAPPER);
putenv('PATH_VOO4_CORE=' . PATH_VOO4_CORE);
putenv('PATH_VOO4_EXTLIB=' . PATH_VOO4_EXTLIB);
putenv('PATH_FARM=' . PATH_FARM);
putenv('PATH_ZF=' . PATH_ZF);
putenv('APPLICATION_ENV=' . APPLICATION_ENV);

include_once(sprintf(PATH_VOO4_CORE, $sVersionVoo4) . '/tools/sys_cli.php');
