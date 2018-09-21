/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    //$('.site-header-main').append($('#site-header'));
    
    $('footer').append($('#site-footer'));
         
    $("a#tool, a#tool-btn").click(function() {
        showTutorial();
    });
    
//    $("#site-header .menu ul li a:not(#tool):not(#tool-btn), .access-tool").click(function() {
//        var link_id = 'div#' + $(this).attr('id');
//        $(this).parents().find('.menu ul li a').removeClass('active');
//        $(this).parents().find('.section-page').addClass('hide');
//        $(this).addClass('active');
//        $('.tool-sidebar').addClass('hide');
//        $('.base-sidebar').removeClass('hide');
//        $('#download-guide').addClass('hide');
//        $(link_id).removeClass('hide');
//        $(this).parents().find('#categories-bar').css('margin-top', '5rem');
//        sessionStorage.setItem('menu_clicked', $(this).attr('id'));
//    });
//    
//    $("a#tool, a#tool-btn").click(function() {
//        var link_id = 'div#' + $(this).attr('id');
//        $(this).parents().find('#site-header ul li a').removeClass('active');
//        $(this).parents().find('.section-page').addClass('hide');
//        $(this).addClass('active');
//        $('#categories-bar').addClass('hide');
//        $(link_id).removeClass('hide');
//        $('.base-sidebar').addClass('hide');
//        $('#download-guide').addClass('hide');
//        $(this).parents().find('#categories-bar').css('margin-top', '5rem');
//        $('.tool-sidebar').removeClass('hide').removeClass('hidden');
//        $('div#about, div#guide, div#about').addClass('hide');
//        $('div#tool').removeClass('hidden').removeClass('hide');
//        sessionStorage.setItem('menu_clicked', 'tool');
//        showTutorial();
//    });
//    
//    $(".menu ul li a#guide").click(function() {
//        $('#download-guide').removeClass('hide');
//    });
//    
//    $('#logout').on('click', function() {
//        sessionStorage.setItem('logged_in','0');
//        sessionStorage.setItem('fin_logged_in','0');
//    });

    $("#site-header .menu ul li a, .access-tool").click(function() {
        var page_id = ($(this).attr('id')=='tool-btn') ? 'tool' : $(this).attr('id');
        setPage(page_id);
    });

    $('#site-header .menu ul li a, .access-tool').mousedown(function(event) {
        if (event.which == 3) {
            document.cookie = 'menu_inter='+(($(this).attr('id')=='tool-btn') ? 'tool' : $(this).attr('id'));
        }
    });

});


function setPage(page_id) {
    $('a#' + page_id).parents().find('#site-header ul li a').removeClass('active');
    $('a#' + page_id).addClass('active');
    document.cookie = 'menu_inter='+page_id;
    
    if (page_id=='tool') {
        $('.tool-sidebar').removeClass('hide').removeClass('hidden');
        $('.base-sidebar').addClass('hide');
    } else if(page_id=='roadmap'){
        $('.base-sidebar').addClass('hide');
        $('.tool-sidebar').addClass('hide');
    } else {
        $('.tool-sidebar').addClass('hide');
        $('.base-sidebar').removeClass('hide');
    }
    $('.section-page').addClass('hide');
    $('.section-page#' + page_id).removeClass('hide');
    
    return false;
}
