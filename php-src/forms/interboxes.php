
<div class='layer one'>
    <p class='box-title'>Context</p>
    <div class='interbox container' id='0_interbox'>
        <div class='inner-box'>
            <?php
                fill_items($conn,'con',$state,$prio);
            ?>
        </div>
        <hr>
        <i class='fa fa-plus-square add-icon' id='0_add_btn'></i>
        <input class='add-item' id='0_add' placeholder='context ..' />
        <?php 
            $index = 1;
            include 'php-src/templates/tips.php'
        ?>
    </div>
    
</div>
     
<div class='layer two'>
    <p class='box-title'>Vision</p>
    <div class='interbox'>
        <div class='sub-content container' id='1a_interbox'>
            <p class='box-subtitle'>EDP</p>
            <div class='inner-box'>
                
                <?php
                    fill_items($conn,'edp',$state,$prio); 
                ?>
            </div>
        </div>
        <div class='sub-content container' id='1b_interbox'>
            <p class='box-subtitle'>Extroversion Analysis</p>
            <div class='inner-box'>
                <?php
                    fill_items($conn,'ext',$state,$prio); 
                ?>
            </div>
        </div>
        <div class='sub-content container' id='1c_interbox'>
            <p class='box-subtitle'>Related Variety</p>
            <div class='inner-box'>
                <?php
                    fill_items($conn,'rel',$state,$prio); 
                ?>
            </div>
            
        </div>
        <div class='sub-content container' id='1d_interbox'>
            <p class='box-subtitle'>Foresight</p>
            <div class='inner-box'>
                <?php
                    fill_items($conn,'for',$state,$prio);  
                ?>
            </div>
        </div>
        <hr>
        
        <div class='add-content'>
            <div>
                <i class='fa fa-plus-square add-icon' id='1a_add_btn'></i>
                <input class='add-item' placeholder='edp ..' id='1a_add'/>
            </div>
            
            <div>
                <i class='fa fa-plus-square add-icon' id='1b_add_btn'></i>
                <input class='add-item' placeholder='extroversion analysis ..' id='1b_add'/>
            </div>
            
            <div>
                <i class='fa fa-plus-square add-icon' id='1c_add_btn'></i>
                <input class='add-item' placeholder='related variety ..' id='1c_add'/>
            </div>
        
            <div>
                <i class='fa fa-plus-square add-icon' id='1d_add_btn'></i>
                <input class='add-item' placeholder='foresight ..' id='1d_add'/>
            </div>
        </div>
        <?php 
            $index = 2;
            include 'php-src/templates/tips.php'
        ?>
    </div>
    
</div>
    
<div class='layer three'>
    <p class='box-title'>Policy Mix</p>
    <div class='interbox'>
        <div class='sub-content container' id='2a_interbox'>
            <p class='box-subtitle'>Definition of actions</p>
            <div class='inner-box'>
                <?php
                    fill_items($conn,'def',$state,$prio);  
                ?>
            </div>
        </div>
        
        <?php 
            $index = 3;
            $cls = 'inner';
            include 'php-src/templates/tips.php'
        ?>
        
        <div class='sub-content container' id='2b_interbox'>
            <p class='box-subtitle'>Action plan implementation</p>
            <div class='inner-box'>
                <?php
                    fill_items($conn,'act',$state,$prio);
                ?>
            </div>
        </div>
        
        <?php 
            $index = 4;
            $cls = '';
            include 'php-src/templates/tips.php'
        ?>
        
        <hr>
        
        <div class='add-content'>
            <div>
                <i class='fa fa-plus-square add-icon' id='2a_add_btn'></i>
                <input class='add-item' placeholder='definition of actions ..' id='2a_add'/>
            </div>
            
            <div>
                <i class='fa fa-plus-square add-icon' id='2b_add_btn'></i>
                <input class='add-item' placeholder='action plan implementation ..' id='2b_add'/>
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
                    fill_items($conn,'out',$state,$prio);  
                ?>
            </div>
        </div>
        
        <?php 
            $index = 5;
            $cls = 'inner';
            include 'php-src/templates/tips.php'
        ?>
        
        <div class='sub-content container' id='3b_interbox'>
            <p class='box-subtitle'>Result indicators</p>
            <div class='inner-box'>
                <?php
                    fill_items($conn,'res',$state,$prio); 
                ?>
            </div>
        </div>
        
        <?php 
            $index = 6;
            $cls = '';
            include 'php-src/templates/tips.php'
        ?>
        
        <hr>
        
        <div class='add-content'>
            <div>
                <i class='fa fa-plus-square add-icon' id='3a_add_btn'></i>
                <input class='add-item' placeholder='output indicators ..' id='3a_add'/>
            </div>
            
            <div>
                <i class='fa fa-plus-square add-icon' id='3b_add_btn'></i>
                <input class='add-item' placeholder='result indicators ..' id='3b_add'/>
            </div>
        </div>
        
    </div>
    
    <div id="arrow-1" class="second"><div class="up"></div><div class="down"></div>
    <div class="down small-1"></div><div class="down small-2"></div></div>
    
    <div id="arrow-2" class="second"><div class="up"></div><div class="down"></div>
    <div class="down small-3"></div><div class="down small-4"></div></div>
</div>
 