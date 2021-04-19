<?php

add_action('wp_ajax_myprefix_get_image', 'myprefix_get_image');
function myprefix_get_image()
{
    if (isset($_GET['id'])) {
        $image = wp_get_attachment_image(filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT), 'large', false, array('id' => 'myprefix-preview-image'));
        $data = array(
            'image'    => $image,
        );
        wp_send_json_success($data);
    } else {
        wp_send_json_error();
    }
}

include_once(plugin_dir_path(__FILE__) . 'models/assunto.php');
add_action('wp_ajax_get_assuntos', 'get_assuntos');
function get_assuntos()
{
    if (isset($_GET['materia_id'])) {
        $assunto = new Assunto;
        wp_send_json_success($assunto->get_from_materias($_GET['materia_id']));
    } else {
        wp_send_json_error();
    }
}

include_once(plugin_dir_path(__FILE__) . 'models/lamina.php');
add_action('wp_ajax_get_slugs_array', 'get_slugs_array');
function get_slugs_array()
{
    $lamina = new Lamina;
    wp_send_json_success($lamina->get_slugs_list());
}
