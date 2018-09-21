
$(document).ready(function(){
    $('.invest-filters .info-div, .logic-description .info-div').hover(function(){
        $('.notes').addClass('hide');
        $(this).next('.notes').removeClass('hide');
    });
        
    $('.logic-template .info-div').hover(function(){
        $('.notes').addClass('hide');
        $(this).next('.notes').removeClass('hide');
    });
    
//    $('.layer .interbox, .logic-description, .invest-filters').mouseleave(function(event){
//        $(this).find('.notes').addClass('hide');
//    });

    $('.layer, .logic-description, .invest-filters').mouseleave(function(event){
        $(this).find('.notes').addClass('hide');
    });
    
    $('.notes .fa-times').click(function(){
        $(this).parent('.notes').addClass('hide');
        return true;
    });
    
});
 