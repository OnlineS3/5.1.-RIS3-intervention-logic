<?php

$prio_types = array('act'=>'Action plan implementation','con'=>'Context','def'=>'Definition of actions',
        'edp'=>'EDP','ext'=>'Extroversion Analysis','for'=>'Foresight','mon'=>'Monitoring','out'=>'Output indicators',
        'pol'=>'Policy Mix','rel'=>'Related Variety','res'=>'Result indicators','vis'=>'Vision/Priority');

$login_pressed = $_SESSION['post_data']['login_pressed'];

if ($_SERVER["REQUEST_METHOD"] == "POST" && $_POST['save_changes']=='1') {
    $state = 'load';
    
    $prio = ($_POST['inv_pr']) ? $_POST['inv_pr'][0] : $_POST['inv_post'];
    
    $prio_id = save_prio($conn,$user_id,$prio);

    if($prio_id > 0)     {
        $prio_saved = 1;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "GET" && ($login_pressed=='1' || $logout_pressed=='1')) {
    $state = 'get';
    
    foreach ($_SESSION['post_data'] as $key => $value) {
        $_POST[$key] = $value;
    }
    
    load_prio($conn,$state,null,$user_id);
    
} 

else if ($_SERVER["REQUEST_METHOD"] != "POST") {
    if ($user_id) {
        $state = 'new';
        load_prio($conn,$state,null,$user_id);
    } else {
        $state = 'new';
        load_prio($conn,$state,null,$user_id);
    }
} 

else if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['save-prio'])) {
    //$prio = $_POST['inv_pr'][0];
    $prio = ($_POST['inv_pr']) ? $_POST['inv_pr'][0] : $_POST['inv_post'];
    
    $prio_id = save_prio($conn,$user_id,$prio);
    
    if($prio_id > 0) {
        $state = 'load';
        $prio_saved = 1;
        load_prio($conn,$state,$prio_id,$user_id);
    } else {
        $state = 'new';
        load_prio($conn,$state,null,$user_id);
    }
} else if ($_SERVER["REQUEST_METHOD"] == "POST" && (isset($_POST['new_prio']) || $_POST['new_pressed'] == 1)) {
    
    $state = 'new';
    $prio = $prio_id = null;
    
    load_prio($conn,$state,$prio_id,$user_id);
    
} else if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['export_report'])) {
    
    $state = 'post';
    $report_sent = true;
    
    $prio = ($_POST['inv_pr']) ? $_POST['inv_pr'][0] : $_POST['inv_post'];
    
    load_prio($conn,$state,$prio,$user_id);
    
    $box_names = $post_names = array();
    $eu_id = ($_POST['eu_pr']) ? $_POST['eu_pr'][0] : $_POST['eu_prio_post'];
    if ($eu_id) {
        $res = exec_select($conn, "SELECT description FROM eu_prio WHERE id = $eu_id");
        $eu_pr = $res[0]['description'];
        $object_id = ($_POST['objective']) ? $_POST['objective'][0] : $_POST['objective_post'];
        
        if ($object_id) {
            $res = exec_select($conn, "SELECT concat(id,' - ',description) as description FROM objective WHERE id = '$object_id'");
            $objective = $res[0]['description'];
            $invest_id = ($_POST['inv_pr']) ? $_POST['inv_pr'][0] : $_POST['inv_post'];
            if($invest_id) {
                $res = exec_select($conn, "SELECT concat(id,' - ',description) as description FROM inv_prio WHERE id = '$invest_id'");
                $investment = $res[0]['description'];
            }
        }
    }
    
    foreach($_POST as $key => $items) {
        if(substr($key,0,3) == 'box') {
            array_push($box_names, $key);
        }
    }
    
    $contents = array();
    $i=0;
    
    foreach($box_names as $box) {
        $title = normalize_input($_POST[$box]);
        $sep1 = 3;
        $sep2 = strpos($box,'_',$sep1+1);
        $sep3 = strpos($box,'_',$sep2+1);
        $web_type = substr($box,$sep1+1,$sep2-$sep1-1);
        $type_id = match_db_type($web_type);
        $type = $prio_types[$type_id];
        $order = substr($box,$sep2+1,$sep3-$sep2-1);
       
        $contents[$i]['type'] = $type;
        $contents[$i++]['title'] = $title;
    }    
    
    echo "<div class='report-container hide' id='report-container'>";

    echo "<p style='font-weight:bold'>Investment Priority:</p>";
    
    echo "<p><span style='text-decoration:underline'>Eu priority:</p><p>$eu_pr</p>";
    echo "<p><span style='text-decoration:underline'>Thematic objective:</p><p>$objective</p>";
    echo "<p><span style='text-decoration:underline'>Investement priority:</p><p>$investment</p>";

    echo "<p style='font-weight:bold'>Priority Contents:</p>";
    
    foreach($contents as $item) {
        
        $type = $item['type'];
        $title = $item['title'];
        if($last_type != $type) {
            echo "<p style='text-decoration:underline'>$type</p>";
        }
        
        echo "<p>$title</p>";
        
        $last_type = $type;
    }
    
    echo "<p style='font-weight:bold'>Intervention Logic Description:</p>";
    $quest_1 = normalize_input($_POST['quest_1']);
    echo "<p style='font-style:italic'>1. How is the context of your region related to the specific Investment Priority?</p>";
    echo "<p class='description'>$quest_1</p>";
    $quest_2 = normalize_input($_POST['quest_2']);
    echo "<p style='font-style:italic'>2. In which ways the shared vision is related to the described regional context?</p>";
    echo "<p class='description'>$quest_2</p>";
    $quest_3 = normalize_input($_POST['quest_3']);
    echo "<p style='font-style:italic'>3. Please, describe the interconnection between the specified priorities and the shared regional vision.</p>";
    echo "<p class='description'>$quest_3</p>";
    $quest_4 = normalize_input($_POST['quest_4']);
    echo "<p style='font-style:italic'>4. In which ways the selected actions contribute to the accomplishment of the reginal priorities, related to this Investment Priority?</p>";
    echo "<p class='description'>$quest_4</p>";
    $quest_5 = normalize_input($_POST['quest_5']);
    echo "<p style='font-style:italic'>5. How is the context of your region related to the specific Investment Priority?</p>";
    echo "<p class='description'>$quest_5</p>";
    $quest_6 = normalize_input($_POST['quest_6']);
    echo "<p style='font-style:italic'>6. Please, give a short description of the policy mix related to the specific Investment Priority.</p>";
    echo "<p class='description'>$quest_6</p>";
    $quest_7 = normalize_input($_POST['quest_7']);
    echo "<p style='font-style:italic'>7. Please, describe the rationale for choosing the specific output indicators, as well as the ways in which they are related to result indicators.</p>";
    echo "<p class='description'>$quest_7</p>";
    echo "</div>";
    
    ?>    
        <script type="text/javascript">
            var filename = ($("#investment option:selected").val()!=0) ? $("#investment option:selected").val() : 'Online_Report';
            $("#report-container").wordExport(filename);
        </script>
    <?php
   
    if (is_user_logged_in() && $prio) {
        $inv_id = $prio[0];
        $res = exec_select($conn, "SELECT up_id FROM user_prio WHERE user_id = $user_id AND inv_id = '$prio'");
        $prio_id = $res[0]['up_id'];
        exec_upd($conn, "UPDATE user_prio SET has_report=1 WHERE up_id = $prio_id");
    }
} 
else if($_SERVER["REQUEST_METHOD"] == "POST" && $_POST['prio_deleted']) {
    
   
    
    $state = 'del';
    $prio_saved = 0;
    $prio_id = $_POST['prio_deleted'];

    del_prio($conn,$prio_id);
    load_prio($conn,$state,null,$user_id);
} 

else if($_SERVER["REQUEST_METHOD"] == "POST" && $_POST['prio_selected']>1) {
    $state = 'load';
    $prio_saved = 0;
    $prio_id = $_POST['prio_selected'];

    load_prio($conn,$state,$prio_id,$user_id);
}

 
if ($state=='load' || ($state=='post' && !$report_sent)) {
    ?>
        <script type='text/javascript'>
            $('.eu_pr').attr('disabled',true);
            $('#objective').attr('disabled',true).trigger("chosen:updated");
            $('#investment').attr('disabled',true).trigger("chosen:updated");
        </script>
    <?php
} else {
    ?>
        <script type='text/javascript'>
            $('.eu_pr').attr('disabled',false);
            $('#objective').attr('disabled',false).trigger("chosen:updated");
            $('#investment').attr('disabled',false).trigger("chosen:updated");
        </script>
    <?php
}