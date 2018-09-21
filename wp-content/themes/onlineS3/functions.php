
<?php

// my theme for online
function my_theme_enqueue_styles() {
    $parent_style = 'parent-style';

    wp_enqueue_style( 'child-style',
        get_stylesheet_directory_uri() . 'style.css',
        array( $parent_style ),
        wp_get_theme()->get('Version')
    );
    
    wp_enqueue_style( 'chosen', get_stylesheet_directory_uri() . '/css/external/chosen/chosen.css' );
    wp_enqueue_style( 'sweetalert2', get_stylesheet_directory_uri() . '/css/external/sweetalert2.min.css' );
	
    wp_enqueue_style( 'layout_wrps', get_stylesheet_directory_uri() . '/css/layout_wrps.css' );
    wp_enqueue_style( 'svg', get_stylesheet_directory_uri() . '/css/jquery.svg.css' );
    wp_enqueue_style( 'font-awesome', get_stylesheet_directory_uri() . '/css/font-awesome/css/font-awesome.min.css' );
    
    wp_enqueue_style( 'font-awesome', 'http://fonts.googleapis.com/css?family=Open+Sans');
    
    wp_enqueue_style( 'base', get_stylesheet_directory_uri() . '/css/base.css', array(), filemtime( get_stylesheet_directory() . '/css/base.css' ) );
    wp_enqueue_style( 'layout2', get_stylesheet_directory_uri() . '/css/layout.css', array(), filemtime( get_stylesheet_directory() . '/css/layout.css' ) );
    wp_enqueue_style( 'header', get_stylesheet_directory_uri() . '/css/header.css', array(), filemtime( get_stylesheet_directory() . '/css/header.css' ) );
    wp_enqueue_style( 'footer', get_stylesheet_directory_uri() . '/css/footer.css', array(), filemtime( get_stylesheet_directory() . '/css/footer.css' ) );
    wp_enqueue_style( 'test', get_stylesheet_directory_uri() . '/css/common.css', array(), filemtime( get_stylesheet_directory() . '/css/common.css' ) );
    wp_enqueue_style( 'fonts', get_stylesheet_directory_uri() . '/css/fonts.css', array(), filemtime( get_stylesheet_directory() . '/css/fonts.css' ) );
    wp_enqueue_style( 'utils', get_stylesheet_directory_uri() . '/css/utils.css', array(), filemtime( get_stylesheet_directory() . '/css/utils.css' ) );
    wp_enqueue_style( 'ddl_menu', get_stylesheet_directory_uri() . '/css/ddl_menu.css', array(), filemtime( get_stylesheet_directory() . '/css/ddl_menu.css' ) );
    wp_enqueue_style( 'table', get_stylesheet_directory_uri() . '/css/table.css', array(), filemtime( get_stylesheet_directory() . '/css/table.css' ) );
    wp_enqueue_style( 'sidebar', get_stylesheet_directory_uri() . '/css/sidebar.css', array(), filemtime( get_stylesheet_directory() . '/css/sidebar.css' ) );
    wp_enqueue_style( 'd3', get_stylesheet_directory_uri() . '/css/d3.css', array(), filemtime( get_stylesheet_directory() . '/css/d3.css' ) );
    wp_enqueue_style( 'popup', get_stylesheet_directory_uri() . '/css/popup.css', array(), filemtime( get_stylesheet_directory() . '/css/popup.css' ) );
    wp_enqueue_style( 'print', get_stylesheet_directory_uri() . '/css/print.css', array(), filemtime( get_stylesheet_directory() . '/css/print.css' ) );
    wp_enqueue_style( 'images', get_stylesheet_directory_uri() . '/css/images.css', array(), filemtime( get_stylesheet_directory() . '/css/images.css' ) );
    wp_enqueue_style( 'accordion', get_stylesheet_directory_uri() . '/css/accordion.css', array(), filemtime( get_stylesheet_directory() . '/css/accordion.css' ) );
    wp_enqueue_style( 'page', get_stylesheet_directory_uri() . '/css/page.css', array(), filemtime( get_stylesheet_directory() . '/css/page.css' ) );
    wp_enqueue_style( 'beta', get_stylesheet_directory_uri() . '/css/beta.css', array(), filemtime( get_stylesheet_directory() . '/css/beta.css' ) );
    wp_enqueue_style( 'tooltip', get_stylesheet_directory_uri() . '/css/tooltip.css', array(), filemtime( get_stylesheet_directory() . '/css/tooltip.css' ) );
    wp_enqueue_style( 'tutorial', get_stylesheet_directory_uri() . '/css/tutorial.css', array(), filemtime( get_stylesheet_directory() . '/css/tutorial.css' ) );
    wp_enqueue_style( 'tablesorter', get_stylesheet_directory_uri() . '/css/tablesorter.css', array(), filemtime( get_stylesheet_directory() . '/css/tablesorter.css' ) );
    wp_enqueue_style( 'centreforcities', get_stylesheet_directory_uri() . '/css/centreforcities.css', array(), filemtime( get_stylesheet_directory() . '/css/centreforcities.css' ) );
    
    wp_enqueue_style( 'tool', get_stylesheet_directory_uri() . '/css/app/tool.css', array(), filemtime( get_stylesheet_directory() . '/css/app/tool.css' ) );
    wp_enqueue_style( 'popup_box', get_stylesheet_directory_uri() . '/css/app/popup_box.css', array(), filemtime( get_stylesheet_directory() . '/css/app/popup_box.css' ) );
    wp_enqueue_style( 'interbox', get_stylesheet_directory_uri() . '/css/app/interbox.css', array(), filemtime( get_stylesheet_directory() . '/css/app/interbox.css' ) );
    wp_enqueue_style( 'filters', get_stylesheet_directory_uri() . '/css/app/filters.css', array(), filemtime( get_stylesheet_directory() . '/css/app/filters.css' ) );
    wp_enqueue_style( 'main', get_stylesheet_directory_uri() . '/css/app/main.css', array(), filemtime( get_stylesheet_directory() . '/css/app/main.css' ) );
    wp_enqueue_style( 'contents', get_stylesheet_directory_uri() . '/css/app/contents.css', array(), filemtime( get_stylesheet_directory() . '/css/app/contents.css' ) );
    wp_enqueue_style( 'guides', get_stylesheet_directory_uri() . '/css/app/guides-alt.css', array(), filemtime( get_stylesheet_directory() . '/css/app/guides-alt.css' ) );
    wp_enqueue_style( 'export', get_stylesheet_directory_uri() . '/css/app/export.css', array(), filemtime( get_stylesheet_directory() . '/css/app/export.css' ) );
    wp_enqueue_style( 'description', get_stylesheet_directory_uri() . '/css/app/description.css', array(), filemtime( get_stylesheet_directory() . '/css/app/description.css' ) );
    wp_enqueue_style( 'plain', get_stylesheet_directory_uri() . '/css/app/plain.css', array(), filemtime( get_stylesheet_directory() . '/css/app/plain.css' ) );
    wp_enqueue_style( 'report', get_stylesheet_directory_uri() . '/css/app/report.css', array(), filemtime( get_stylesheet_directory() . '/css/app/report.css' ) );
    
    // roadmap
//    wp_enqueue_style( 'layout_road', get_stylesheet_directory_uri() . '/roadmap/css/layout.css', array(), filemtime( get_stylesheet_directory() . '/roadmap/css/layout.css' ) );
//    wp_enqueue_style( 'graph', get_stylesheet_directory_uri() . '/roadmap/css/graph.css', array(), filemtime( get_stylesheet_directory() . '/roadmap/css/graph.css' ) );
//    wp_enqueue_style( 'info', get_stylesheet_directory_uri() . '/roadmap/css/info.css', array(), filemtime( get_stylesheet_directory() . '/roadmap/css/info.css' ) );
//    wp_enqueue_style( 'intro', get_stylesheet_directory_uri() . '/roadmap/css/intro.css', array(), filemtime( get_stylesheet_directory() . '/roadmap/css/intro.css' ) );
//    
//    wp_enqueue_style( 'tool_road', get_stylesheet_directory_uri() . '/roadmap/css/tool.css', array(), filemtime( get_stylesheet_directory() . '/roadmap/css/tool.css' ) );
    
        wp_enqueue_style( 'vertical_road', get_stylesheet_directory_uri() . '/roadmap/css/vertical_road.css', array(), filemtime( get_stylesheet_directory() . '/roadmap/css/vertical_road.css' ) );
 
}

add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_styles' );

function my_theme_enqueue_scripts() {
    $parent_script = 'parent-script';

    wp_enqueue_script('child-script',
        get_stylesheet_directory_uri().'/js/main.js',
        array('jquery'),
        wp_get_theme()->get('Version')
    );
 
    wp_enqueue_script( 'jquerybase', get_stylesheet_directory_uri() . '/js/jquery/jquery-3.1.1.min.js');
    wp_enqueue_script( 'jquery64', get_stylesheet_directory_uri() . '/js/jquery/jquery.base64.js');
    
    wp_enqueue_script('jquery');
    
    wp_enqueue_script( 'html_docx', get_stylesheet_directory_uri() . '/js/external/html-docx.js', array('jquery') );
    wp_enqueue_script( 'jspdf', get_stylesheet_directory_uri() . '/js/external/jspdf.min.js', array('jquery') );
    wp_enqueue_script( 'validator', get_stylesheet_directory_uri() . '/js/external/jquery-validation/dist/jquery.validate.js', array('jquery') );
    wp_enqueue_script( 'additional', get_stylesheet_directory_uri() . '/js/external/additional-methods.js', array('jquery') );
    wp_enqueue_script( 'chosen', get_stylesheet_directory_uri() . '/js/external/chosen/chosen.jquery.js', array('jquery') );
    wp_enqueue_script( 'chosen_proto', get_stylesheet_directory_uri() . '/js/external/chosen/chosen.proto.js', array('jquery') );
    wp_enqueue_script( 'sweetalert', get_stylesheet_directory_uri() . '/js/external/sweetalert2.min.js', array('jquery') );
    wp_enqueue_script( 'table2word', get_stylesheet_directory_uri() . '/js/external/html2docx.js', array('jquery') );
    wp_enqueue_script( 'layout', get_stylesheet_directory_uri() . '/js/layout.js', array('jquery') );
    wp_enqueue_script( 'gen', get_stylesheet_directory_uri() . '/js/gen.js', array('jquery') );
    wp_enqueue_script( 'html2canvas', get_stylesheet_directory_uri() . '/js/external/html2canvas.js', array('jquery') );
    wp_enqueue_script( 'html2docx', get_stylesheet_directory_uri() . '/js/external/html2docx.min.js', array('jquery') );
    
    wp_enqueue_script( 'table2png', get_stylesheet_directory_uri() . '/js/html2img.js' , array('jquery'));
    
    wp_enqueue_script( 'tablesorter', get_stylesheet_directory_uri() . '/js/external/tablesorter/tablesorter.js', array('jquery') );
    wp_enqueue_script( 'images', get_stylesheet_directory_uri() . '/js/images.js', array('jquery') );
    wp_enqueue_script( 'popup', get_stylesheet_directory_uri() . '/js/openPopup.js', array('jquery') );
    
    wp_enqueue_script( 'filesaver', get_stylesheet_directory_uri() . '/js/external/FileSaver.js', array('jquery') );
    wp_enqueue_script( 'wordexport', get_stylesheet_directory_uri() . '/js/external/jquery.wordexport.js', array('jquery') );
    
    wp_enqueue_script( 'main', get_stylesheet_directory_uri() . '/js/app/main.js', array('jquery') );
    wp_enqueue_script( 'filters', get_stylesheet_directory_uri() . '/js/app/filters.js', array('jquery') );
    wp_enqueue_script( 'guide', get_stylesheet_directory_uri() . '/js/app/guide.js', array('jquery') );
    wp_enqueue_script( 'tutorial', get_stylesheet_directory_uri() . '/js/tutorial.js', array('jquery') );
    wp_enqueue_script( 'description', get_stylesheet_directory_uri() . '/js/app/description.js', array('jquery') );
    wp_enqueue_script( 'interbox', get_stylesheet_directory_uri() . '/js/app/interbox.js', array('jquery') );
    
    // roadmap
//    wp_enqueue_script( 'example', get_stylesheet_directory_uri() . '/roadmap/js/example.js', array('jquery') );
//    wp_enqueue_script( 'road_main', get_stylesheet_directory_uri() . '/roadmap/js/main.js', array('jquery') );
//    wp_enqueue_script( 'road', get_stylesheet_directory_uri() . '/roadmap/js/road.js', array('jquery') );
    
    wp_enqueue_script( 'vertical_road', get_stylesheet_directory_uri() . '/roadmap/js/vertical_road.js', array('jquery') );
    
}

add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_scripts' );

add_action('init', 'do_output_buffer');
function do_output_buffer() {
     ob_start();
}

//add_filter('show_admin_bar', '__return_false');

remove_filter( 'the_content', 'wpautop' );

//add_action('init','no_admin_init',0);

?>
