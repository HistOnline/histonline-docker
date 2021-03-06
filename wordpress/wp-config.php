<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'histonlinedb' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'histonlinemng' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', 'histonlinemn6!12!17' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'mysql_prod08.intranet.ufba.br' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '5C<j_?5+aBRG4)YXoX~*H[C?+TQQnzZX%o_dy~7&UU?v&VaeMuE?~xLu,#e5_7zk' );
define( 'SECURE_AUTH_KEY',  '+04U*&c$l1=[E[5Jiu#[G2G2Y,KynHCFN|U.dCcg2H(|XK{XZsyeVvI?/%0X{Sk!' );
define( 'LOGGED_IN_KEY',    '9K$/oPkb7DS|4Om{Q>IFQar>aIDc(;>=7e/]!~eST$vYq> &Z)a_b-l;gz?+syn6' );
define( 'NONCE_KEY',        'GKRn}+58?5a8io>X_1]f`7$XH:i.*HcZ]qxwow/^p`r6fCg[y!nke;q.?XKJB?6E' );
define( 'AUTH_SALT',        'b|f!H7%Pt;[#:O`nT9Hu}U~2R_~l#L>j pN0N?S$=k~QZPc1Ii1lH`UCsu#t6Ure' );
define( 'SECURE_AUTH_SALT', 'mo#0wqEXgnt;z:IDYFgd&E{bJXz#dpX6`XfbNZMs<XiSEv9iW.s+4@6#tPe)BS:&' );
define( 'LOGGED_IN_SALT',   '_E$%`GWKTX#RR`hF3}!vg+T7LEk62ci#},}%dvk&lN,Vj:Hd?^0lJ*Z3V3:-x{n$' );
define( 'NONCE_SALT',       'Q$TwgJoS;[&3+b%I;?UJ|v^N03R9*4h1>wDb1db-?|Tt/om~_{ohn:F#TM-@JdPh' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', true);
define( 'ALLOW_UNFILTERED_UPLOADS', true );

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
