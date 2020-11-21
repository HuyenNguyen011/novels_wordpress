<html lang="vi"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta http-equiv="X-UA-Compatible" content="ie=edge"> <title><?php get_bloginfo('title') ?></title> 
<?php wp_head(); ?>
<link rel="stylesheet" href="<?php get_template_directory_uri() ?>/wordpress-w2/wp-content/themes/basicbasic/style.css"/>
</head> 
<body> 
<header>
    <div id="topbar">
        <div class="container">
            <div class="row">
                <div class="col slogan">My Novel Website</div>
                <div class="col topbar-email text-right">
                    <a href="https://drive.google.com/drive/folders/12Ap7n5mBvlSUnQAnhcDJ9eBbD9vd6IoK">Nhom10@hotmail.com</a>
                </div>
                
            </div>            
        </div>       
    </div>
    <nav class="navbar navbar-expand-md navbar-light bg-light" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="logo">
            <?php 
            if ( function_exists( 'the_custom_logo' ) ) {
                the_custom_logo();
            }
            $custom_logo_id = get_theme_mod( 'custom_logo' );
            $logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
        
            if ( has_custom_logo() ) {
                echo `<img src="` . esc_url( `$logo&#91;0&#93;`) . `" alt="` . get_bloginfo( 'name' ) . `">`;
            } else {
                echo '<h1>'. get_bloginfo( 'name' ) .'</h1>';
            }?>
            </div>
            
            <?php
                wp_nav_menu([
                    'theme_location'    => 'main-menu',
                    'depth'             => 2,
                    'container'         => 'div',
                    'container_class'   => 'collapse navbar-collapse',
                    'container_id'      => 'main-menu',
                    'menu_class'        => 'nav navbar-nav',
                    'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
                    'walker'            => new WP_Bootstrap_Navwalker(),
                ]);
            ?>
            </div>
      </nav>
</header>