<?php 

    include 'php-src/onlineS3/db_connector/connection.php';
    include 'php-src/onlineS3/db_connector/exec_sql.php';
    include 'php-src/onlineS3/gen_fun/str_fun.php';
    include 'php-src/onlineS3/gen_fun/form_fun.php';
    include 'php-src/handler/main_func.php';
    include 'php-src/db_func/save_prio.php';
    include 'php-src/handler/global.php';
    $conn = conn_db();
    
    define('UPLOAD_DIR', 'files/');
    
    ?>
        <script type='text/javascript'>
            
            if (sessionStorage.getItem('logged_in') == '1') {
                $('#redirect-login')[0].click();
                sessionStorage.setItem('logged_in','0');
            }
            
            if (sessionStorage.getItem('register') == '1') {
                $('#redirect-register')[0].click();
                sessionStorage.setItem('register','0');
            }
            
            if (sessionStorage.getItem('logout') == '1') {
                $('#redirect-logout')[0].click();
                sessionStorage.setItem('logout','0');
            }
            
            <?php
                session_start();
                foreach($_POST as $key => $value) {
                    $_SESSION['post_data'][$key] = $value;
                }
            ?>
            
        </script>
    <?php
    
    echo "<h2>Intervention Logic</h2>";
    
    $login_pressed = $_POST['login_pressed'];
    
    echo "<input type='text' class='hide' name='login_pressed' id='login_pressed' value='$login_pressed' />";
    
    echo "<div class='main-btn' style='border-bottom: none'>";
    
    echo "<input type='submit' class='button' name='new_prio' formnovalidate='formnovalidate' value='New Priority' id='new-prio'><i id='new-fa' class='fa fa-file-o' aria-hidden='true'></i>";
    if (is_user_logged_in()) {
        echo "<input type='submit' class='button' name='save-prio' value='Save Priority' id='save-prio'><i id='save-fa' class='fa fa-floppy-o' aria-hidden='true'></i>";
    } else {
        echo "<div class='tooltip-container'>";
        echo "<input type='submit' class='button' name='save-prio' value='Save Priority' id='save-prio' disabled><i id='save-fa' class='fa fa-floppy-o' aria-hidden='true'></i>";
        echo "<span class='tooltiptext arrow-left far tip-body'>You have to sign in to save the priority.</span>";
        echo "</div>";
    }
    
    echo "<button class='button btn-logic hide export-btn' id='word-btn'>"
            . "Export Report<i class='fa fa-file-image-o' aria-hidden='true'></i></button>";
    echo "</div>";
    
    //$save_changes = ($_POST['save_changes']) ? $_POST['save_changes'] : 0;
    
    echo "<input type='text' class='hide' name='save_changes' id='save-changes' value=''/>";
    
    include "php-src/forms/logic_tool.php";
    
    //$user_id = 1;
    $prio_saved = 0;
    $form_changed = 0;
    
    include 'php-src/handler/preload.php';
    
    echo "<input type='submit' class='hide' id='before_login' formnovalidate='formnovalidate' name='before_login'/>";
    echo "<input type='text' class='hide' name='prio-saved' id='prio-saved' value='$prio_saved'/>";
    echo "<input type='text' class='hide' name='form-changed' id='form-changed' value='$form_changed'/>";
    echo "<input type='text' class='hide' name='tot_uni' id='tot_uni' value='$img_data'/>";
    echo "<input type='text' name='new_pressed' id='new_pressed' class='hide' value=''/>";
    echo "<input type='text' class='hide' name='eu_prio'/>";
    echo "<input type='text' class='hide' name='obj'/>";
    echo "<input type='text' class='hide' name='prio'/>";
    
    echo "<input type='text' class='hide' name='del_items' id='del_items'/>";
    