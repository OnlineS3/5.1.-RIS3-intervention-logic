<?php 
    echo "<div class='r-sidebar $tool_hide tool-sidebar' id='prio-bar'>
        <div class='cat-caption'>
            <p>My Priorities</p><img src='images/prio.png' width='15'>
        </div>";
     
    $prios = exec_select($conn,"SELECT up_id, inv_id  FROM user_prio WHERE user_id = $user_id;");
    $home = 'http://' . $_SERVER['SERVER_NAME'] . '/home';
    
    if ($prio_id) {
        $res = exec_select($conn,"SELECT inv_id FROM user_prio WHERE up_id = $prio_id");
        $current_inv = $res[0]['inv_id'];
    } else {
        $current_inv = '';
    }
    
    if ($prios) {
        foreach($prios as $prio) {
            $cur_id = $prio['up_id'];
            $prio = $prio['inv_id'];
            $active = ($current_inv==$prio) ? 'active' : '';
            $prio_exists = exec_select($conn,"SELECT 1 FROM user_prio WHERE up_id = $cur_id and has_report = 1");
           
            $hide_report = (count($prio_exists) > 0) ? '' : 'hide';
            
            echo "<input type='submit' formnovalidate='formnovalidate' id='up-$cur_id' class='hide choose-prio cancel' type='checkbox' formnovalidate='formnovalidate' name='user-prio' value='$cur_id'>"; 
            echo "<div class='item-container $active' class=''><label for='up-$cur_id'>$prio</label>";
            echo "<button class='delete-btn cancel'><i class='fa fa-remove'></i>delete</button>";
            echo "<i class='fa fa-file-word-o $hide_report' aria-hidden='true' title='You have downloaded a report for this priority'></i>";
            echo "</div>";
        }
    }
    
    $prio_selected = $_POST['prio_selected'];
    
    echo "<input type='text' name='prio_selected' class='hide' value='$prio_selected' id='prio_selected'>";
    
    $prio_deleted = $_POST['prio_deleted'];
    
    echo "<input type='text' name='prio_deleted' class='hide' value='' id='prio_deleted'>";
    
    echo "</div>";
  
?>
