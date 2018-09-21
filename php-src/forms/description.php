
<?php 

    $description = null;
    if ($state=='post' || $state=='get') {
        $quest_1 = normalize_input($_POST['quest_1']);
        $quest_2 = normalize_input($_POST['quest_2']);
        $quest_3 = normalize_input($_POST['quest_3']);
        $quest_4 = normalize_input($_POST['quest_4']);
        $quest_5 = normalize_input($_POST['quest_5']);
        $quest_6 = normalize_input($_POST['quest_6']);
        $quest_7 = normalize_input($_POST['quest_7']);
    } else if ($state=='init' || $state=='load') {
        $description = exec_select($conn, "SELECT descr_text FROM prio_descr WHERE up_id = $prio");
        $quest_1 = $description[0]['descr_text'];
        $quest_2 = $description[1]['descr_text'];
        $quest_3 = $description[2]['descr_text'];
        $quest_4 = $description[3]['descr_text'];
        $quest_5 = $description[4]['descr_text'];
        $quest_6 = $description[5]['descr_text'];
        $quest_7 = $description[6]['descr_text'];
    }  
    
?>

<fieldset class='logic-description'>

<?php 
    $index = 7;
    include 'php-src/templates/tips.php';
?>

<legend>Intervention Logic Description</legend>

<fieldset style='margin-top:14px'>
    <input id="item-1" class="toggle-item" checked="" type="checkbox">
    <label for='item-1'><span class='decimal'>1</span> 
        <span class='text'>How is the context of your region related to the specific Investment Priority?</span>
    </label>
    <div class='accordion-section'>
        <textarea rows="10" cols="101" type="text" class="description_area" name="quest_1" placeholder='context of the region ..'><?php echo $quest_1 ?></textarea>
    </div>
</fieldset>

<fieldset>
    <input id="item-2" class="toggle-item" type="checkbox">
    <label for='item-2'><span class='decimal'>2</span> 
        <span class='text'>In which ways the shared vision is related to the described regional context?</span>
    </label>
    <div class='accordion-section'>
        <textarea rows="10" cols="101" type="text" class="description_area" name="quest_2" placeholder='vision related to regional context ..'><?php echo $quest_2 ?></textarea>
    </div>
</fieldset>

<fieldset>
    <input id="item-3" class="toggle-item" type="checkbox">
    <label for='item-3'><span class='decimal'>3</span> 
        <span class='text'>Please, describe the interconnection between the specified priorities and the shared regional vision.</span>
    </label>
    <div class='accordion-section'>
        <textarea rows="10" cols="101" type="text" class="description_area" name="quest_3" placeholder='priorities and shared regional vision ..'><?php echo $quest_3 ?></textarea>
    </div>
</fieldset>

<fieldset>
    <input id="item-4" class="toggle-item" type="checkbox">
    <label for='item-4'><span class='decimal'>4</span> 
        <span class='text'>In which ways the selected actions contribute to the 
        accomplishment of the reginal priorities, related to this Investment Priority?</span>
    </label>
    <div class='accordion-section'>
        <textarea rows="10" cols="101" type="text" class="description_area" name="quest_4" placeholder='actions and regional priorities ..'><?php echo $quest_4 ?></textarea>
    </div>
</fieldset>

<fieldset>
    <input id="item-5" class="toggle-item" type="checkbox">
    <label for='item-5'><span class='decimal'>5</span> 
        <span class='text'>Please, give a short description of the policy mix related to the specific Investment Priority.</span>
    </label>
    <div class='accordion-section'>
        <textarea rows="10" cols="101" type="text" class="description_area" name="quest_5" placeholder='describe policy mix ..'><?php echo $quest_5 ?></textarea>
    </div>
</fieldset>

<fieldset>
    <input id="item-6" class="toggle-item" type="checkbox">
    <label for='item-6'><span class='decimal'>6</span> 
        <span class='text'>Please, describe the rationale for choosing the specific result indicators, 
            as well as the ways in which they are related to shared vision and priorities.</span>
    </label>
    <div class='accordion-section'>
        <textarea rows="10" cols="101" type="text" class="description_area" name="quest_6" placeholder='result indicators and shared vision ..'><?php echo $quest_6 ?></textarea>
    </div>
</fieldset>

<fieldset>
    <input id="item-7" class="toggle-item" type="checkbox">
    <label label for='item-7'><span class='decimal'>7</span>
        <span class='text'>Please, describe the rationale for choosing the specific output indicators, 
        as well as the ways in which they are related to result indicators.</span>
    </label>
    <div class='accordion-section'>
        <textarea rows="10" cols="101" type="text" class="description_area" name="quest_7" placeholder='selection of output indicators ..'><?php echo $quest_7 ?></textarea>
    </div>
</fieldset>

</fieldset>

<button class='button' id='export-report' type='submit' name='export_report' formnovalidate='formnovalidate'>
    <i id='export-fa' class='fa fa-file-word-o' aria-hidden='true'></i>Export final report
</button>
