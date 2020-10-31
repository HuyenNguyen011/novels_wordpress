<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'w2' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '+^}ZpzdS%4c}V_weCyd8aRfG>&XRSEZXt451Qp78-Iwh?E!Mk,BKsATO:pDzL#Y>' );
define( 'SECURE_AUTH_KEY',  'QzA+3K;{r;yuj750L9+![sN_G$ZN{A.m_{=%U>4aBHIe;b&r`.5JA;m[n$)wy{LV' );
define( 'LOGGED_IN_KEY',    'db3agxu@<nfFz.mF8dO_8w,>XE=e!/HS%hEgv~Nr)t61B|vx*yD5l5ro$K==jL*6' );
define( 'NONCE_KEY',        'dzt4Vpoc`B|Ci+h,R=kq_)La~Z3*j7}q2{b^Pmsjs%I}jF#Gl8]54l8bAd;c0uSJ' );
define( 'AUTH_SALT',        'W*&1Cd?V,U`(l ;dD9#9Pu-K%uC@8UiVY<UP^9Xj6)54!+v~mqj/#w$ljue]cGEK' );
define( 'SECURE_AUTH_SALT', 'I2b`[zU-yQvhl+v6?qpyD9(dT,{#}SVnEbUz*Sq1cR=s`EZ2^_alf7e8[9VXNs<x' );
define( 'LOGGED_IN_SALT',   'od-x>z3Tjf:{)SV3_r4dwam2h:XeSs=I9HQcBkU.NcD6F<v,q;:{Uad 3;0wA%!{' );
define( 'NONCE_SALT',       '0~{+V)/&=NeIGx.D{+Aj~&fs#J4{%|jj81b5sZu1*>nQ*> ?Vx_$)AHD-Hyq9ei}' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
