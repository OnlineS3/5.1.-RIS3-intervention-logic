

<div class='layer one' id="layer-one">

    <div class="box parent">
        <img src="images/context_title.png" width="31">
    </div>

    <div class='parent-container' id='cont-one'>
        <input class="hide-comments hide" name="hide-comments" type='text' />
        <div class="container">
            
            <?php
                if($prio) {
                    $con_order = create_boxes($conn,$prio,'con');
                }   
            ?>
            
            <div class="box new">
                <?php $new_order = '0_' . (($prio) ? $con_order+1 : '0');
                echo "<button id='$new_order' onclick='return newBox(this.id,\"one\");'>
                    <i class='fa fa-plus' aria-hidden='true'></i>
                </button>";
                ?>
            </div>
        </div>
        
        <div class="info-div"><i class="fa fa-info" aria-hidden="true"></i></div>

        <div class="notes hide">
            <p class="notes-title">Context</p>

            <i class="fa fa-times" aria-hidden="true"></i>

            <p class='notes-body'>
                In this section, you can add the main outcomes from the Analysis of the 
                Context phase, which are related to the specific Priority Axis. 
                These may include results coming from the mapping of the regional assets, 
                research and infrastructure mapping, clusters incubators and innovation 
                ecosystem mapping, as well as benchmarking.
            </p>
        </div>
    </div>

</div>

<div class='layer two'>

    <div class="box parent">
        <!-- <input name="title" value="Vision Statement / Priority setting" class="box-title" type="text" disabled> -->
        <img src="images/vision_title.png" width="31">
    </div>

    <div class="two-all-divs">
        <div class='parent-container' id='cont-two'>
            <input class="hide-comments hide" name="hide-comments" type='text' />
            <div class="container horizon right">
                <div class='header-div'><p style='top: 26px;right: 12px;position: relative;'>EDP</p></div>
                
                <?php
                    if($prio) {
                        $edp_order = create_boxes($conn,$prio,'edp');
                    }   
                ?>
                
                <div class="box new">
                    <?php $new_order = '1a_' . (($prio) ? $edp_order+1 : '0');
                    echo "<button id='$new_order' onclick='return newBox(this.id,\"two\");'>
                        <i class='fa fa-plus' aria-hidden='true'></i>
                    </button>";
                    ?>
                </div>
                
            </div>

            <div class="info-div"><i class="fa fa-info" aria-hidden="true"></i></div>

            <div class="notes hide">
                <p class="notes-title">Vision statement and Strategic objectives</p>

                <i class="fa fa-times" aria-hidden="true"></i>

                <p class='notes-body'>
                    In the Vision section, information related to results coming from 
                    Shared Vision/Strategy formulation and Priority setting phases should be 
                    added on the diagram. The four sub-sections included here, specifically 
                    refer to: scenario building and foresight exercises, EDP, extroversion 
                    and related variety analysis. For each one of them the user can add 
                    the most important outcomes that are related to the specific 
                    Priority Axis. 
                </p>
            </div>
        </div>

        <div class='parent-container' id='cont-three'>
            <input class="hide-comments hide" name="hide-comments" type='text' />
            <div class="container horizon right">
                <div class='header-div'><p style='left: -51px;top: 15px;'>Extroversion analysis</p></div>
                <?php
                    if($prio) {
                        $ext_order = create_boxes($conn,$prio,'ext');
                    }   
                ?>
                
                <div class="box new">
                    <?php $new_order = '1b_' . (($prio) ? $ext_order+1 : '0');
                    echo "<button id='$new_order' onclick='return newBox(this.id,\"two\");'>
                        <i class='fa fa-plus' aria-hidden='true'></i>
                    </button>";
                    ?>
                </div>
                
            </div>  

            <div class="info-div"><i class="fa fa-info" aria-hidden="true"></i></div>

            <div class="notes hide">
                <p class="notes-title">Vision statement and Strategic objectives</p>

                <i class="fa fa-times" aria-hidden="true"></i>

                <p class='notes-body'>
                    In the Vision section, information related to results coming from 
                    Shared Vision/Strategy formulation and Priority setting phases should be 
                    added on the diagram. The four sub-sections included here, specifically 
                    refer to: scenario building and foresight exercises, EDP, extroversion 
                    and related variety analysis. For each one of them the user can add 
                    the most important outcomes that are related to the specific 
                    Priority Axis. 
                </p>
            </div>
        </div>

        <div class='parent-container' id='cont-four'>
            <input class="hide-comments hide" name="hide-comments" type='text' />
            <div class="container horizon right">
                <div class='header-div'><p style='left: -30px;top: 17px;'>Related variety</p></div>
                <?php
                    if($prio) {
                        $rel_order = create_boxes($conn,$prio,'rel');
                    }   
                ?>
                
                <div class="box new">
                    <?php $new_order = '1c_' . (($prio) ? $rel_order+1 : '0');
                    echo "<button id='$new_order' onclick='return newBox(this.id,\"two\");'>
                        <i class='fa fa-plus' aria-hidden='true'></i>
                    </button>";
                    ?>
                </div>
                
            </div> 

            <div class="info-div"><i class="fa fa-info" aria-hidden="true"></i></div>
            <div class="notes hide">
                <p class="notes-title">Vision statement and Strategic objectives</p>

                <i class="fa fa-times" aria-hidden="true"></i>

                <p class='notes-body'>
                    In the Vision section, information related to results coming from 
                    Shared Vision/Strategy formulation and Priority setting phases should be 
                    added on the diagram. The four sub-sections included here, specifically 
                    refer to: scenario building and foresight exercises, EDP, extroversion 
                    and related variety analysis. For each one of them the user can add 
                    the most important outcomes that are related to the specific 
                    Priority Axis. 
                </p>
            </div>
        </div>

        <div class='parent-container' id='cont-five'>
            <input class="hide-comments hide" name="hide-comments" type='text' />
            <div class="container horizon right">  
                <div class='header-div'><p style='left: -38px;top: 24px;'>Foresight</p></div>
                
                <?php
                    if($prio) {
                        $for_order = create_boxes($conn,$prio,'for');
                    }   
                ?>
                
                <div class="box new">
                    <?php $new_order = '1d_' . (($prio) ? $for_order+1 : '0');
                    echo "<button id='$new_order' onclick='return newBox(this.id,\"two\");'>
                        <i class='fa fa-plus' aria-hidden='true'></i>
                    </button>";
                    ?>
                </div>
                
            </div>

            <div class="info-div"><i class="fa fa-info" aria-hidden="true"></i></div>

            <div class="notes hide">
                <p class="notes-title">Vision statement and Strategic objectives</p>

                <i class="fa fa-times" aria-hidden="true"></i>

                <p class='notes-body'>
                    In the Vision section, information related to results coming from 
                    Shared Vision/Strategy formulation and Priority setting phases should be 
                    added on the diagram. The four sub-sections included here, specifically 
                    refer to: scenario building and foresight exercises, EDP, extroversion 
                    and related variety analysis. For each one of them the user can add 
                    the most important outcomes that are related to the specific 
                    Priority Axis. 
                </p>
            </div>
        </div>
    </div>

    <div id='arrow-2' class='first'></div>

</div>

<div class='layer three'>

    <div class="box parent">
        <img src="images/policy_title.png" width="25"/>
    </div>

    <div class='parent-container' id='cont-six'>
        <input class="hide-comments hide" name="hide-comments" type='text' />
        <div class="container vertical alt">
            <p class='header'>Definition of actions</p>
            
            <?php
                if($prio) {
                    $def_order = create_boxes($conn,$prio,'def');
                }   
            ?>
            
            <div class="box new">
                <?php $new_order = '2a_' . (($prio) ? $def_order+1 : '0');
                echo "<button id='$new_order' onclick='return newBox(this.id,\"three\");'>
                    <i class='fa fa-plus' aria-hidden='true'></i>
                </button>";
                ?>
            </div>
            
        </div>

        <div class="info-div"><i class="fa fa-info" aria-hidden="true"></i></div>

        <div class="notes hide move-one">
            <p class="notes-title">Definition of actions</p>
            <i class="fa fa-times" aria-hidden="true"></i>
            <p class='notes-body'>
                The definition of actions includes the outcomes of action plan co-design, 
                budgeting, administrative framework and innovation maps. The actions 
                should be specified based on the need to achieve the Strategic 
                Objectives, defined in the previous section.
            </p>
        </div>
    </div>

    <div class='parent-container' id='cont-seven'>
        <input class="hide-comments hide" name="hide-comments" type='text' />
        <div class="container vertical alt">
            <p class='header'>Action plan implementation</p>
            
            <?php
                if($prio) {
                    $act_order = create_boxes($conn,$prio,'act');
                }   
            ?>
            
            <div class="box new">
                <?php $new_order = '2b_' . (($prio) ? $act_order+1 : '0');
                echo "<button id='$new_order' onclick='return newBox(this.id,\"three\");'>
                    <i class='fa fa-plus' aria-hidden='true'></i>
                </button>";
                ?>
            </div>
            
        </div>

        <div class="info-div"><i class="fa fa-info" aria-hidden="true"></i></div>

        <div class="notes hide move-two">
            <p class="notes-title">Action plan implementation</p>
            <i class="fa fa-times" aria-hidden="true"></i>
            <p class='notes-body'>
                Categories of intervention refer to the specification of a 
                selected number of types of intervention that will be 
                included in the Smart Specialisation strategy, for the 
                specific Priority Axis. These should be selected based on 
                the Vision Statement and Strategic Objectives, that were 
                described in the previous section. 
            </p>
        </div>
    </div>

    <img src="images/arrow1.png" id='arrow-1' width="37">

    <div id='arrow-2' class='second'><div class='up'></div><div class='down'></div><img class='triangle' src='images/arrow-triangle.png' width='14'></div>
</div>

<div class='layer four'>
    <div class="box parent">
        <img src="images/monitor_title.png" width="28"/>
    </div>

    <div class='parent-container' id='cont-eight'>
        <input class="hide-comments hide" name="hide-comments" type='text' />
        <div class="container vertical alt">
            <p class='header'>Output indicators</p>
            
            <?php
                if($prio) {
                    $out_order = create_boxes($conn,$prio,'out');
                }   
            ?>
            
            <div class="box new">
                <?php $new_order = '3a_' . (($prio) ? $out_order+1 : '0');
                echo "<button id='$new_order' onclick='return newBox(this.id,\"four\");'>
                    <i class='fa fa-plus' aria-hidden='true'></i>
                </button>";
                ?>
            </div>
            
        </div>

        <div class="info-div"><i class="fa fa-info" aria-hidden="true"></i></div>

        <div class="notes hide move-one">
            <p class="notes-title">Output indicators</p>

            <i class="fa fa-times" aria-hidden="true"></i>

            <p class='notes-body'>
                Specification of the output indicators that are going to be used, 
                based on the definition of actions for this Priority Axis.
            </p>
        </div>
    </div>

    <div class='parent-container' id='cont-nine'>
        <input class="hide-comments hide" name="hide-comments" type='text' />
        <div class="container vertical alt">
            <p class='header'>Result indicators</p>
            
            <?php
                if($prio) {
                    $res_order = create_boxes($conn,$prio,'res');
                }   
            ?>
            
            <div class="box new">
                <?php $new_order = '3d_' . (($prio) ? $res_order+1 : '0');
                echo "<button id='$new_order' onclick='return newBox(this.id,\"four\");'>
                    <i class='fa fa-plus' aria-hidden='true'></i>
                </button>";
                ?>
            </div>
            
        </div>

        <div class="info-div"><i class="fa fa-info" aria-hidden="true"></i></div>

        <div class="notes hide move-two">
            <p class="notes-title">Result indicators</p>

            <i class="fa fa-times" aria-hidden="true"></i>

            <p class='notes-body'>
                Specification of the result indicators that are going to be used, 
                based on the Vision statement and the selected Strategic objectives 
                for this Priority Axis.
            </p>
        </div>
    </div>

</div>

<?php include "box-popup.php"; ?>
    
    
