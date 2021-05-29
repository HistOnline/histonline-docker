<?php

require_once( $_SERVER['DOCUMENT_ROOT'] . '/adm/wp-load.php' );
include_once( plugin_dir_path( __FILE__ ) . 'hash.php' );

    class User {
        function get(){
            global $wpdb;
            return $wpdb->get_results("SELECT * FROM {$wpdb->prefix}users");
        }

        function user($user){
            global $wpdb;
            return $wpdb->get_row("SELECT ID, user_login as user, user_pass as pass FROM {$wpdb->prefix}users WHERE user_login = \"{$user}\" ");
        }

        function auth($id){
            $hash = new Hash;
            return $hash->create($id);
        }

        function check($hash){
            global $wpdb;
            return $hash->check($hash);
        }
    }
?>