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

YUI.add( "widgetsample", function ( Y ) {
    /**
     * Layout
     *
     * @module layout
     * @submodule widget
     */
    

    /**
     * WidgetSample
     *
     * @class WidgetSample
     * @extends WidgetField
     * @constructor
     */
    function WidgetSample() {
        WidgetSample.superclass.constructor.apply( this, arguments );
    }

    WidgetSample.NAME = 'WidgetSample';
    WidgetSample.VERSION = '>=2.26';
    WidgetSample.NO_OPTION = false;
    WidgetSample.DEPRECATED = false;
    WidgetSample.DESCRIPTION = 'This widget is an example of a widget overloading the WidgetField';

    WidgetSample.ATTRS = {

        sOption1: {
            type: 'option',
            value: null,
            mandatory: true,
            dynamic_value: false,
            validator: function ( mValue ) {
                return this.basicStringValidator( mValue )
            },

            description: 'This option is a first example',
            possible_values: 'String',
            version: '>=2.26'
        },
        iOption2: {
            type: 'option',
            value: 6,
            mandatory: true,
            dynamic_value: true,
            validator: function ( mValue ) {
                return this.basicNumberValidator( mValue )
            },

            description: 'This option is a second example',
            possible_values: 'Integer',
            version: '>=2.26'
        },
        iOption3: {
            type: 'option',
            value: null,
            mandatory: true,
            dynamic_value: true,
            validator: function ( mValue ) {
               return this.basicDatasetValidator( mValue )
            },

            description: 'This option is a third example',
            possible_values: 'Dataset name',
            version: '>=2.26'
        }        
    };

    Y.WidgetSample = Y.extend( WidgetSample, Y.WidgetField,
        {
            /**
             * Construction logic executed during object instantiation.
             *
             * @method initializer
             * @protected
             */
            initializer: function () {
                //Call of the the parent's method
                WidgetSample.superclass.initializer.apply( this, arguments );

                //The call of this method allows to initialize the ATTRS typed "option" with the values defined in the XML
                this.setOptions();
            },

            /**
             * Render widget
             * To render the widget, we will use :
             * Y.one( '#' + sParentId ).append( {some_HTML} );
             *
             * @method Render
             * @public
             * @param sParentId {string} parent's id (HTML)
             */
            Render: function ( sParentId ) {
                //Call of the the parent's method
                WidgetSample.superclass.Render.apply( this, arguments );
            },

            /**
             * PostRender widget
             * Method called after the widget rendering.
             * Allows you to add event listeners
             *
             * @method PostRender
             * @public
             */
            PostRender: function () {
                //Call of the the parent's method
                WidgetSample.superclass.PostRender.apply( this, arguments );
            },

            /**
             * Update Widget
             * Method called when the widget dataset changes or when the value of the widget field changes
             *
             * @method Update
             * @public
             */
            Update: function () {
                //Call of the the parent's method
                WidgetSample.superclass.Update.apply( this, arguments );
            }

        } );
}, '0.0.1', {
    requires: [ 'widgetfield' ]
} );
