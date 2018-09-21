<?php
    session_start();
    foreach($_POST as $key => $value) {
        $_SESSION['post_data'][$key] = $value;
    }
//    phpinfo();
    $user = wp_get_current_user();
    $user_id =  isset( $user->ID ) ? (int) $user->ID : 0;
    $user_name = $current_user->user_login;
    
    $login_pressed = 0;
            
    echo "<form action='$home' method='post' id='logic-form'>";
    
    include 'header.php';
   
    $home = 'http://' . $_SERVER['SERVER_NAME'] . '/home';

    //$about_hide = ($_SERVER["REQUEST_METHOD"] == "POST") ? 'hide' : '';
    
    echo "<div class='interlogic'>";
    echo "<div id='about' class='section-page plain'>";
    include 'php-src/templates/about.php';
    echo "</div>";
    
    echo "<div id='docs' class='section-page hide'>";
    include 'php-src/templates/docs.html';
    echo "</div>";

    echo "<div id='guide' class='section-page hide plain'>";
    include 'php-src/templates/guide.php';
    echo "</div>";
    
    echo "<div id='roadmap' class='section-page hide plain'>";
    include 'php-src/templates/roadmap.php';
    
    echo "</div>";
    
    $tool_hide = ($_SERVER["REQUEST_METHOD"] == "POST") ? '' : 'hidden';
    
    echo "<div id='tool' class='tool-page section-page'>";
    include 'php-src/templates/tool.php';
    echo "</div>";
    
    echo "</div>";
    // include header and categories
    // include 'php-src/templates/menu.php';
    
//    include 'prio_menu.php';
    
    include 'prio_menu.php';
    include 'sidebar.php';
    echo "</div>";
    
    echo "</form>";
    
    include 'php-src/templates/footer.php';
    
?>