
<?php 
    $cls_bottom = ($index==1 || $index==2) ? 'cls_bottom' : '';
?>

<div class="info-div <?php echo $cls . ' ' . $cls_bottom;?>"><i class="fa fa-info" aria-hidden="true"></i></div>
<div class="notes hide">
    
    <span class="info-step">Step <?php echo ($index+1) ?></span>
    
    <p class="notes-title"><?php echo $tip_headers[$index]; ?></p>

    <i class="fa fa-times" aria-hidden="true"></i>

    <p class='notes-body'>
        <?php echo $tips[$index]; ?>
    </p>
</div>