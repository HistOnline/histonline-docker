<?php
    class Materia {
        function get($id){
            global $wpdb;
            if(isset($id)){
                return $wpdb->get_row("SELECT * FROM {$wpdb->prefix}laminas_materias WHERE ID = $id");
            }else{
                return $wpdb->get_results("SELECT * FROM {$wpdb->prefix}laminas_materias");
            }
        }
    }
?>