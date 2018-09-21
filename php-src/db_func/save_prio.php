<?php

function save_prio($conn,$user_id,$prio) {
    
    // check if prio exists for user
    
    
    $prios = exec_select($conn, "SELECT up.up_id FROM user_prio up JOIN inv_prio ip ON ip.id = up.inv_id AND up.user_id = $user_id AND up.inv_id = '$prio'");
    $new = (count($prios) > 0) ? false : true;
    
    if ($new) {
        $prio_id = exec_ins($conn, "INSERT INTO user_prio(inv_id, user_id) VALUES ('$prio', $user_id)");
    } else {
        $prio_id = $prios[0]['up_id'];
    }
    
    del_boxes($conn,$prio_id);
    
    save_boxes($conn,$prio_id,$new);
    
    save_description($conn,$prio_id,$new);
    
    return $prio_id;
}

function del_boxes($conn,$prio) {
    
    $boxes = array_unique (explode(" ",$_POST['del_items']));
    
    if(count($boxes)>1) {
        exec_del($conn, "DELETE FROM prio_data WHERE up_id=$prio");
    }
    
}

function del_prio($conn,$prio) {
    exec_del($conn, "DELETE FROM user_prio WHERE up_id=$prio");
}

function save_boxes($conn,$prio,$prio_new) {
    
    $box_names = $post_names = array();

    foreach($_POST as $key => $items) {
        if(substr($key,0,3) == 'box') {
            array_push($box_names, $key);
        }
    }
    
    foreach($box_names as $box) {
        $title = $_POST[$box];
        $sep1 = 3;
        $sep2 = strpos($box,'_',$sep1+1);
        $sep3 = strpos($box,'_',$sep2+1);
        $web_type = substr($box,$sep1+1,$sep2-$sep1-1);
        $type = match_db_type($web_type);
        $order = substr($box,$sep2+1,$sep3-$sep2-1);
        
        // check whether the box exists in db (based on prio_id, type and order)
        $box_exists = exec_select($conn, "SELECT 1 as prio_exists FROM prio_data WHERE up_id=$prio AND box_type='$type' AND box_order=$order");
        
        if(count($box_exists) > 0) {
            //echo "UPDATE prio_data SET label='$title' WHERE up_id=$prio AND box_type='$type' AND box_order=$order";
            $box_id = exec_upd($conn, "UPDATE prio_data SET label='$title' WHERE up_id=$prio AND box_type='$type' AND box_order=$order");
        } 
        else {
            //echo "INSERT INTO prio_data (up_id, box_type, box_order, label) VALUES ($prio, '$type', $order, '$title')";
            $box_id = exec_ins($conn, "INSERT INTO prio_data (up_id, box_type, box_order, label) VALUES ($prio, '$type', $order, '$title')");
        }
    }
    
    return true;
}

function save_description($conn,$prio,$new) {
    $quest_names = array();
    foreach($_POST as $key => $items) {
        if(substr($key,0,5) == 'quest') {
            array_push($quest_names, $key);
        }
    }
    
    foreach($quest_names as $question) {
        $order = substr($question,6,1);
        $text = $_POST[$question];
        
        if ($new) {
            $question_id = exec_ins($conn, "INSERT INTO prio_descr (up_id, descr_type, descr_text) VALUES ('$prio', $order, '$text')");
        } else {
            $question_id = exec_upd($conn, "UPDATE prio_descr SET descr_text = '$text' WHERE up_id = '$prio' AND descr_type = $order");
        }
        
        if(!$question_id > 0) { 
            // find way to log errors; 
            return false;
        }
    }
}

