<?php

/*
Plugin Name: Lâminas
Plugin URI: https://wordpress.com
Description: Um plugin criado para gerenciar as lâminas do projeto do atlas de histologia online da UFBA, HistOnline
Version: 0.1
Author: Filipe Lopes
Author URI: https://filipelopes.me
License: CC BY-NC 3.0 BR
Text Domain: laminas
*/

// Functions
include_once( plugin_dir_path( __FILE__ ) . 'functions.php' );

// API WP
include_once( plugin_dir_path( __FILE__ ) . 'rest_api.php' );

// Roles and capabilities for plugin
include_once( plugin_dir_path( __FILE__ ) . 'roles_cap.php' );

// Ação de executar o admin_menu no core do WORDPRESS 
add_action('admin_menu', 'menu_laminas');

function menu_laminas(){
    global $wpdb;
    global $wp_roles;

    $menu_slug = "laminas";
    $capability = "laminas";

    // Adiciona menu na barra lateral
    
    /* add_menu_page( 
        string $page_title, 
        string $menu_title, 
        string $capability, 
        string $menu_slug, 
        callable $function = '', 
        string $icon_url = '', 
        int $position = null ) */
    add_menu_page( 
        'Gerenciador de Lâminas', 
        'Lâminas', 
        $capability , 
        $menu_slug , 
        'mostrar_laminas' , 
        'dashicons-search', 
        20 );

    /* add_submenu_page( 
        string $parent_slug, 
        string $page_title, 
        string $menu_title, 
        string $capability, 
        string $menu_slug, 
        callable $function = '' ) */
    add_submenu_page( 
        $menu_slug , 
        'Inserir nova lâmina', 
        'Adicionar nova lâmina', 
        $capability , 
        'lamina-criar', 
        'adicionar_lamina' );

    add_submenu_page( 
        $menu_slug , 
        'Editar lâmina existente', 
        'Editar lâmina', 
        $capability, 
        'lamina-editar', 
        'editar_lamina' );
    
    /** Cria tabela de matérias para associação */
    $sql = "CREATE TABLE IF NOT EXISTS `{$wpdb->prefix}laminas_materias` (
        `ID` INT( 11 ) NOT NULL ,
        `materia` VARCHAR( 50 ) NOT NULL ,
        PRIMARY KEY ( `ID` )
        ) ENGINE = INNODB CHARACTER SET utf8 COLLATE utf8_general_ci, AUTO_INCREMENT=1";
    
    $wpdb->query($sql);

    /** Cria tabela de laminas para associação */
    // $sql = "CREATE TABLE IF NOT EXISTS `{$wpdb->prefix}laminas_materias` (
    //     `ID` INT( 11 ) NOT NULL ,
    //     `materia` VARCHAR( 50 ) NOT NULL ,
    //     PRIMARY KEY ( `ID` )
    //     ) ENGINE = INNODB CHARACTER SET utf8 COLLATE utf8_general_ci, AUTO_INCREMENT=1";

}

function mostrar_laminas(){
    include('pagina_principal.php');
}

function adicionar_lamina(){
    include('criar.php');
}

function editar_lamina(){
    include('editar.php');
}
