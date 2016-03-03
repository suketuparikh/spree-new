/**
 * hamburger.js
 *
 * Mobile Menu Hamburger
 * =====================
 * A hamburger menu for mobile websites
 *
 * Created by Thomas Zinnbauer YMC AG  |  http://www.ymc.ch
 * Date: 21.05.13
 */

jQuery(document).ready(function () {

    //Open the menu
    jQuery("#hamburger").click(function () {

        jQuery('#contentrmenu').css('min-height', jQuery(window).height());

        jQuery('nav').css('opacity', 1);

        //set the width of primary content container -> content should not scale while animating
        var contentWidth = jQuery('#contentrmenucontentrmenu').width();

        //set the content with the width that it has originally
        jQuery('#contentrmenu').css('width', contentWidth);

        //display a layer to disable clicking and scrolling on the content while menu is shown
        jQuery('#contentLayer').css('display', 'block');

        //disable all scrolling on mobile devices while menu is shown
        jQuery('#containerremenu').bind('touchmove', function (e) {
            e.preventDefault()
        });

if (jQuery(".closeicon").length > 0) 
    {    

    }else{

jQuery(this).addClass( "closeicon" );
}


        //set margin for the whole container with a jquery UI animation

        jQuery("#containerremenu").animate({"marginLeft": ["265px", 'easeOutExpo']}, {
            duration: 300
        });

    });

    //close the menu
    jQuery("#contentLayer").click(function () {
        jQuery("#hamburger").removeClass("closeicon");

        //enable all scrolling on mobile devices when menu is closed
        jQuery('#containerremenu').unbind('touchmove');

        //set margin for the whole container back to original state with a jquery UI animation
        jQuery("#containerremenu").animate({"marginLeft": ["-1", 'easeOutExpo']}, {
            duration: 700,
            complete: function () {
                jQuery('#contentrmenu').css('width', 'auto');
                jQuery('#contentLayer').css('display', 'none');
                jQuery('nav').css('opacity', 0);
                jQuery('#contentrmenu').css('min-height', 'auto');

            }
        });
    });

});