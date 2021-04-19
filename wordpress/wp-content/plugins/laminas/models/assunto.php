<?php
    class Assunto {
        function get($id){
            global $wpdb;
            if(isset($id)){
                return $wpdb->get_row("SELECT * FROM {$wpdb->prefix}laminas_assuntos WHERE ID = $id");
            }else{
                return $wpdb->get_results("SELECT * FROM {$wpdb->prefix}laminas_assuntos");
            }
        }

        function get_from_materias($materia_id){
            global $wpdb;
            return $wpdb->get_results("SELECT * FROM {$wpdb->prefix}laminas_assuntos WHERE ID_materia = $materia_id");
        }
    }
?>