
<?php
    
    echo "<fieldset class='invest-filters'>";

    $index = 0;
    include 'php-src/templates/tips.php';
    
    echo "<legend>Investment Priority</legend>";
	
    $all_prios = exec_select($conn, "SELECT * FROM eu_prio");
    
    if($user_id) {
        $user_prios = exec_select($conn, "SELECT inv_id FROM user_prio WHERE user_id = $user_id");
        $user_prios = json_encode($user_prios);
    }
    
    $all_objectives = exec_select($conn, "SELECT * FROM objective ORDER BY cast(substring(id, 3) as unsigned)");
    $all_objectives = json_encode($all_objectives);
    
    $all_investments = exec_select($conn, "SELECT * FROM inv_prio ORDER BY id");
    $all_investments = json_encode($all_investments);
    
    echo "<div class='choose-eu-pr'>";
    
    $i = 0;
    $colors = ['one','two','three'];
    
    if ($state=='init' || $state=='load') {
        $res = exec_select($conn, "SELECT ep.id FROM eu_prio ep JOIN objective obj ON ep.id = obj.eu_id JOIN inv_prio ip ON ip.obj_id = obj.id JOIN user_prio up ON up.inv_id = ip.id WHERE up.up_id = $prio");
        $eu_priority = $res[0]['id'];
        
        $res = exec_select($conn, "SELECT obj.id FROM objective obj JOIN inv_prio ip ON ip.obj_id = obj.id JOIN user_prio up ON up.inv_id = ip.id WHERE up.up_id = $prio ORDER BY obj.id");
        $objective = $res[0]['id'];
        
        $res = exec_select($conn, "SELECT inv_id FROM user_prio WHERE up_id = $prio");
        $invest = ($res[0]['inv_id']) ? $res[0]['inv_id'] : $_POST['inv_post'];
    }
    
    if ($state=='get' || $state=='post') {
        $eu_priority = ($_POST['eu_pr']) ? $_POST['eu_pr'][0] : $_POST['eu_prio_post'];
        $objective = ($_POST['objective']) ? $_POST['objective'][0] : $_POST['objective_post'];
        $invest = ($_POST['inv_pr']) ? $_POST['inv_pr'][0] : $_POST['inv_post'];
    }
    
    if ($state=='new') {
        $eu_priority = 0;
        $objective = '';
        $invest = '';
    }
    
    echo "<input type='text' name='eu_prio_post' class='hide' value='$eu_priority' >";
    echo "<input type='text' name='objective_post' class='hide' value='$objective'>";
    echo "<input type='text' name='inv_post' class='hide' value='$invest'>";
    
    foreach ($all_prios as $val) {
        $id = $val['id'];
        $description = $val['description'];
        $checked =  ($eu_priority==$id) ? 'checked' : '';
        $color=$colors[$i];
        echo "<input type='checkbox' class='hide eu_pr' name='eu_pr[]' value='$id' required/>";
        echo "<input id='$id' type='checkbox' class='hide eu_pr' name='eu_pr[]' value='$id' onchange='return setPriority({objectives: $all_objectives, investments: $all_investments, prio:this.value });' $checked >";
                echo "<a href='#'><label id='$color' class='eu-rect' for='$id'><span>$description</span></label></a>";
        
        $i++;
    }
    
    echo "<button class='priorities-btn'  onclick='return openPopup"
    . "({ url: \"priorities\", name:\"priorities\", height:\"large\" })' >"
            . "Investment Priorities <i class='fa fa-list-alt' aria-hidden='true'></i>"
            . "</button>";
    
    echo "</div>";
    
    if ($eu_priority) {
        $prio_objectives = exec_select($conn, "SELECT * FROM objective WHERE eu_id=$eu_priority ORDER BY id");
    }
    
    echo "<div class='choose-item'>";
    echo "<p>Choose the thematic objective: </p>";
        echo "<select id ='objective' class='chosen-select' data-placeholder='choose objective ..' name='objective[]' onchange='return setObjective({investments: $all_investments, objective:this.value });' required>";
            foreach($prio_objectives as $val) {
                $id = $val['id'];
                $description = $val['description'];
                $checked = ($id=$objective) ? 'checked' : '';
                echo "<option value='$id' $checked>$id - $description</option>";
            }
        echo "</select>";
        
    echo "</div>";
    
    if ($objective) {
        $investments = exec_select($conn, "SELECT * FROM inv_prio WHERE obj_id='$objective' ORDER BY id");
    }
    
    echo "<div class='choose-item'>";
    echo "<p>Choose the investment priority: </p>";
        echo "<select id ='investment' class='chosen-select' data-placeholder='choose priority ..' name='inv_pr[]' onchange='return prioExists({prio: this.value, user_prios:$user_prios });' required>";
            $checked_init = (isset($_POST['investment'])) ? '' : 'selected';
            foreach($investments as $val) {
                $id = $val['id'];
                $description = $val['description'];
                $checked = ($id=$invest) ? 'checked' : '';
                echo "<option value='$id' $checked>$id - $description</option>";
            }
        echo "</select>";
    echo "</div>";
    
    echo "<input id='previousprio' class='hide' />";
    
    echo "<input type='text' id='selectall-type' class='hide' />";
    
    echo "</fieldset>";