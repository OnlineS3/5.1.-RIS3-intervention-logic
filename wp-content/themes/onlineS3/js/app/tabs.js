
$(document).ready(function(){
    
    $('.tablinks input').click(function(event) {
        $(this).blur(); 
        
        var tab_id = event.target.id;
        var div_id = 'div-' + event.target.id;
        
        $('.tabcontent').css('display','none');
        $('#'+div_id).css('display','block');
        
        $('.tablinks').removeClass('active');
        $('#'+tab_id).parent().addClass('active');
    });
    
    $('.tablinks input').dblclick(function(event) {
        $(this).prop('readonly',false);
        $(this).select();
    });
    
    $('.tablinks input').mouseout(function(event) {
        $(this).prop('readonly',true);
    });
    
});
