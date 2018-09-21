<?php
    
    
    function load_priorities($conn) {
        $priorities=$objectives=$investments=array();
        
        $sql = "SELECT * FROM eu_prio ORDER BY id";
        
        $priorities = exec_select($conn, $sql);
        
        foreach ($priorities as $prio) {
            $prio_id = $prio['id'];
            $sql = "SELECT * FROM objective WHERE eu_id=$prio_id ORDER BY id";
            
            $prio_obj = exec_select($conn, $sql);
            
            foreach ($prio_obj as $obj) {
                $obj_id = $obj['id'];
                $sql = "SELECT * FROM inv_prio WHERE obj_id='$obj_id' ORDER BY id";

                $invest = exec_select($conn, $sql);
                $investments[$obj_id] = $invest;
            }
            
            $objectives[$prio_id] = $prio_obj;
            
        }
        
        
        return array($priorities,$objectives,$investments);
    }
    

