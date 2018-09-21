<?php

    include 'php-src/onlineS3/db_connector/connection.php';
    $conn = conn_db();
    include 'php-src/onlineS3/db_connector/exec_sql.php';
    include 'php-src/db_func/load_contents.php';

    $contents = load_priorities($conn);
    $priorities = $contents[0];
    $objectives = $contents[1];
    $investments = $contents[2];
    
    echo "<div id='contents'/>";
	
    echo "<p class='content-header'>Investment Priority Structure</p>";
    
    $i=0;
    foreach($priorities as $prio) {
        
        $prio_id = $prio['id'];
        $prio_label = $prio['description'];
        
        echo "<label for='$prio_id' class='prio-label prio-$i $prio_id'>$prio_label</label>";
        echo "<input id='$prio_id' class='prio-check hide' type='checkbox' checked/>";
        echo "<div class='prio-block'>";

        $prio_objectives = $objectives[$prio_id];
        
        if (!$prio_objectives) { continue; }
        
        echo "<ul class='object $current'>";
        
        foreach($prio_objectives as $obj) {
            $obj_id = $obj['id'];
            $obj_label = $obj['description'];
            
            echo "<li>";
            
            echo "<label class='object-label $obj_id' for='$obj_id'><strong>" . $obj_id . "</strong> - " . utf8_encode($obj_label) . "</label>";
            echo "<input id='$obj_id' class='hide obj-check' type='checkbox' checked/>";
                
                echo "<ul class='road $current'>";
                $obj_invest = $investments[$obj_id];
				
				$unique = (count($obj_invest)==1) ? 'unique' : '';
				
                foreach($obj_invest as $invest) {
                    $invest_id = $invest['id'];
                    $invest_label = $invest['description'];

                    echo "<li class='$unique'><a href='#'>";
                    echo $invest_id . " - " . utf8_encode($invest_label);
                    echo "</a></li>";
                }
                echo "</ul>";
            
            echo "</li>";
        }
        
        echo "</ul>";
        echo "</div>";
        
        $i++;
    }

    echo "</div>";
    
?>