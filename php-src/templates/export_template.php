

    <div class='logic-template hide' id="export">

        <div class='layer one' id="layer-one">
            <div class="box parent">
                <!-- <input name="title" value="Context" class="box-title" type="text" disabled> -->
                <img src="images/context_title.png" width="31">
            </div>

            <div class='parent-container' id='cont-one'>
                <input class="hide-comments hide" name="hide-comments" type='text' />
                <div class="container">
                    
                    <?php
                        if($prio) {
                            $con_order = create_boxes($conn,$prio,'con',true);
                        }   
                    ?>
                    
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
                                            $con_order = create_boxes($conn,$prio,'edp',true);
                                        }   
                                    ?>
                            </div>
                    </div>

                    <div class='parent-container' id='cont-three'>
                            <input class="hide-comments hide" name="hide-comments" type='text' />
                            <div class="container horizon right">
                                    <div class='header-div'><p style='left: -51px;top: 15px;'>Extroversion analysis</p></div>
                                    <?php
                                        if($prio) {
                                            $con_order = create_boxes($conn,$prio,'ext',true);
                                        }   
                                    ?>
                            </div>
                    </div>

                    <div class='parent-container' id='cont-four'>
                            <input class="hide-comments hide" name="hide-comments" type='text' />
                            <div class="container horizon right">
                                <div class='header-div'><p style='left: -30px;top: 17px;'>Related variety</p></div>
                                <?php
                                    if($prio) {
                                        $con_order = create_boxes($conn,$prio,'rel',true);
                                    }   
                                ?>
                            </div> 
                    </div>

                    <div class='parent-container' id='cont-five'>
                            <input class="hide-comments hide" name="hide-comments" type='text' />
                            <div class="container horizon right">  
                                <div class='header-div'><p style='left: -38px;top: 24px;'>Foresight</p></div>
                                <?php
                                    if($prio) {
                                        $con_order = create_boxes($conn,$prio,'for',true);
                                    }   
                                ?>
                            </div>
                    </div>
                </div>
                <img src="images/arrow1.png" id='arrow-1' width="37">
                <div id='arrow-2' class='first'></div>
            </div>

            <div class='layer three'>

                    <div class="box parent">
                            <!-- <input name="title" value="Policy mix" class="box-title" type="text" disabled> -->
                            <img src="images/policy_title.png" width="25"/>
                    </div>

                    <div class='parent-container' id='cont-six'>
                            <input class="hide-comments hide" name="hide-comments" type='text' />
                            <div class="container vertical alt">
                                <p class='header'>Definition of actions</p>
                                <?php
                                    if($prio) {
                                        $con_order = create_boxes($conn,$prio,'def',true);
                                    }   
                                ?>
                            </div>
                    </div>

                    <div class='parent-container' id='cont-seven'>
                            <input class="hide-comments hide" name="hide-comments" type='text' />
                            <div class="container vertical alt">
                                <p class='header'>Action plan implementation</p>
                                <?php
                                    if($prio) {
                                        $con_order = create_boxes($conn,$prio,'act',true);
                                    }   
                                ?>
                            </div>
                    </div>
                    <div id='arrow-2' class='second'><div class='up'></div><div class='down'></div><img class='triangle' src='images/arrow-triangle.png' width='14'></div>
            </div>

            <div class='layer four'>
                    <div class="box parent">
                            <!-- <input name="title" value="Monitoring" class="box-title" type="text" disabled> -->
                            <img src="images/monitor_title.png" width="28"/>
                    </div>

                    <div class='parent-container' id='cont-eight'>
                            <input class="hide-comments hide" name="hide-comments" type='text' />
                            <div class="container vertical alt">
                                <p class='header'>Output indicators</p>
                                <?php
                                    if($prio) {
                                        $con_order = create_boxes($conn,$prio,'out',true);
                                    }   
                                ?>
                            </div>
                    </div>

                    <div class='parent-container' id='cont-nine'>
                            <input class="hide-comments hide" name="hide-comments" type='text' />
                            <div class="container vertical alt">
                                <p class='header'>Result indicators</p>
                                <?php
                                    if($prio) {
                                        $con_order = create_boxes($conn,$prio,'res',true);
                                    }   
                                ?>
                            </div>
                    </div>
            </div>

    </div>

<div class='logic-template' id="word-container">

</div>