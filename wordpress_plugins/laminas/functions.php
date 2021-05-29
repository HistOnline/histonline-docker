<?php

// Adicionar scripts para rodar no dashboard
$hook_list_laminas = array(
    "toplevel_page_laminas",
    "laminas_page_lamina-criar",
    "laminas_page_lamina-editar"
);

function plugin_laminas_add_scripts_0125($hook) {
    global $hook_list_laminas;
    if( !in_array($hook, $hook_list_laminas) ) return;
    wp_enqueue_script('plugin_laminas_datatables', plugins_url('/js/DataTables/datatables.js', __FILE__), array('jquery'), '1.0', true);
    // Enqueue WordPress media scripts
    wp_enqueue_media();
    wp_enqueue_script('plugin_laminas_main_script', plugins_url('/js/main.js', __FILE__), array('jquery', 'jquery-ui-autocomplete', 'wp-color-picker' ), '1.0', true);
}
add_action('admin_enqueue_scripts', 'plugin_laminas_add_scripts_0125');

function plugin_laminas_add_style_2354($hook) {
    global $hook_list_laminas;
    if( !in_array($hook, $hook_list_laminas) ) return;
    wp_enqueue_style( 'wp-color-picker' );
    wp_enqueue_style('plugin_laminas_datatables', plugins_url('/css/DataTables/datatables.css', __FILE__));
    wp_enqueue_style('plugin_laminas_main_style', plugins_url('/css/main.css', __FILE__));
}
add_action( 'admin_enqueue_scripts', 'plugin_laminas_add_style_2354' );

include_once(plugin_dir_path( __FILE__ ) . 'ajax.php');

function custom_upload_mimes( $mimes = array() ) {
    $mimes['svg'] = 'image/svg';
    return $mimes;
}
add_filter( 'upload_mimes', 'custom_upload_mimes' );

include_once( plugin_dir_path( __FILE__ ) . 'rest_api_users.php' );

?>