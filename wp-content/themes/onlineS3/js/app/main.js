
$(document).ready(function(){
    $('#logic-form :input, #logic-form :checkbox').change(function(){
        $("#form-changed").val(1);
    });
    
    $('#logic-form :input').on('keyup', function (e) {
        $("#form-changed").val(1);
    });
    
    $('#logic-form .del-icon').on('click', function() {
        $("#form-changed").val(1);
    });
    
    $(".add-item").on('keydown', function (e) {
        if (e.keyCode == 13) {
            e.preventDefault();
        }
    });
    
    $(".add-item").on('keyup', function (e) {
        e.preventDefault();
        if (e.keyCode == 13) {
            var btn_id = $('#'+e.target.id).prev().attr('id');
            addItem(btn_id);
        }
    });
    
    if (sessionStorage.scrollTop != "undefined") {
        $(window).scrollTop(sessionStorage.scrollTop);
    }
    
    $('div#tool').removeClass('hide');
    //convertElem2img('export', 'word-container');
    
    $(".chosen-select").chosen();
   
    $('#contents').parents('.site-inner').css('max-width','900px');
    
    $('#export-report').on('click', function(e) {
        var img_src = $('#export_img').attr('src');
        $('#tot_uni').val(img_src);
        $('.toggle-item + label + .accordion-section').css('display','none');
    });
    
    $('#login').on('click', function() {
        sessionStorage.setItem('logged_in','1');
        $('#login_pressed').val('1');
        $('#logic-form').submit();
        return true;
    });
    
    $('#register').on('click', function() {
        sessionStorage.setItem('register','1');
        $('#login_pressed').val('1');
        $('#logic-form').submit();
        return true;
    });
    
    $('#logout').on('click', function() {
        sessionStorage.setItem('logout','1');
        $('#login_pressed').val('1');
        $('#logic-form').submit();
        return true;
    });
    
    $('#save-prio').on("click",function(){
        $("#logic-form").submit();
    });
    
    $(".chosen-select").chosen();
   
    $('#logic-form').validate({
        ignore: [], // not ignore hidden fields
            submitHandler: function (form) {
                form.submit();
            }
        });
    
    $('.choose-prio').on("click", function(){
        
        $('#prio_selected').val($(this).val());
        if($("#form-changed").val() == 1) {
            swal({
                text: "Do you want to save the changes before proceeding?",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes!'
              }).then(function () {
                    $('#save-changes').val('1');
                    $("#logic-form").submit();
                    swal(
                      'Saved!',
                      'Your priority has been saved.',
                      'success'
                    );
                    
              }, function (dismiss) {
                    $('#save-changes').val('0');
                    $("#logic-form").submit();
              });
              $('.swal2-cancel').html('No');
              
              return false;
        } else {
            $("#logic-form").validate({ ignore: "*" });
            $("#logic-form").submit();
            
        }
    });
    
    $('.delete-btn').on("click", function(){
        $('#prio_deleted').val($(this).parent().prev().val());
        
        swal({
            text: "Are you sure you want to delete this priority?",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes!'
          }).then(function () {
                $("#logic-form").validate({ ignore: "*" });
                $("#logic-form").submit();
                swal(
                  'Deleted!',
                  'The priority has been deleted.',
                  'success'
                );

          }, function (dismiss) {
               return false;
          });
          $('.swal2-cancel').html('No');

          return false;
    });
    
    $('#new-prio').on("click", function(){  
        $('#new_pressed').val('1');
        if($("#form-changed").val() == 1) {
            swal({
                text: "Do you want to save the changes before proceeding?",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes!'
            }).then(function () {
                $('#save-changes').val('1');
                $("#logic-form").submit();
                swal(
                    'Saved!',
                    'Your priority has been saved.',
                    'success'
                );
            }, function (dismiss) {
                $('#save-changes').val('0');
                $("#logic-form").submit();
            });
              $('.swal2-cancel').html('No');
              return false;
            } 
         else {
            $("#logic-form").submit();
        }
    });
    
//    $('.cancel').on('click', function() {
//        $("form").validate().cancelSubmit = true;
//        $("#logic-form").submit();
//    });
    
    $('.cancel.choose-prio').on('click', function() {
        $("form").validate().cancelSubmit = true;
    });
    
    $('.cancel#login,.cancel#logout').on('click', function() {
        $("form").validate().cancelSubmit = true;
        $("form").submit();
    });
    
    var session_cookie = document.cookie;
    //var menu_clicked = session_cookie.substring(session_cookie.indexOf("=",session_cookie.indexOf("menu_inter")+1)+1,session_cookie.indexOf(";",session_cookie.indexOf("menu_inter")+1));
    
    var menu_clicked;
    if (session_cookie.indexOf(";",session_cookie.indexOf("menu_inter=")+11) > 0) {
        menu_clicked = session_cookie.substring(session_cookie.indexOf("menu_inter=")+11,session_cookie.indexOf(";",session_cookie.indexOf("menu_inter")+11));
    } else {
        menu_clicked = session_cookie.substring(session_cookie.indexOf("menu_inter=")+11);
    }
    
    menu_clicked = (menu_clicked!="about" && menu_clicked!="guide" && menu_clicked!="docs" && menu_clicked!="tool") ? 'about' : menu_clicked;
    
    setPage(menu_clicked);
    
});

$(window).scroll(function() {
    sessionStorage.scrollTop = $(this).scrollTop();
});
