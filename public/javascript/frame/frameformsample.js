YUI.add("frameformsample", function(Y)
{
    /**
     * Frame
     *
     * @module frame
     * @submodule form
     */

    /**
     * FrameFormSample
     *
     * @class FrameFormSample
     * @extends FrameForm
     * @constructor
     */
    function FrameFormSample()
    {
        FrameFormSample.superclass.constructor.apply(this, arguments);
    }

    FrameFormSample.NAME = 'FrameFormSample';
    FrameFormSample.ATTRS = {};

    Y.FrameFormSample = Y.extend(FrameFormSample, Y.FrameForm,
        {
            /**
             * Construction logic executed during object instantiation.
             *
             * @method initializer
             * @protected
             */
            initializer : function()
            {
                FrameFormSample.superclass.initializer.apply(this, arguments);
                
                this.get( 'oLayout' ).on( 'layout:intialized', function() {

                    // Do something after the initialization of the layout

                }, this);
            }
        });
}, '0.0.1', {
    requires: ['frameform']
});
