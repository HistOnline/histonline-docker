<?php

require_once( $_SERVER['DOCUMENT_ROOT'] . '/adm/wp-load.php' );

    class Lamina {
        function get($id){
            global $wpdb;
            if(isset($id)){
                return $wpdb->get_row("SELECT * FROM {$wpdb->prefix}laminas WHERE ID = $id");
            }else{
                return $wpdb->get_results("SELECT * FROM {$wpdb->prefix}laminas WHERE b_del = 0");
            }
        }
        
        function get_slugs_list() {
            global $wpdb;
            $slugs = $wpdb->get_results("SELECT slug FROM {$wpdb->prefix}laminas WHERE b_del = 0");
            $slugs_list = [];
            foreach ($slugs as $slug) {
                array_push($slugs_list, $slug->slug);
            }
            return $slugs_list;
        }
    }
?>