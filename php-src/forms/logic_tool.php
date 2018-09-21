<?php

function load_prio($conn,$state,$prio=null,$user_id) {
    
    include 'php-src/handler/global.php';
    
    include "filters.php";
    
    echo "<fieldset class='logic-template' id='logic-contents'>";

    echo "<legend>Priority Contents</legend>";

    //include "boxes.php";
    
    include "interboxes.php";
    
    echo "<div class='img-div'>";
    echo "<button class='button btn-logic export-btn export-btn' onclick='return "
            . "exportElem2png({ div_id: \"export\", filename: \"OnlineImage.png\" });'>"
            . "Download Image <i class='fa fa-file-image-o' aria-hidden='true'></i></button>";
    echo "</div>";
    
    include "php-src/templates/img_export.php";
    echo "</fieldset>";

    include "description.php";
    
    unset($_SESSION['post_data']);
}

