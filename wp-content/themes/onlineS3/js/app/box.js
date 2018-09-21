
var closePopup = function() {
    $('#box-id').parents('.popup-box').css('display','none');
    
    return false;
};

var returnPopup = function() {
    var editType = $('#edit-type').val();
    
    if (editType === 'edit') {
        return setBoxVals();
    } else if (editType === 'new') {
        return drawNewBox();
    }
};

var newBox = function(btn_id,layer_id) {
	
    $('.popup-box').css('display','block');
	
    $('.popup-title').text('Create element');

    $('.title').get(0).focus();
    $('.del-btn').addClass('hide');
    $('#box-id').val(btn_id);
    $('#layer-id').removeClass();
    $('#layer-id').addClass(layer_id);
	
    $('#edit-type').val('new');
    
    $('.description, .title').val('');
    
    $('#'+btn_id).parent().parent('.container').addClass('back');
    $('#popup-invest').val('Investment Priority: ' + $("#investment option:selected").text());
    
    return false;
};

var drawNewBox = function() {
    
    var source_id = $('#box-id').val(); // get id of the source box
    
    var popup = $('#box-id').parents('.popup-box'); // get elements of the popup window
    var title = popup.find('.title').val();
    var description = popup.find('.description').val();
    var layer_lb = popup.find('#layer-id').attr('class').split(' ')[0];
    
    var layer_id = source_id.slice(0, source_id.indexOf('_')); // get layer and order id 
    var order_id = source_id.slice(source_id.indexOf('_')+1, source_id.length);
    var new_id = layer_id + '_' + (Number(order_id)+1);
    
    var box_elem = document.getElementById(source_id); // get elements of the popup window
    
    // create div in tool
    var box_added = document.createElement('div');
    $('#'+source_id).attr('id', new_id);
    box_added.id = source_id;
    $('#'+new_id).parent().before(box_added);
    $('#'+source_id).addClass('box child');
    
    var title_name = 'box_' + source_id + '_title';
    var descr_name = source_id + '_descr';
    
    $('#'+source_id).html("<input type='text' name='" + title_name + "' value='" + title + "' class='box-title' readonly='true' />" +
		"<input type='text' name='" + descr_name + "' value='" + description + "' class=' description hide' />" +
		"<input type='checkbox' id='edit-box' class='edit-box hide' />" +
		'<label for="edit-box" id="' + source_id + '" onclick="return editBox(this.id,\'test\');">' +
		"<div class='pencil-div'><i class='fa fa-pencil-square-o circle-pencil'></i></div>" +
		"</label>");
    
    // create div for export
    var box_export_added = document.createElement('div');
    var layer = $('#'+new_id).parent().parent().parent().attr('id');
    box_export_added.id = 'export_' + source_id;
    $('#export #'+layer).find('.container').append(box_export_added);
    $('#export #export_'+source_id).addClass('box child');
    $('#export #export_'+source_id).html("<input type='text' name='title' value='" + title + "' class='box-title' />");
    
    $('#'+source_id).parent().parent('.container').removeClass('back');
    $('#box-id').parents('.popup-box').css('display','none');
    
    box_added.id = '';
    
    return false;
};

/*
 * set values in popup box
 * @param {numeric} box_id 
 */
var editBox = function(btn_id,layer_id) {
    $('.popup-box').css('display','block');
    $('.title').get(0).focus();
	
    $('.popup-title').text('Edit details');
	
    $('#layer-id').removeClass();
	$('#layer-id').addClass(layer_id);
    
    $('.del-btn').removeClass('hide');
    
    var box_id = '#'+btn_id;
    
    var title = $(box_id).parent().find('input.box-title').val();
    var description = $(box_id).parent().find('.description').val();
    var layer = $(box_id).parent().parent('.layer').prop("class");
    
    $('#box-id').val(btn_id);
    
    $('.popup-box').attr('id', $(box_id).parent().attr('id'));
    $('.popup-box .confirm-btn').attr('id', 'btn-' + btn_id);
    $('.popup-box').addClass(layer).removeClass('layer');
    $('.popup-box').find('.title').val(title);
    $('.popup-box').find('.description').val(description);
    
    $(box_id).parent().parent('.container').addClass('back');
    $('#edit-type').val('edit');
    
    $('#popup-invest').val('Investment Priority: ' + $("#investment option:selected").text());
    return true;
};


/*
 * set values in parent box
 * @param {numeric} popup_id
 */
var setBoxVals = function() {
    var box_id = $('#box-id').val();
    
    var popup = $('#box-id').parents('.popup-box');
    var title = popup.find('.title').val();
    var description = popup.find('.description').val();
    
    $('#'+box_id).parent('.box').find('input.box-title').val(title);
    $('#'+box_id).parent('.box').find('p.box-title').text(title);
    $('#'+box_id).parent('.box').find('.description').val(description);
    
    // set value to export box
    $('#export_'+box_id).find('input.box-title').val(title);
    
    $('.popup-box').removeClass('layer').removeClass('one').removeClass('two').removeClass('three');
    
    $('#'+box_id).parent().parent('.container').removeClass('back');
    popup.css('display','none');
    
    return false;
};

/*
 * set values in parent box
 * @param {numeric} popup_id
 */
var removeBox = function() {
    var popup = $('#box-id').parents('.popup-box');
    var box_id = $('#box-id').val();
    
    $('#'+box_id).parent().remove();
    
    // removes box from export template
    var export_box = 'export_' + box_id;
    $('#'+export_box).remove();
    
    popup.css('display','none');
    
    return false;
};

