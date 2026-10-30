/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * This is VOOZANOO, a program. Contact voozanoo@epiconcept.fr, or   *
 * see http://www.voozanoo.net/ for more information.                *
 *                                                                   *
 * Copyright 2001-2010 Epiconcept                                    *
 *                                                                   *
 * This program is free software; you can redistribute it and/or     *
 * modify it under the terms of the GNU General Public License as    *
 * published by the Free Software Foundation - version 2             *
 *                                                                   *
 * This program is distributed in the hope that it will be useful,   *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of    *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the     *
 * GNU General Public License in file COPYING for more details.      *
 *                                                                   *
 * You should have received a copy of the GNU General Public         *
 * License along with this program; if not, write to the Free        *
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor,       *
 * Boston, MA 02111, USA.                                            *
 *                                                                   *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

YUI.add( "widgetbadge", function ( Y ) {
    /**
     * Layout
     *
     * @module layout
     * @submodule widget
     */

    /**
     * WidgetBadge
     *
     * Read-only badge showing a short value, or the number of values of a field.
     * Implements the "Badge" component of the Voo4 Design System (spec: Claude Design
     * export "Badge.html"). Styles: project stylesheet (.vzn-badge, Color(N) tokens) and
     * Bootstrap 3 contextual classes (alert-*) for the semantic variants.
     *
     * Usage in a form layout:
     * <value dataset="patient" field="langues" mode="r">
     *     <option output="html" option_name="widget" value="WidgetBadge"/>
     *     <option output="html" option_name="display" value="count"/>
     *     <option output="html" option_name="hide_if_zero" value="true"/>
     * </value>
     *
     * In a tab label (page with class="tab-patient-list", declared before the badge):
     * <value dataset="patients_count" field="nb" mode="r">
     *     <option output="html" option_name="widget" value="WidgetBadge"/>
     *     <option output="html" option_name="target_selector" value="li.tab-patient-list > a"/>
     * </value>
     *
     * @class WidgetBadge
     * @extends WidgetReadOnly
     * @constructor
     */
    function WidgetBadge() {
        WidgetBadge.superclass.constructor.apply( this, arguments );
    }

    WidgetBadge.NAME = 'WidgetBadge';
    WidgetBadge.VERSION = '>=2.26';
    WidgetBadge.NO_OPTION = false;
    WidgetBadge.DEPRECATED = false;
    WidgetBadge.DESCRIPTION = 'Read-only badge showing a short value or the number of values of a field (Design System "Badge" component)';

    /**
     * Values above this limit are displayed as "99+"
     *
     * @property MAX_DISPLAYED_NUMBER
     * @type {Integer}
     * @static
     */
    WidgetBadge.MAX_DISPLAYED_NUMBER = 99;

    /**
     * Variants rendered with the Bootstrap 3 contextual classes (alert-<variant>)
     *
     * @property SEMANTIC_VARIANTS
     * @type {Array}
     * @static
     */
    WidgetBadge.SEMANTIC_VARIANTS = [ 'success', 'warning', 'danger', 'info' ];

    WidgetBadge.ATTRS = {
        sVariant: {
            type: 'option',
            value: 'primary',
            mandatory: false,
            description: 'Colour variant of the badge',
            possible_values: 'primary, neutral, success, warning, danger, info, light (white, for coloured backgrounds such as tabs)',
            version: '>=2.26'
        },
        sSize: {
            type: 'option',
            value: 'md',
            mandatory: false,
            description: 'Size of the badge',
            possible_values: 'sm, md',
            version: '>=2.26'
        },
        sDisplay: {
            type: 'option',
            value: 'value',
            mandatory: false,
            description: 'What the badge shows: the value of the field, or its number of values (multiple dictionary fields)',
            possible_values: 'value, count',
            version: '>=2.26'
        },
        bHideIfZero: {
            type: 'option',
            value: false,
            mandatory: false,
            description: 'Hide the badge when the value is 0',
            possible_values: 'Boolean',
            version: '>=2.26'
        },
        sTargetSelector: {
            type: 'option',
            value: null,
            mandatory: false,
            description: 'CSS selector of an existing element where the badge is rendered instead of its place in the layout ' +
                         '(e.g. a tab label: the tabs must be declared before the badge in the layout)',
            possible_values: 'CSS selector',
            version: '>=2.26'
        }
    };

    Y.WidgetBadge = Y.extend( WidgetBadge, Y.WidgetReadOnly,
        {
            /**
             * Construction logic executed during object instantiation.
             *
             * @method initializer
             * @protected
             */
            initializer: function () {
                WidgetBadge.superclass.initializer.apply( this, arguments );
                //Initialize the ATTRS typed "option" with the values defined in the XML
                this.setOptions();
            },

            /**
             * Render widget
             *
             * @method Render
             * @public
             * @param sNodeId {string} parent's id (HTML)
             */
            Render: function ( sNodeId ) {
                var sTargetSelector = this.get( 'sTargetSelector' ),
                    oTarget = ( sTargetSelector ) ? Y.one( sTargetSelector ) : null,
                    sTemplate = '<div class="{sClass}" id="{sUniqId}"><span class="{sBadgeClass}"></span></div>',
                    sClass = 'field badge-field';

                if ( oTarget !== null ) {
                    //Inline container inside an existing element (e.g. a tab label)
                    sTemplate = '<span class="{sClass}" id="{sUniqId}"><span class="{sBadgeClass}"></span></span>';
                    sClass = 'badge-inline';
                } else {
                    oTarget = Y.one( document.getElementById( sNodeId ) );
                }

                oTarget.append(
                    Y.Lang.sub( sTemplate, {
                        sClass: Y.Lang.trim( sClass + ' ' + this.GetClass() ),
                        sUniqId: this.UniqId(),
                        sBadgeClass: this._getBadgeClass()
                    } )
                );
                this.Update();
            },

            /**
             * Update Widget: called when the dataset or the value of the field changes
             *
             * @method Update
             * @public
             */
            Update: function () {
                var oContainer = Y.one( document.getElementById( this.UniqId() ) );
                if ( oContainer === null ) {
                    return;
                }
                var oBadge = oContainer.one( 'span' ),
                    sValue = this._getBadgeValue(),
                    bHidden = ( sValue === '' ) || ( this.get( 'bHideIfZero' ) === true && sValue === '0' );

                oBadge.setContent( Y.Escape.html( this._formatValue( sValue ) ) );
                oBadge.set( 'title', ( this._formatValue( sValue ) !== sValue ) ? sValue : '' );
                oContainer.toggleClass( 'hidden', bHidden );
            },

            /**
             * Value shown by the badge, as a string ('' when there is nothing to show)
             *
             * @method _getBadgeValue
             * @protected
             * @return {String}
             */
            _getBadgeValue: function () {
                var oField = this.get( 'oField' );

                if ( this.get( 'sDisplay' ) === 'count' ) {
                    var aLabels = ( typeof oField.GetLabels === 'function' ) ? oField.GetLabels() : [];
                    //Single dictionary fields return [ null ] when empty
                    return String( aLabels.filter( function ( sLabel ) {
                        return sLabel !== null && sLabel !== undefined && sLabel !== '';
                    } ).length );
                }

                var mValue = this.GetValue();
                return ( mValue === null || mValue === undefined ) ? '' : String( mValue );
            },

            /**
             * Shorten numbers above MAX_DISPLAYED_NUMBER to "99+"
             *
             * @method _formatValue
             * @protected
             * @param sValue {String}
             * @return {String}
             */
            _formatValue: function ( sValue ) {
                if ( /^\d+$/.test( sValue ) && parseInt( sValue, 10 ) > WidgetBadge.MAX_DISPLAYED_NUMBER ) {
                    return WidgetBadge.MAX_DISPLAYED_NUMBER + '+';
                }
                return sValue;
            },

            /**
             * CSS classes of the badge for the current variant and size
             *
             * @method _getBadgeClass
             * @protected
             * @return {String}
             */
            _getBadgeClass: function () {
                var sVariant = this.get( 'sVariant' ),
                    sVariantClass = ( WidgetBadge.SEMANTIC_VARIANTS.indexOf( sVariant ) !== -1 ) ?
                                    'alert-' + sVariant : 'vzn-badge-' + sVariant;

                return 'vzn-badge vzn-badge-' + this.get( 'sSize' ) + ' ' + sVariantClass;
            }
        } );
}, '0.0.1', {
    requires: [ 'widgetreadonly' ]
} );
