<?php
/**
 * Plugin Name:       Call to Action Block - WPPOOL
 * Plugin URI:        https://block-cta.wppool.dev/
 * Description:       Call to action WordPress gutenberg block with extended customization and flexible setting options
 * Version:           1.0.0
 * Author:            WPPOOL
 * Author URI:        https://wppool.dev
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       cta-gutenberg
 * Requires at least: 5.0
 * Tested up to: 	  5.5
 *
  * CTAGutenberg Blocks
  * @since CTAGutenberg 1.0
  * @package cta-gutenberg
*/

if (! defined('ABSPATH')) {
    exit;
}

define('CTAGB_VERSION', '1.0.0');
define('CTAGB__FILE__', __FILE__);
define('CTAGB_DIR_PATH', plugin_dir_path(CTAGB__FILE__));
define('CTAGB_FILE_PATH', plugin_dir_path(__FILE__));
define('CTAGB_URL', plugins_url('', __FILE__));
define('CTAGB_DIR_URL', plugin_dir_url(__FILE__));

function cta_gutenberg_begin() {
    if (! function_exists('register_block_type')) {
        function cta_gutenberg_required_gutenberg() {
            deactivate_plugins(plugin_basename(__FILE__));       
            if (isset($_GET['activate'])) { unset($_GET['activate']); }
        }
       
        add_action('admin_init', 'cta-gutenberg_required_gutenberg');
        add_action('admin_notices', 'cta-gutenberg_required_gutenberg_notice');
    }
 
    include_once CTAGB_DIR_PATH . 'init.php';
    CTAGutenberg::instance();
}

add_action('plugins_loaded', 'cta_gutenberg_begin', 20);

function cta_gutenberg_required_gutenberg_notice() { ?>
    <div class="error"><p><?php esc_html_e('CTAGutenberg deactivated! It need WordPress version higher than 5.0.0 or ', 'cta-gutenberg'); ?> <a href="https://wordpress.org/plugins/gutenberg/"><?php esc_html_e('Gutenberg', 'cta-gutenberg'); ?></a> <?php esc_html_e(' plugin to run.', 'cta-gutenberg'); ?></p></div>
<?php }
