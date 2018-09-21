
$(document).ready(function(){
    
    $('.add-icon').on('click', function(event) {
        addItem(event.target.id);
    });
    
    $('.added-item').on('change', function(event) {
        $('#img_'+$(this).attr('id')).text($(this).val());
    });
    
    $('.added-item').each(function(index, element) {
        $(this).attr('size', $(this).val().length *.9);
    });
    
});

function addItem(event_id) {
    var btn_id = $('#'+event_id).next('input').attr('id');
    var new_val = $('#'+event_id).next('input').val();
    var level = btn_id.substr(0,btn_id.indexOf("_"));
    var container = level + '_interbox';
    var order = $('#'+container).find('.inner-box').find('input').length;
    var item_name = 'box_' + level + '_' + order + '_title';

    var item_id = item_name + "' value = '" + new_val;

    var new_item = "<div class='added-cont'><input type='text' class='added-item' id='" + item_id + "' name='" + item_id + "'/>\n\
                    <i class='fa fa-times-circle del-icon'></i></div>";

    $('#'+container).find('.inner-box').append(new_item);
    
    var height = $('#'+container).find('.inner-box').get(0).scrollHeight;
    $('#'+container).find('.inner-box').scrollTop(height);

    $('#'+event_id).next('input').val('').focus();
    
    var img_item_id = 'img_' + item_id;

    var new_item_export = "<div class='added-cont'><p class='added-item' id='" + img_item_id + "'>" + new_val + "</p></div>";
    $('#export #'+container).find('.inner-box').append(new_item_export);

    addItemListener(item_name);

    return false;
}

function addItemListener(item_id) {
    $('.del-icon').on('click', function() {
        var container = $(this).parent().parent().parent()
        var container_id = container.attr('id');
        $(this).parent().remove();
        
        var item_id = $(this).prev().attr('id');
        
        $('#export #img_'+item_id).parent().remove();
        
        $('#del_items').val($('#del_items').val() + ' ' + item_id);
        
        var layer = container_id.substr(0,container_id.indexOf("_"));
        $("#form-changed").val(1);
    
        updateItemOrder(layer);
    });
    
    $('#'+item_id).on('change', function(event) {
        $('#img_'+item_id).text($(this).val());
    });
    
}

function updateItemOrder(layer) {
    var items = $('#'+layer+'_interbox').find('.inner-box .added-item');
    
    items.each(function(index, element) {
        var item_name = 'box_' + layer + '_' + index + '_title';
        var del_id = 'box_' + layer + '_' + index + '_del';
        $(this).attr('name',item_name);
        $(this).attr('id',item_name);
        $(this).next().attr('id',del_id);
    });
} 