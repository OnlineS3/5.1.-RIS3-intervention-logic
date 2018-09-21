
<div class='popup-box'>
    <input class='hide' id='layer-id' type="text">
	
    <div class="popup-content">
        <p class="popup-title">Edit context element</p>
        <input id='test' class='title' placeholder="Title" type="text" value="" autofocus>

        <textarea class='description' cols="56" rows="7" placeholder="Description" type='text' value=""></textarea>
        
        <input class='title-input' id='popup-invest' placeholder="Related to" disabled="" type="text" value="Related to">

        <div class="btn-area">
            <button class="del-btn" onclick="return removeBox()">Delete Context <i class="fa fa-times" aria-hidden="true"></i></button>
            <button class='confirm-btn' onclick='return returnPopup()'>OK</button>
            <button onclick='return closePopup()'>Cancel</button>
        </div>
		
        <input class='hide' id='box-id' type="text">
        <input class='hide' id='edit-type' type="text">
    </div>
	
</div>