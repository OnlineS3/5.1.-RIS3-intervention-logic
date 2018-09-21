<?php

function fill_items($conn,$box_type,$state,$prio=null,$img=false) {
    
    if ($state=='init' || $state=='load') {
        $res = exec_select($conn, "SELECT * FROM prio_data pd WHERE pd.box_type='$box_type' AND pd.up_id = $prio ORDER BY pd.box_order");
    
        $i=0;
        if($res) {
            foreach($res as $item) {
                $item_type = $item['box_type'];
                $item_order = $item['box_order'];
                $label = $item['label'];
                $level = match_db_type($item_type, true);
                $name = ($img) ? ('img_box_' . $level . '_' . $item_order . '_title') : ('box_' . $level . '_' . $item_order . '_title');
                $del_id = ($img) ? ('img_box_' . $level . '_' . $item_order . '_del') : ('box_' . $level . '_' . $item_order . '_del');
                echo "<div class='added-cont'>";
                if ($img) {
                    echo "<span>-</span><p class='added-item' id=" . $name . ">$label</p>";
                } else {
                    echo "<input type='text' class='added-item' id=" . $name . "  name='" . $name . "' value = '" . $label . "'/>";
                }
                echo "<i class='fa fa-times-circle del-icon' id=".$del_id."></i></div>";
                ?>
                    <script type='text/javascript'>
                        addItemListener(<?php echo $name ?>);
                    </script>
                <?php
            }

            $i++;
        }
        
    } else if ($state=='post' || $state=='get') {
        $i=0;
        
        foreach ($_POST as $key => $value){
            
            $level = match_db_type($box_type, true);
            $name = 'box_' . $level .'_' . $i . '_title';
            
            if ($key == $name) {
                $label = normalize_input($_POST[$name]);
                
                $name = ($img) ? ('img_box_' . $level . '_' . $i . '_title') : ('box_' . $level . '_' . $i . '_title');
                
                echo "<div class='added-cont'>";
                if ($img){
                    echo "<span>-</span><p class='added-item' id=" . $name . ">$label</p>";
                } else {
                    echo "<input type='text' class='added-item' id=" . $name . "  name='" . $name . "' value = '" . $label . "'/>";
                }
                echo "<i class='fa fa-times-circle del-icon'></i></div>";
                
                $i++;
                
                ?>
                    <script type='text/javascript'>
                        addItemListener(<?php echo $name ?>);
                    </script>
                <?php
            }
        }
    }
}
    
function create_boxes($conn,$prio,$box_type,$img=false) {
    $res = exec_select($conn, "SELECT * FROM prio_data pd WHERE pd.box_type='$box_type' AND pd.up_id = $prio ORDER BY pd.box_order");

    $i=0;
    if($res) {
        foreach($res as $box) {
            $box_type = $box['box_type'];
            $box_order = $box['box_order'];
            $label = $box['label'];
            $description = $box['description'];
            
            $level = match_db_type($box_type, true);
            $name_title = 'box_' . $level . '_' . $box_order . '_title';
            $name_descr = $level . '_' . $box_order . '_descr';
            $id = $level . '_' . $box_order;

            echo "<div class='box child'>
                <input name='$name_title' value='$label' class='box-title' readonly='true' type='text'>
                <input name='$name_descr' value='$description' class='description hide' type='text'>";
                if(!$img){
                    echo "<input id='edit-box' class='edit-box hide' type='checkbox'>
                    <label for='edit-box' id='$id' onclick='return editBox(this.id,null);'>
                    <div class='pencil-div'><i class='fa fa-pencil-square-o circle-pencil'></i></div>
                    </label>";
                }
            echo "</div>";
        }
        
        $i++;
    }
    
    return $box_order;
}

function match_db_type($prio_type, $reverse=null) {
    if($reverse) {
        switch($prio_type) {
            case 'con':
                $web_type = '0';
                break;
            case 'vis':
                $web_type = '1';
                break;
            case 'edp':
                $web_type = '1a';
                break;
            case 'ext':
                $web_type = '1b';
                break;
            case 'rel':
                $web_type = '1c';
                break;
            case 'for':
                $web_type = '1d';
                break;
            case 'def':
                $web_type = '2a';
                break;
            case 'act':
                $web_type = '2b';
                break;
            case 'out':
                $web_type = '3a';
                break;
            case 'res':
                $web_type = '3b';
                break;
            default:
                $web_type = 'undefined';
        }
        return $web_type;
    } else {
        switch($prio_type) {
            case '0':
                $db_type = 'con';
                break;
            case '1':
                $db_type = 'vis';
                break;
            case '1a':
                $db_type = 'edp';
                break;
            case '1b':
                $db_type = 'ext';
                break;
            case '1c':
                $db_type = 'rel';
                break;
            case '1d':
                $db_type = 'for';
                break;
            case '2a':
                $db_type = 'def';
                break;
            case '2b':
                $db_type = 'act';
                break;
            case '3a':
                $db_type = 'out';
                break;
            case '3b':
                $db_type = 'res';
                break;
            default:
                $db_type = 'undefined';
        }
        return $db_type;
    }
}
