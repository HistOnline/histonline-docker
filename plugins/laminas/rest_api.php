<?php

include_once(plugin_dir_path(__FILE__) . 'models/materia.php');


/* ----------
  API REST para GET de lâminas
---------- */

add_action('rest_api_init', function () {
  register_rest_route('laminas/v1', '/laminas(?:/(?P<slug>[a-zA-Z0-9-]+))?', array(
    'methods' => 'GET',
    'callback' => 'get_laminas',
  ));
});

function get_laminas($data)
{
  global $wpdb;

  if (isset($data['slug'])) {
    $laminas = $wpdb->get_results("SELECT * FROM {$wpdb->prefix}laminas WHERE `slug` = '{$data['slug']}' ORDER BY `nome` ASC");
  } else {
    $laminas = $wpdb->get_results("SELECT * FROM {$wpdb->prefix}laminas WHERE `b_del` = 0 ORDER BY `nome` ASC");
  }

  $materiasO = new Materia;
  $materias = $materiasO->get();
  foreach ($materias as $materia) {
    $materia->ID = intval($materia->ID);
    $materia->laminas = array();
  }

  foreach ($laminas as $lamina) {
    $lamina->ID = intval($lamina->ID);
    $lamina->ID_materia = intval($lamina->ID_materia);
    $lamina->materia = $materiasO->get($lamina->ID_materia);

    $lamina_post_id = intval($lamina->imagem);
    $lamina->imagem = wp_get_attachment_image_src($lamina_post_id, 'full');

    if ($lamina->mascaras) {
      $mascaras = json_decode($lamina->mascaras);
      foreach ($mascaras as $mascara) {
        $mascara_post_id = $mascara->post;
        $mascara->vector = wp_get_attachment_image_src($mascara_post_id, 'full')[0];
      }
      $lamina->mascaras = $mascaras;
    }


    if (isset($data['slug'])) {
      $retorno = $lamina;
    } else {

      foreach ($materias as $materia) {
        $materia->nome = $materia->materia;
        if (intval($materia->ID == $lamina->ID_materia)) {
          array_push($materia->laminas, $lamina);
        }
      }

      unset($lamina->mascaras);
      unset($lamina->ID_materia);
      unset($lamina->descricao);
      unset($lamina->coloracao);
      unset($lamina->aumento);
      unset($lamina->imagem);
      unset($lamina->materia);

      $retorno = $materias;
    }
  }

  return $retorno;

}
