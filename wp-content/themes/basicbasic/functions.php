<?php 
#define TPL_DIR_URI
define('TPL_DIR_URI', get_template_directory_uri()); 
//Add css files 
function svh_enqueue_styles() { 
    wp_enqueue_style( 'bootstrap', TPL_DIR_URI . '/assets/vendor/bootstrap/css/bootstrap.min.css' );
    wp_enqueue_style( 'core', TPL_DIR_URI . '/style.css' ); 
} 
add_action( 'wp_enqueue_scripts', 'svh_enqueue_styles');
//Add js files 
function svh_enqueue_scripts() { 
    wp_enqueue_script( 'popper', TPL_DIR_URI . '/assets/vendor/popper/popper.min.js', ['jquery']); 
    wp_enqueue_script( 'bootstrap', TPL_DIR_URI . '/assets/vendor/bootstrap/js/bootstrap.min.js', ['jquery']); 
} 
add_action( 'wp_enqueue_scripts', 'svh_enqueue_scripts'); 

//add new menu
function register_svh_menus() {
    register_nav_menus([
        'main-menu' => __( 'Main Menu' )
    ]);
}
add_action('init', 'register_svh_menus');

//define TPL_DIR, link to folder
define('TPL_DIR',  get_stylesheet_directory());

// Register Custom Navigation Walker
function register_navwalker(){
	require_once TPL_DIR . '/inc/class-wp-bootstrap-navwalker.php';
}
add_action( 'after_setup_theme', 'register_navwalker' );

//sidebar
function svh_widgets_init() {

	register_sidebar(
		[
			'name'          => 'Footer',
			'id'            => 'sidebar-footer',
			'description'   => 'Add widgets here to appear in your footer.',
			'before_widget' => '<div id="%1$s" class="col-12 col-lg-4 footer-widget %2$s">',
			'after_widget'  => '</div>',
			'before_title'  => '<h2 class="footer-widget__title">',
			'after_title'   => '</h2>',
        ]
    );

    register_sidebar(
		[
			'name'          => 'Sidebar',
			'id'            => 'sidebar-main',
			'description'   => 'Add widgets here to appear in your sidebar.',
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
        ]
	);

}
add_action( 'widgets_init', 'svh_widgets_init' );

//Add image for post
// add_action( 'save_post', 'it60s_set_featured_image' );
// function it60s_set_featured_image() {
//     if ( ! isset( $GLOBALS['post']->ID ) )
//         return NULL;        
//     if ( has_post_thumbnail( get_the_ID() ) )
//         return NULL;            
//         $args = array(
//             'numberposts'    => 1,
//             'order'          => 'ASC', // DESC for the last image
//             'post_mime_type' => 'image',
//             'post_parent'    => get_the_ID(),
//             'post_status'    => NULL,
//             'post_type'      => 'attachment'
//         );          
//         $attached_image = get_children( $args );
//         if ( $attached_image ) {
//             foreach ( $attached_image as $attachment_id => $attachment )
//                 set_post_thumbnail( get_the_ID(), $attachment_id );
//         }           
// }

//custom logo
function themename_custom_logo_setup() {
	$defaults = array(
	'height'      => 50,
	'width'       => 50,
	'flex-height' => true,
	'flex-width'  => true,
	'header-text' => array( 'site-title', 'site-description' ),
   'unlink-homepage-logo' => true, 
);
	add_theme_support( 'custom-logo', $defaults );
}
add_action( 'after_setup_theme', 'themename_custom_logo_setup' );
add_image_size( 'custom-size', 50, 50, true ); 