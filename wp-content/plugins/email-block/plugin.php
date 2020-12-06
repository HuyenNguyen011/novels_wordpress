<?php
/**
* Plugin Name: Simple Plugin
* Author: Team 10
* Version: 1.1.0
*/

function loadMyBlock() {
    wp_enqueue_script('my_new_block', plugin_dir_url(__FILE__) . 'email-block.js', array('wp-blocks', 'wp-editor'), true);
}
add_action('enqueue_block_editor_assets', 'loadMyBlock');