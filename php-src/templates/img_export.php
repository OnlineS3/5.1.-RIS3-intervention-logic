<div class='logic-template hide' id="export">
    <div class='layer one'>
        <p class='box-title'>Context</p>
        <div class='interbox container' id='0_interbox'>
            <div class='inner-box'>
                <?php
                    fill_items($conn,'con',$state,$prio,true);
                ?>
            </div>
        </div>
    </div>

    <div class='layer two'>
        <p class='box-title'>Vision</p>
        <div class='interbox'>
            <div class='sub-content container' id='1a_interbox'>
                <p class='box-subtitle'>EDP</p>
                <div class='inner-box'>
                    <?php
                        fill_items($conn,'edp',$state,$prio,true); 
                    ?>
                </div>
            </div>
            <div class='sub-content container' id='1b_interbox'>
                <p class='box-subtitle'>Extroversion Analysis</p>
                <div class='inner-box'>
                    <?php
                        fill_items($conn,'ext',$state,$prio,true);  
                    ?>
                </div>
            </div>
            <div class='sub-content container' id='1c_interbox'>
                <p class='box-subtitle'>Related Variety</p>
                <div class='inner-box'>
                    <?php
                        fill_items($conn,'rel',$state,$prio,true);
                    ?>
                </div>
            </div>
            <div class='sub-content container' id='1d_interbox'>
                <p class='box-subtitle'>Foresight</p>
                <div class='inner-box'>
                    <?php
                        fill_items($conn,'for',$state,$prio,true);  
                    ?>
                </div>
            </div>

        </div>

    </div>

    <div class='layer three'>
        <p class='box-title'>Policy Mix</p>
        <div class='interbox'>
            <div class='sub-content container' id='2a_interbox'>
                <p class='box-subtitle'>Definition of actions</p>
                <div class='inner-box'>
                    <?php
                        fill_items($conn,'def',$state,$prio,true);   
                    ?>
                </div>
            </div>
            <div class='sub-content container' id='2b_interbox'>
                <p class='box-subtitle'>Action plan implementation</p>
                <div class='inner-box'>
                    <?php
                        fill_items($conn,'act',$state,$prio,true);  
                    ?>
                </div>
            </div>

        </div>
    </div>

    <div class='layer four'>
        <p class='box-title'>Monitoring</p>
        <div class='interbox'>
            <div class='sub-content container' id='3a_interbox'>
                <p class='box-subtitle'>Output indicators</p>
                <div class='inner-box'>
                    <?php
                        fill_items($conn,'out',$state,$prio,true);  
                    ?>
                </div>
            </div>
            <div class='sub-content container' id='3b_interbox'>
                <p class='box-subtitle'>Result indicators</p>
                <div class='inner-box'>
                    <?php
                        fill_items($conn,'res',$state,$prio,true);  
                    ?>
                </div>
            </div>
        </div>
        <div id="arrow-1" class="second"><div class="up"></div><div class="down"></div>
        <div class="down small-1"></div><div class="down small-2"></div></div>

        <div id="arrow-2" class="second"><div class="up"></div><div class="down"></div>
        <div class="down small-3"></div><div class="down small-4"></div></div>
    </div>
<div>
