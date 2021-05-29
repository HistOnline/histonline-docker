-- phpMyAdmin SQL Dump
-- version 2.11.8.1deb5+lenny9
-- http://www.phpmyadmin.net
--
-- Servidor: mysql_prod08.intranet.ufba.br
-- Tempo de Geração: Mar 31, 2020 as 02:18 AM
-- Versão do Servidor: 5.7.18
-- Versão do PHP: 5.2.6-1+lenny16

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Banco de Dados: `histonlinedb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-04 00:07:35', '2019-12-04 02:07:35', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_duplicator_packages`
--

CREATE TABLE IF NOT EXISTS `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `wp_duplicator_packages`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_laminas`
--

CREATE TABLE IF NOT EXISTS `wp_laminas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_materia` int(11) NOT NULL,
  `ID_assunto` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `coloracao` varchar(200) NOT NULL,
  `aumento` int(4) NOT NULL,
  `imagem` int(11) NOT NULL,
  `detalhes` text NOT NULL,
  `mascaras` text NOT NULL,
  `b_del` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `slug` (`slug`),
  KEY `ID_materia` (`ID_materia`),
  KEY `ID_assunto` (`ID_assunto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Extraindo dados da tabela `wp_laminas`
--

INSERT INTO `wp_laminas` (`ID`, `ID_materia`, `ID_assunto`, `nome`, `slug`, `descricao`, `coloracao`, `aumento`, `imagem`, `detalhes`, `mascaras`, `b_del`) VALUES
(3, 1, 4, 'Esfregaço de sangue – eritrócitos e plaquetas', 'exemplo-1', 'Observam-se diversas hemácias (eritrócitos), células anucleadas que exibemcitoplasma fortemente acidófilo, devido à hemoglobina, com região central clara indicativade formato bicôncavo. Notam-se também oito plaquetas, corpúsculos anucleados ebiconvexos que são fragmentos do citoplasma de megacariócitos, grandes células denúcleo multilobulado que emitem prolongamentos pelas fenestras dos capilaressinusóides para formação e liberação das plaquetas na corrente sanguínea.Diferentemente do que se observa neste preparado, os referidos corpúsculosapresentam-se geralmente em aglomerados. Uma discreta presença de plasmalevemente acidófilo é perceptível em quase todo o campo microscópico.', 'Romanowsky modificada', 1000, 99, '[{"id":1,"top":"25","left":"55","width":"15","height":"15","slug":"esfregaco-de-sangue-4"}]', '', 1),
(4, 1, 0, 'Esfregaço de sangue – eritrócitos e plaquetas	', 'exemplo-2', 'Aqui vao as @hemaceas e as @plaquetas ', 'Romanowsky modificada', 1000, 7, '', '', 1),
(5, 1, 2, 'Esfregaço de sangue – eritrócitos e plaquetas', 'esfregaco-de-sangue', 'Observam-se diversas @hemacias (eritrócitos), células anucleadas que exibem citoplasma fortemente acidófilo, devido à hemoglobina, com região central clara indicativa de formato bicôncavo. Notam-se também oito @plaquetas , corpúsculos anucleados e biconvexos que são fragmentos do citoplasma de megacariócitos, grandes células de núcleo multilobulado que emitem prolongamentos pelas fenestras dos capilares sinusóides para formação e liberação das plaquetas na corrente sanguínea.Diferentemente do que se observa neste preparado, os referidos corpúsculos apresentam-se geralmente em aglomerados. Uma discreta presença de plasma levemente acidófilo é perceptível em quase todo o campo microscópico.', 'Romanowsky modificada', 1000, 7, '', '[{"id":1,"post":"42","title":"Hemácias","alias":"hemacias","description":"Algumas hemáceas sobrepostas e outras livres com sua região central com menos cor, devido ao seu formato e menor espessura no centro","color":"#1e73be"},{"id":2,"post":"43","title":"Plaquetas","alias":"plaquetas","description":"Plaquetas são como pedaços de algo maior, os megacariócitos, seu precursor","color":"#6410b7"}]', 0),
(8, 1, 2, 'Esfregaço de sangue - eritrócitos, plaquetas e eosinófilo', 'esfregaco-de-sangue-3', 'Observam-se diversas @hemacias  (eritrócitos), células anucleadas que exibem citoplasma fortemente acidófilo, devido à hemoglobina, com região central clara indicativa de formato bicôncavo. Destaque-se, no entanto, que o campo microscópico mostra muitas áreas de @hemacias  sobrepostas. Para a análise adequada das referidas células, é importante que sejam eleitas áreas do esfregaço de sangue com ausência de sobreposição entre elas. Notam-se também oito @plaquetas , corpúsculos anucleados e biconvexos que são fragmentos do citoplasma de megacariócitos, grandes células de núcleo multilobulado que emitem prolongamentos pelas fenestras dos capilares sinusóides para formação e liberação das plaquetas na corrente sanguínea. Diferentemente do que se observa neste preparado, os referidos corpúsculos apresentam-se geralmente em aglomerados. Por fim, é notável a presença de um @eosinofilo , com grânulos específicos (secundários) acidófilos e núcleo bilobulado e excêntrico.', 'Romanowsky modificada', 1000, 16, '', '[{"id":1,"post":"44","title":"Eosinófilo","alias":"eosinofilo","description":"É notável a presença de um eosinófilo, com grânulos específicos (secundários) acidófilos e núcleo bilobulado e excêntrico","color":"#6a286d"},{"id":2,"post":"45","title":"Hemácias","alias":"hemacias","description":"Observam-se diversas hemácias (eritrócitos) sobrepostas, células anucleadas que exibem citoplasma fortemente acidófilo, devido á hemoglobina, com região central clara indicativa de formato bicôncavo. ","color":"#1fc1c6"},{"id":3,"post":"46","title":"Plaquetas","alias":"plaquetas","description":"Notam-se também oito plaquetas, corpúsculos anucleados e biconvexos que são fragmentos do citoplasma de megacariócitos, grandes células de núcleo multilobulado que emitem prolongamentos pelas fenestras dos capilares sinusóides para formação e liberação das plaquetas na corrente sanguínea","color":"#601404"}]', 0),
(9, 1, 2, 'esfregaço de sangue - eritrócitos, plaquetas e linfócito ', 'esfregaco-de-sangue-4', 'Observam-se diversas @hemacias (eritrócitos), células anucleadas que exibem citoplasma fortemente acidófilo, devido à hemoglobina, com região central clara indicativa de formato bicôncavo. Destaque-se, no entanto, que o campo microscópico mostra muitas áreas de @hemacias sobrepostas. Para a análise adequada das referidas células, é importante que sejam eleitas áreas do esfregaço de sangue com ausência de sobreposição entre elas. Notam-se também oito @plaquetas , corpúsculos anucleados e biconvexos que são fragmentos do citoplasma de megacariócitos, grandes células de núcleo multilobulado que emitem prolongamentos pelas fenestras dos capilares sinusóides para formação e liberação das plaquetas na corrente sanguínea. Diferentemente do que se observa neste preparado, os referidos corpúsculos apresentam-se geralmente em aglomerados. Uma discreta presença de plasma levemente acidófilo é perceptível em quase todo o campo microscópico. Ademais, observa-se a presença de um @linfocito , o menor dentre os leucócitos, com diâmetro comparável ao de uma hemácia, exibindo um núcleo esférico e intensamente basófilo que ocupa quase toda a célula, ficando uma pequena porção de citoplasma azurófilo desprovido de grânulos específicos (secundários).', 'Romanowsky modificada', 1000, 21, '', '[{"id":1,"post":"47","title":"Hemácias","alias":"hemacias","description":"Observam-se diversas hemácias (eritrócitos), células anucleadas que exibem citoplasma fortemente acidófilo, devido à hemoglobina, com região central clara indicativa de formato bicôncavo, sobrepostas.","color":"#0166bf"},{"id":2,"post":"48","title":"Plaquetas","alias":"plaquetas","description":"Notam-se também oito plaquetas, corpúsculos anucleados e biconvexos que são fragmentos do citoplasma de megacariócitos, grandes células de núcleo multilobulado que emitem prolongamentos pelas fenestras dos capilares sinusóides para formação e liberação das plaquetas na corrente sanguínea","color":"#8d0bea"},{"id":3,"post":"49","title":"Linfócito","alias":"linfocito","description":"observa-se a presença de um linfócito, o menor dentre os leucócitos, com diâmetro comparável ao de uma hemácia, exibindo um núcleo esférico e intensamente basófilo que ocupa quase toda a célula, ficando uma pequena porção de citoplasma azurófilo desprovido de grânulos específicos (secundários)","color":"#4c0319"}]', 0),
(10, 1, 2, 'Esfregaço de sangue – eritrócitos, plaquetas e neutrófilo', 'esfregaco-de-sangue-5', 'Observam-se diversas @hemacias  (eritrócitos), células anucleadas que exibem citoplasma fortemente acidófilo, devido à hemoglobina, com região central clara indicativa de formato bicôncavo. Destaque-se, no entanto, que o campo microscópico mostra muitas áreas de @hemacias sobrepostas. Para a análise adequada das referidas células, é importante que sejam eleitas áreas do esfregaço de sangue com ausência de sobreposição entre elas. Notam-se também quatro @plaquetas , corpúsculos anucleados e biconvexos que são fragmentos do citoplasma de megacariócitos, grandes células de núcleo multilobulado que emitem prolongamentos pelas fenestras dos capilares sinusóides para formação e liberação das plaquetas na corrente sanguínea. Diferentemente do que se observa neste preparado, os referidos corpúsculos apresentam-se geralmente em aglomerados. Uma discreta presença de plasma levemente acidófilo é perceptível em quase todo o campo microscópico. Um @neutrofilo também é perceptível, exibindo citoplasma com grânulos específicos (secundários) discretos e na cor salmon, e @nucleo  segmentado geralmente com 3 a 5 lóbulos unidos por finas pontes de cromatina.', 'Romanowsky modificada', 1000, 40, '', '[{"id":1,"post":"50","title":"Hemácias","alias":"hemacias","description":" células anucleadas que exibem citoplasma fortemente acidófilo, devido à hemoglobina, com região central clara indicativa de formato bicôncavo","color":"#2a6f9e"},{"id":2,"post":"51","title":"Plaquetas","alias":"plaquetas","description":"Notam-se também quatro plaquetas, corpúsculos anucleados e biconvexos que são fragmentos do citoplasma de megacariócitos, grandes células de núcleo multilobulado que emitem prolongamentos pelas fenestras dos capilares sinusóides para formação e liberação das plaquetas na corrente sanguínea. ","color":"#420282"},{"id":3,"post":"52","title":"Neutrófilo","alias":"neutrofilo","description":" exibindo citoplasma com grânulos específicos (secundários) discretos e na cor salmon","color":"#63001a"},{"id":4,"post":"53","title":"Núcleo ","alias":"nucleo ","description":"geralmente com 3 a 5 lóbulos unidos por finas pontes de cromatina","color":"#af3a36"}]', 0),
(11, 1, 2, 'Medula hematógena', 'medula-hematogena', 'Nota-se a medula hematógena preenchendo espaços intercomunicantes entre @trabeculas_osseas  do osso esponjoso desmineralizado. A medula hematógena caracteriza-se pela predominância de células em diferentes estágios de diferenciação na hematopoese, não distinguíveis nesta magnificação (células-tronco pluripotentes e multipotentes, unidades formadoras de colônias, hemocitoblastos e células já completamente diferenciadas, como megacariócito, hemácia e neutrófilo). Ademais, o mencionado tecido exibe células reticulares (fibroblastos estrelados, com diversos prolongamentos que se comunicam por junções comunicantes e produzem uma matriz extracelular com proteoglicanos, glicosaminoglicanos e muitas fibras reticulares não coradas por HE). Devido à riqueza em fibras reticulares, a medula hematógena, ativa na formação de células e elementos figurados do sangue, também é chamada de tecido reticular. Nela, notam-se também adipócitos diferenciados a partir de células reticulares ou de células mesenquimais indiferenciadas (mecanismo ainda não muito bem esclarecido). Capilares descontínuos sinusóides deste tecido recebem os elementos do sangue aí produzidos. As @trabeculas_osseas desmineralizadas mostram lacunas com corpos celulares de osteócitos pouco preservados e matriz orgânica acidófila devido à sua constituição de 95% de colágeno tipo I.', 'HE', 40, 29, '', '[{"id":2,"post":"54","title":"Trabéculas Ósseas","alias":"trabeculas_osseas","description":"As trabéculas ósseas desmineralizadas mostram lacunas com corpos celulares de osteócitos pouco preservados e matriz orgânica acidófila devido à sua constituição de 95% de colágeno tipo I","color":"#60baac"}]', 0),
(12, 1, 2, 'Medula hematógena - megacariócito', 'medula-hematogena-megacariocito', 'Observa-se a medula hematógena com células em diferentes estágios de diferenciação na hematopoese. Dentre elas, apenas uma pode ser identificada de modo confiável: o @megacariocito , grande, com núcleo multilobulado, cujos prolongamentos que penetram pelas fenestras dos capilares sinusóides aí presentes são fragmentados para formação das plaquetas.', 'HE', 400, 30, '', '[{"id":1,"post":"55","title":"Megacariócito","alias":"megacariocito","description":"grande, com núcleo multilobulado, cujas prolongamentos que penetram pelas fenestras dos capilares sinusóides aí presentes são fragmentos para formação das plaquetas.","color":"#7c1f87"}]', 0),
(13, 1, 2, 'Medula amarela', 'medula-amarela', 'Nota-se a medula amarela preenchendo espaços intercomunicantes entre @trabeculas_osseas do osso esponjoso desmineralizado. A medula amarela caracteriza-se pela predominância @adipocitos e resquícios de medula hematógena associados ao predominante @tecido_adiposo unilocular. A medula amarela pode ser revertida à medula hematógena quando há necessidade de hematopoese aumentada, como após grandes hemorragias. As trabéculas ósseas desmineralizadas mostram lacunas com corpos celulares de osteócitos pouco preservados e matriz orgânica acidófila devido à sua constituição de 95% de colágeno tipo I.', 'HE', 40, 31, '', '[{"id":1,"post":"56","title":"Adipócitos","alias":"adipocitos","description":"A medula amarela caracteriza-se pela predominância adipócitos e","color":"#ffe607"},{"id":2,"post":"57","title":"Medula hematogênica","alias":"medula_hematogenica","description":"Parte ainda de medula hmatogênica com os precussores celular","color":"#774d1c"},{"id":3,"post":"58","title":"Tecido Adiposo Unilocular","alias":"tecido_adiposo","description":"A medula amarela caracteriza-se pela predominância adipócitos e resquícios de medula hematógena associados ao predominante tecido adiposo unilocular.","color":"#d1a300"},{"id":4,"post":"59","title":"Trabéculas Ósseas","alias":"trabeculas_osseas","description":"esmineralizadas mostram lacunas com corpos celulares de osteócitos pouco preservados e matriz orgânica acidófila devido à sua constituição de 95% de colágeno tipo I.","color":"#3f7d7f"}]', 0),
(14, 1, 3, 'Coração - miocárdio ventricular e fibra de Purkinje', 'coracao-miocardio', 'O preparado permite a observação apenas do @miocardio_ventricular e @fibra_de_purkinje (segmento próximo à sua extremidade distal, que penetra como garra no miocárdio ventricular). As células musculares cardíacas contráteis exibem forte acidofilia citoplasmática devido à riqueza em mitocôndrias e miofibrilas, estas constituídas por proteínas filamentosas contráteis básicas. @discos_intercalares característicos do músculo cardíaco também são perceptíveis. As grandes células musculares cardíacas modificadas que constituem as fibras de Purkinje mostram fraca acidofilia citoplasmática devido à expressiva quantidade de glicogênio e maior acidofilia na periferia citoplasmática, onde ocorre maior concentração de miofibrilas.', 'HE', 200, 32, '', '[{"id":1,"post":"62","title":"Miocárdio ventricular","alias":"miocardio_ventricular","description":"","color":"#40d679"},{"id":2,"post":"63","title":"Fibra de Purkinje","alias":"fibra_de_purkinje","description":"segmento próximo à sua extremidade distal, que penetra como garra no miocárdio ventricular","color":"#175863"},{"id":3,"post":"64","title":"Discos intercalares","alias":"discos_intercalares","description":"característicos do músculo cardíaco também são perceptíveis","color":"#9e7a3d"}]', 0),
(15, 1, 3, 'Miocárdio ventricular e epicárdio', 'miocardio-ventricular-e-epicardio', 'Observam-se @miocardio e @epicardio . O miocárdio é constituído basicamente por células musculares cardíacas contráteis com forte acidofilia citoplasmática, dispostas em várias direções. O epicárdio, também conhecido como o pericárdio visceral, é a camada mais externa da parede do coração, composta por tecido conjuntivo denso fibroelástico e tecido conjuntivo frouxo contendo vasos, feixes de fibras nervosas e áreas de tecido adiposo unilocular.', 'HE', 100, 33, '', '[{"id":1,"post":"65","title":"Miocárdio","alias":"miocardio","description":"é constituído basicamente por células musculares cardíacas contráteis com forte acidofilia citoplasmática, dispostas em várias direções.","color":"#100059"},{"id":2,"post":"66","title":"Epicárdio","alias":"epicardio","description":" também conhecido como o pericárdio visceral, é a camada mais externa da parede do coração, composta por tecido conjuntivo denso fibroelástico e tecido conjuntivo frouxo contendo vasos","color":"#5e80f2"}]', 0),
(16, 1, 3, 'Artéria elástica - túnicas íntima e média', 'arteria-elastica-tunicas-intima-e-media', 'Neste corte, parte da parede da artéria aorta mostra revestimento interno de @endotelio (epitélio simples pavimentoso) de difícil visualização apoiado em uma camada @subendotelial de tecido conjuntivo frouxo. A @tunica_media bem desenvolvida é constituída principalmente por membranas (lâminas) elásticas fenestradas concêntricas que exibem moderada acidofilia. Não é possível identificar a membrana limitante elástica interna.', 'HE', 40, 34, '', '[{"id":1,"post":"67","title":"Túnica média","alias":"tunica_media","description":"onstituída principalmente por membranas (lâminas) elásticas fenestradas concêntricas que exibem moderada acidofilia.","color":"#3f3f12"},{"id":2,"post":"68","title":"endotélio","alias":"endotelio","description":"","color":"#100744"},{"id":3,"post":"69","title":"subendotelial","alias":"subendotelial","description":"","color":"#ad3e70"}]', 0),
(17, 1, 3, 'Artéria elástica - túnicas íntima e média 100x', 'arteria-elastica-tunicas', '2Neste corte, parte da parede da artéria aorta mostra revestimento interno de endotelio (epitélio simples pavimentoso) de difícil visualização apoiado em uma camada @subendotelial de tecido conjuntivo frouxo. A @tunica_media  bem desenvolvida é constituída principalmente por membranas (lâminas) elásticas fenestradas concêntricas que exibem moderada acidofilia. Não é possível identificar a membrana limitante elástica interna. Os núcleos perceptíveis na túnica média são de células musculares lisas.', 'HE', 100, 35, '', '[{"id":1,"post":"70","title":"endotélio","alias":"endotelio","description":"","color":"#d15173"},{"id":2,"post":"71","title":"subendotelial","alias":"subendotelial","description":"","color":"#dd7356"},{"id":3,"post":"72","title":"Túnica média","alias":"tunica_media","description":"bem desenvolvida é constituída principalmente por membranas (lâminas) elásticas fenestradas concêntricas que exibem moderada acidofilia.","color":"#46697a"}]', 0),
(18, 1, 3, 'Artéria elástica túnica média e adventícia ', 'arteria-elastica-5', 'Neste corte, parte da parede da artéria aorta mostra túnicas @media e @adventicia . A túnica adventícia é constituída por tecido conjuntivo frouxo, contendo fibras elásticas aqui não coradas e colágenas acidófilas, com presença de @vasa_vasorum e @nervi_vasorum . Não é possível identificar a membrana limitante elástica externa.', 'HE', 40, 36, '', '[{"id":1,"post":"73","title":"Túnica Média","alias":"media","description":"","color":"#0c3000"},{"id":2,"post":"74","title":"Túnica Adventícia","alias":"adventicia","description":"constituída por tecido conjuntivo frouxo, contendo fibras elásticas aqui não coradas e colágenas acidófilas","color":"#62db55"},{"id":3,"post":"75","title":"Vasa vasorum","alias":"vasa_vasorum","description":"","color":"#b70030"},{"id":4,"post":"76","title":"nervi vasorum","alias":"nervi_vasorum","description":"","color":"#c3ff00"}]', 0),
(19, 1, 3, 'Artéria muscular - túnicas íntima e média', 'arteria-muscular-1', 'A @tunica_intima exibe @endotelio apoiado em uma delgada faixa de @tecido_conjuntivo_frouxo . Separando as túnicas íntima e média, nota-se a @membrana_limitante_elastica_interna bem definida, acidófila e com aspecto ondulado. A @tunica_media apresenta uma camada espessa de músculo liso.', 'HE', 40, 37, '', '[{"id":3,"post":"79","title":"túnica íntima","alias":"tunica_intima","description":"","color":"#82aa6b"},{"id":4,"post":"80","title":"endotélio","alias":"endotelio","description":"","color":"#9b2e22"},{"id":5,"post":"81","title":"tecido conjuntivo frouxo","alias":"tecido_conjuntivo_frouxo","description":"","color":"#0d004f"},{"id":6,"post":"82","title":"membrana limitante elastica interna","alias":"membrana_limitante_elastica_interna","description":"","color":"#d6409c"},{"id":7,"post":"83","title":"túnica media","alias":"tunica_media","description":"","color":"#253d00"}]', 0),
(20, 1, 3, 'Artéria muscular - túnicas íntima e média 200x', 'arteria-muscular-2', 'A @tunica_intima exibe @endotelio apoiado em uma delgada faixa de @tecido_conjuntivo frouxo. Separando as túnicas íntima e média, nota-se a @membrana_limitante_elastica_interna bem definida, acidófila e com aspecto ondulado. A @tunica_media apresenta uma camada espessa de músculo liso.', 'HE', 200, 38, '', '[{"id":3,"post":"84","title":"endotélio","alias":"endotelio","description":"","color":"#7a2f6f"},{"id":4,"post":"85","title":"membrana limitante elastica interna","alias":"membrana_limitante_elastica_interna","description":"","color":"#5a53d6"},{"id":5,"post":"86","title":"tecido conjuntivo","alias":"tecido_conjuntivo","description":"","color":"#348741"},{"id":6,"post":"87","title":"túnica íntima","alias":"tunica_intima","description":"","color":"#968b37"},{"id":7,"post":"88","title":"túnica média","alias":"tunica_media","description":"","color":"#9add56"}]', 0),
(21, 1, 3, 'Artéria muscular - túnicas média e advertícia ', 'arteria-muscular-3', 'Separando as túnicas @media e @adventicia , há uma membrana limitante elástica externa que não está visível neste corte. A túnica adventícia mostra de tecido conjuntivo frouxo, com fibras colágenas acidófilas e elásticas não coradas, @vasa_vasorum e @nervi_vasorum .', 'HE', 40, 39, '', '[{"id":1,"post":"89","title":"nervi vasorum","alias":"nervi_vasorum","description":"","color":"#63fffc"},{"id":2,"post":"90","title":"Túnica média","alias":"media","description":"","color":"#aeb245"},{"id":3,"post":"91","title":"túnicas adventícia","alias":"adventicia","description":"","color":"#365387"},{"id":4,"post":"92","title":"vasa vasorum","alias":"vasa_vasorum","description":"","color":"#ef003f"}]', 0),
(22, 1, 4, 'Traqueia - mucosa respiratória, submucosa e placa de cartilagem ', 'traqueia-mucosa', 'Nota-se o @epitelio_pseudoestratificado_ciliado (respiratório) apoiado em um tecido conjuntivo frouxo e bem vascularizado ( @lamina_propria ). A submucosa mostra tecido conjuntivo denso não modelado e muitas @glandulas_seromucosas . Algumas células @adiposas_uniloculares são também observadas na @submucosa , que é contínua com o @pericondrio do anel de @cartilagem_hialina , observado em parte no canto inferior direito do corte em análise.', 'HE', 40, 93, '', '[{"id":1,"post":"110","title":"cartilagem hialina","alias":"cartilagem_hialina","description":"","color":"#dd9933"},{"id":2,"post":"111","title":"adiposas uniloculares","alias":"adiposas_uniloculares","description":"","color":"#070405"},{"id":3,"post":"112","title":"epitélio pseudoestratificado ciliado","alias":"epitelio_pseudoestratificado_ciliado","description":"","color":"#eded82"},{"id":4,"post":"113","title":"glândulas seromucosas ","alias":"glandulas_seromucosas","description":"","color":"#325119"},{"id":5,"post":"114","title":"Lâmina própria","alias":"lamina_propria","description":"","color":"#d8546a"},{"id":6,"post":"115","title":"pericondrio","alias":"pericondrio","description":"","color":"#4fbac6"},{"id":7,"post":"116","title":"submucosa","alias":"submucosa","description":"","color":"#271d4c"}]', 0),
(23, 1, 4, 'Traqueia - epitélio respiratório', 'traqueia-epitelio', 'Este corte evidencia em grande magnitude o @epitelio_respiratorio apoiado sobre a @lamina_propria . Notam-se no epitélio as três células nele mais numerosas: @basais , @ciliadas e @caliciformes . A lâmina própria caracteriza-se por um tecido conjuntivo frouxo com diversos vasos sanguíneos da microcirculação, no qual é notável também a presença de fibroblastos e células do sistema imunológico, especialmente linfócitos e plasmócitos. ', 'HE', 200, 94, '[]', '[{"id":1,"post":"117","title":"Células basais","alias":"basais","description":"","color":"#add802"},{"id":2,"post":"118","title":"Células caliciformes","alias":"caliciforme","description":"","color":"#5d7def"},{"id":3,"post":"119","title":"Células ciliadas","alias":"ciliadas","description":"","color":"#d60039"},{"id":4,"post":"120","title":"Epitélio respiratório","alias":"epitelio_respiratorio","description":"","color":"#e28258"},{"id":5,"post":"121","title":"Lâmina própria","alias":"lamina_propria","description":"própria caracteriza-se por um tecido conjuntivo frouxo com diversos vasos sanguíneos da microcirculação, no qual é notável também a presença de fibroblastos e células do sistema imunológico, especialmente linfócitos e plasmócitos.","color":"#2a5d72"}]', 0),
(24, 1, 4, 'Brônquio intrapulmonar em corte transversal - epitélio respiratório, lâmina própria, músculo liso, s', 'bronquio-intrapulmonar', 'Observa-se o @epitelio_pseudoestratificado_ciliado (respiratório) moderadamente preservado pela técnica de processamento histológico empregada. Este epitélio apoia-se uma lâmina própria bem vascularizada que exibe fibroblastos e linfócitos. Uma camada descontínua de @musculo_liso separa a lâmina própria da submucosa, aqui formada por tecido que varia de frouxo a denso não modelado em algumas áreas. A submucosa sustenta glândulas seromucosas de difícil identificação neste aumento devido ao expressivo número de linfócitos que formam nódulos característicos do @tecido_linfoide_associado_aos_bronquios (BALT, do inglês bronchus-associated lymphoid tissue). A submucosa é unida ao pericôndrio das placas irregulares de @cartilagem_hialina da camada adventícia. ', 'HE', 40, 95, '', '[{"id":1,"post":"122","title":"cartilagem hialina","alias":"cartilagem_hialina","description":"","color":"#c760f7"},{"id":2,"post":"123","title":"Epitélio Pseudoestratificado Ciliado ","alias":"epitelio_pseudoestratificado_ciliado","description":"","color":"#d6784d"},{"id":3,"post":"124","title":"Músculo Liso","alias":"musculo_liso","description":"","color":"#dee059"},{"id":4,"post":"125","title":"Tecido Linfóide associado aos brônquios","alias":"tecido_linfoide_associado_aos_bronquios","description":"","color":"#bada55"}]', 0),
(25, 1, 4, 'Parede de brônquio intrapulmonar', 'parede-de-bronquio', 'Notam-se @epitelio_respiratorio de revestimento interno do brônquio, @lamina_propria , @musculo_liso descontínuo no corte (devido à sua organização em espiral), @submucosa sustentando @glandulas_seromucosas e @nodulo_linfoide , e placas irregulares de @cartilagem_hialina .  ', 'HE', 100, 97, '', '[{"id":1,"post":"126","title":"Epitélio respiratório","alias":"epitelio_respiratorio","description":"","color":"#dd6a6a"},{"id":2,"post":"127","title":"Lâmina própria","alias":"lamina_propria","description":"","color":"#227513"},{"id":3,"post":"128","title":"Músculo Liso","alias":"musculo_liso","description":"","color":"#c44ca6"},{"id":4,"post":"129","title":"Submucosa","alias":"submucosa","description":"","color":"#8c9339"},{"id":5,"post":"130","title":"Glândulas seromucosas","alias":"glandulas_seromucosas","description":"","color":"#5a97e8"},{"id":6,"post":"131","title":"nódulo linfóide","alias":"nodulo_linfoide","description":"","color":"#963a68"},{"id":7,"post":"132","title":"cartilagem hialina","alias":"cartilagem_hialina","description":"","color":"#5a2868"}]', 0),
(26, 1, 4, 'Pulmão - alvéolos e bronquílo', 'pulmao-alveolos', 'Observa-se o parênquima pulmonar normal com @alveolos íntegros e algumas áreas com maior quantidade de @tecido_conjuntivo_fibroelastico sustentando vasos sanguíneos maiores. Estas áreas com maior quantidade de tecido conjuntivo delimitam os segmentos broncopulmonares, que são limites importantes a serem considerados por cirurgiões torácicos. Os @espacos_aereos são delimitados por @septos_interalveolares delgados formados por tecido conjuntivo frouxo bem vascularizado e revestido em ambos os lados por pneumócitos tipo I, em uma microarquitetura com aspecto de colmeia. Os capilares sanguíneos presentes nos septos interalveolares forma a maior rede capilar do organismo humano responsável pelas trocas gasosas que viabilizam a oxigenação do sangue e eliminação do gás carbônico, caracterizando a respiração externa. O aspecto de colmeia é claramente perdido em processos patológicos como enfisema pulmonar decorrente do tabagismo, havendo um expressivo aumento do tamanho dos espaços aéreos em decorrência da degradação dos septos interalveolares, o que compromete em grande medida a respiração externa. ', 'HE', 40, 96, '[]', '[{"id":1,"post":"133","title":"Alvéolos","alias":"alveolos","description":"","color":"#49a5c6"},{"id":2,"post":"134","title":"Tecido Conjuntivo Fibroelástico","alias":"tecido_conjuntivo_fibroelastico","description":"","color":"#af7a44"},{"id":3,"post":"135","title":"Espaços Aéreos","alias":"espacos_aereos","description":"","color":"#726f29"},{"id":4,"post":"136","title":"Septos Interalveolares","alias":"septos_interalveolares","description":"","color":"#3d9e48"}]', 0),
(27, 1, 4, 'Pulmão - alvéolos e bronquíolos', 'pulmao-alveolos2', 'Os @bronquiolos apresentam-se revestidos internamente por epitélio simples que pode variar de cilíndrico a cúbico, com células caliciformes que podem aparecer em pequeno número ou mesmo estarem ausentes. O epitélio está apoiado sobre uma delgada faixa de lâmina própria (não visualizada) adjacente a uma camada contínua de @musculo_liso circularmente orientado e bem desenvolvido. Notam-se aqui também @arterias_musculares e @alveolos . ', 'HE', 40, 98, '', '[{"id":1,"post":"143","title":"Bronquíolos","alias":"bronquiolos","description":"apresentam-se revestidos internamente por epitélio simples que pode variar de cilíndrico a cúbico, com células caliciformes que podem aparecer em pequeno número ou mesmo estarem ausentes","color":"#71b245"},{"id":2,"post":"144","title":"Músculo liso","alias":"musculo_liso","description":"","color":"#3ea07f"},{"id":3,"post":"145","title":"Artérias musculares","alias":"arterias_musculares","description":"","color":"#4261aa"},{"id":4,"post":"146","title":"Alvéolos","alias":"alveolos","description":"","color":"#d653cb"}]', 0),
(28, 1, 4, 'Alvéolos pulmonares - septos interalveolares e espaços aéreos', 'Alveolos-pulmonares', ' @espacos_aereos delimitados por @septos_interalveolares delgados ftecido_conjuntivo frouxo bem vascularizado e revestido em ambos os lados por @pneumocitos_tipo_I . Estas células são pavimentosas e revestem aproximadamente 90% da superfície interna dos alvéolos. O @pneumocitos_tipo_II , células globosas de núcleo esférico, localizam-se geralmente no encontro de dois septos interalveolares, revestem em torno de 10% da superfície interna dos alvéolos e produzem a substância surfactante pulmonar, que diminui a tensão superficial dos alvéolos evitando o colabamento de suas paredes na expiração. Neste corte, notamos ainda uma área com maior quantidade de tecido conjuntivo entre os alvéolos, exibindo um @macrofago e sustentando uma pequena @veia , na qual estão bem preservados @plasma sanguíneo e @hemacias . ', 'HE', 400, 99, '', '[{"id":1,"post":"142","title":"Espaços aéreos","alias":"espacos_aereos","description":"","color":"#fcf262"},{"id":2,"post":"147","title":"Septos interalveolares","alias":"septos_interalveolares","description":"","color":"#ea002e"},{"id":3,"post":"148","title":"Tecido conjuntivo","alias":"tecido_conjuntivo","description":"","color":"#63ff66"},{"id":4,"post":"149","title":"Pneumócitos tipo I","alias":"pneumocitos_tipo_I","description":"","color":"#62fca2"},{"id":5,"post":"150","title":"Pneumócitos tipo II","alias":"pneumocitos_tipo_II","description":"","color":"#50ce63"},{"id":6,"post":"151","title":"Macrófago","alias":"macrofago","description":"","color":"#47b781"},{"id":7,"post":"152","title":"Veia","alias":"veia","description":"","color":"#007a2a"},{"id":8,"post":"153","title":"Plasma","alias":"plasma","description":"","color":"#274900"},{"id":9,"post":"154","title":"Hemácias","alias":"hemacias","description":"","color":"#2f3513"}]', 0),
(29, 1, 4, 'Alvéolos pulmonares - macrófago alveolar ou célula de poeira ', 'Alveolos-pulmonares2', 'Observam-se espaços aéreos e septos interalveolares bem vascularizados, núcleos de pneumócitos tipos @I e @II , e um @macrofago_alveolar no centro do campo microscópico. ', 'HE', 400, 100, '', '[{"id":1,"post":"139","title":"Alvéolos","alias":"alveolos","description":"","color":"#51311f"},{"id":2,"post":"140","title":"Macrófago Alveolar","alias":"macrofago_alveolar","description":"","color":"#9b3461"},{"id":3,"post":"141","title":"Pneumócitos I","alias":"I","description":"","color":"#50cece"},{"id":4,"post":"194","title":"Pneumócitos II","alias":"II","description":"","color":"#46b58a"}]', 0),
(30, 1, 4, 'Alvéolos e pleura visceral', 'alveolos-pleura', 'Externamente, o pulmão mostra uma faixa mais robusta de tecido conjuntivo fibroelástico revestida por um mesotélio (epitélio simples pavimentoso), conhecida como @pleura_visceral . Esta é contínua com a pleura parietal, que reveste a cavidade torácica e seus mesotélios delimitam a cavidade pleural. ', 'HE', 100, 193, '', '[{"id":1,"post":"137","title":"Alvéolos","alias":"alveolos","description":"","color":"#3c9b98"},{"id":2,"post":"138","title":"Pleura visceral","alias":"pleura_visceral","description":"","color":"#7ee057"}]', 0),
(31, 1, 1, 'Mucosa do ureter', 'mucosa-do-ureter', 'Nota-se aqui pregueado o @epitelio_de_transicao que reveste internamente o ureter e cujas células superficiais modificam sua morfologia conforme a distensão do órgão. Abaixo do epitélio, há uma extensa @lamina_propria bem vascularizada. As túnicas muscular e adventícia não estão evidentes neste campo microscópico. ', 'HE', 100, 101, '', '[{"id":1,"post":"155","title":"Epitélio de transição","alias":"epitelio_de_transicao","description":"que reveste internamente o ureter e cujas células superficiais modificam sua morfologia conforme a distensão do órgão","color":"#5ee559"},{"id":2,"post":"156","title":"Lâmina própria","alias":"lamina_propria","description":"","color":"#a7d804"}]', 0),
(32, 1, 1, 'Camada muscular da parede do ureter', 'camada-muscular-da-parede-do-ureter', 'Observa-se a camada muscular da parede do ureter, formada por camadas de músculo liso dispostas em espiral e dessa forma exibindo feixes de células musculares em cortes @longitudinal e @transversal unidos por @tecido_conjuntivo que varia de frouxo a denso. Circundando a parede muscular, há uma adventícia constituída de tecido conjuntivo frouxo contendo vasos, nervos e células adiposas, aqui não visualizada. ', 'HE', 100, 102, '', '[{"id":1,"post":"157","title":"Feixes de células musculares em corte longitudinal","alias":"longitudinal","description":"","color":"#515e10"},{"id":2,"post":"158","title":"feixes de células musculares em corte transversal","alias":"transversal","description":"","color":"#08513f"},{"id":3,"post":"159","title":"Tecido conjuntivo","alias":"tecido_conjuntivo","description":"","color":"#d10202"}]', 0),
(33, 1, 1, 'Córtex renal', 'cortex-renal', 'O rim é um órgão com forma de grão de feijão, sendo constituído por uma cápsula de tecido conjuntivo e pelas zonas cortical e medular. Aqui, em pequeno aumento, notamos um corte da zona cortical do rim exibindo quatro @corpusculos_renais e @tubulos_contorcidos proximais e distais (de difícil distinção neste aumento), sustentados por um escasso tecido conjuntivo frouxo e bem vascularizado, o interstício renal. ', 'HE', 40, 103, '', '[{"id":1,"post":"160","title":"Corpúsculos renais","alias":"corpusculos_renais","description":"","color":"#233500"},{"id":2,"post":"161","title":"Túbulos contorcidos","alias":"tubulos_contorcidos","description":"","color":"#3d2500"}]', 0),
(34, 1, 1, 'Córtex renal - corpúsculo renal, túbulos contorcidos proximais e distais', 'cortex-renal-corpusculo-renal', 'Notam-se três @corpusculos_renais (dois deles parcialmente seccionados na extremidade direita do campo microscópico) e túbulos contorcidos @proximais e @distais . Entre as mencionadas estruturas, é possível identificar o @intersticio_renal bem vascularizado. O corpúsculo renal é formado pelo glomérulo (rede capilar entre duas arteríolas, uma aferente e outra eferente) envolvido pela cápsula de Bowman, que exibe um @folheto_parietal (formado por um epitélio simples pavimentoso que conduz o filtrado glomerular ao túbulo contorcido proximal) e um @folheto_visceral (constituído por podócitos cujos prolongamentos secundários apoiam-se na membrana glomerular, uma barreira de filtração constituída por uma lâmina basal espessa entre as células endoteliais glomerulares e os podócitos). Entre os podócitos e as células endoteliais, estão ainda presentes células mesangiais intraglomerulares produtoras de uma matriz extracelular de sustentação e contráteis em resposta à angiotensina II (registre-se aqui que o fator natriurético atrial estimula o relaxamento delas). Entre o folheto parietal e os podócitos da cápsula de Bowman nota-se o @espaco_capsular . Apesar de observarmos claramente as hemácias presentes nos capilares, não distinguimos bem neste aumento os núcleos de células endoteliais, podócitos e células mesangiais. O @tubulo_contorcido_proximal apresenta epitélio cúbico simples, com células grandes e intensamente acidófilas no citoplasma, enquanto que o @tubulo_contorcido_distal apresenta células menores e com citoplasma menos acidófilo. Nas proximidades do corpúsculo renal, o túbulo contorcido distal apresenta um segmento da sua parede modificado, com células cilíndricas exibindo núcleos mais corados e próximos uns dos outros, a @macula_densa . ', 'HE', 100, 104, '', '[{"id":1,"post":"162","title":"Corpúsculos renais","alias":"corpusculos_renais","description":"","color":"#ed003f"},{"id":2,"post":"163","title":"Túbulos contorcidos proximais","alias":"proximais","description":"","color":"#90ff00"},{"id":3,"post":"164","title":"Túbulo contorcidos distais","alias":"distais","description":"","color":"#edd500"},{"id":4,"post":"165","title":"interstício renal","alias":"intersticio_renal","description":"","color":"#1f263f"},{"id":5,"post":"166","title":"folheto parietal","alias":"folheto_parietal","description":"","color":"#0a0000"},{"id":6,"post":"167","title":"folheto visceral","alias":"folheto_visceral","description":"","color":"#44001a"},{"id":7,"post":"168","title":"espaço capsular","alias":"espaco_capsular","description":"","color":"#0e3e3f"},{"id":8,"post":"169","title":"Túbulo Contorcido Proximal","alias":"tubulo_contorcido_proximal","description":"","color":"#0066bf"},{"id":9,"post":"170","title":"Túbulo Contorcido Distal","alias":"tubulo_contorcido_distal","description":"","color":"#7100e2"},{"id":10,"post":"171","title":"Mácula densa","alias":"macula_densa","description":"","color":"#dd9323"}]', 0),
(35, 1, 1, 'corpúsculo renal, túbulos contorcidos proximais, túbulo contorcido distal e aparelho justaglomerular', 'corpusculo-renal', 'Observam-se um @corpusculo_renal e túbulos contorcidos proximais e distais. Entre as mencionadas estruturas, é possível identificar o interstício renal bem vascularizado. Identificam-se as hemácias dentro dos capilares glomerulares e também dentro dos capilares peritubulares. São facilmente perceptíveis o @folheto_parietal da @capsula_de_Bowman e o @espaco_capsular . Não são bem distinguíveis também aqui os núcleos células endoteliais, podócitos e células mesangiais do corpúsculo renal. O @tubulo_contorcido_proximal apresenta epitélio cúbico simples, com células grandes e intensamente acidófilas no citoplasma, enquanto que o @tubulo_contorcido_distal apresenta células menores e com citoplasma menos acidófilo. Nas proximidades do corpúsculo renal, o túbulo contorcido distal apresenta um segmento da sua parede modificado, com células cilíndricas exibindo núcleos mais corados e próximos uns dos outros, a @macula_densa . Neste e em outros cortes de córtex renal, notam-se mais túbulos contorcidos proximais do que distais no mesmo campo microscópico. Isto se deve à extensão do proximal, que é bem maior do que a do distal.  ', 'HE', 200, 105, '', '[{"id":1,"post":"172","title":"Corpúsculo renal","alias":"corpusculo_renal","description":"","color":"#898989"},{"id":2,"post":"173","title":"capsula de Bowman","alias":"capsula_de_Bowman","description":"","color":"#721ebc"},{"id":3,"post":"174","title":"espaço capsular","alias":"espaco_capsular","description":"","color":"#eded00"},{"id":4,"post":"175","title":"folheto parietal","alias":"folheto_parietal","description":"","color":"#280f18"},{"id":5,"post":"176","title":"folheto visceral","alias":"folheto_visceral","description":"","color":"#000660"},{"id":6,"post":"177","title":"macula densa","alias":"macula_densa","description":"","color":"#8c6436"},{"id":7,"post":"178","title":"Túbulo Contorcido Distal","alias":"tubulo_contorcido_distal","description":"","color":"#871b37"},{"id":8,"post":"179","title":"Túbulo Contorcido Proximal","alias":"tubulo_contorcido_proximal","description":"","color":"#006b50"}]', 0),
(36, 1, 1, 'Aparelho justaglomerular, túbulos contorcidos proximais e distais, e arteríola aferente', 'aparelho-justaglomerular', 'Notam-se @intersticio_renal ,@capilares_peritubulares , túbulos contorcidos @proximais e @distais , e parte do aparelho justaglomerular (aqui visualizam-se @macula_densa e @arteriola_aferente ).  ', 'HE', 400, 106, '', '[{"id":1,"post":"180","title":"Interstício real","alias":"intersticio_renal","description":"","color":"#8e3784"},{"id":2,"post":"181","title":"Capilares Peritubulares","alias":"capilares_peritubulares","description":"","color":"#027c45"},{"id":3,"post":"182","title":"túbulos contorcidos proximais ","alias":"proximais","description":"","color":"#4b54d1"},{"id":4,"post":"183","title":"túbulos contorcidos distais","alias":"distais","description":"","color":"#ba48a5"},{"id":5,"post":"184","title":"Mácula densa","alias":"macula_densa","description":"","color":"#604a1f"},{"id":6,"post":"185","title":"arteríola aferente","alias":"arteriola_aferente","description":"","color":"#328189"}]', 0),
(37, 1, 1, 'Medula renal - túbulos coletores, alça de Henle e vasos retos', 'medula-renal', 'Medula renal em corte longitudinal, onde são observados a @alca_de_Henle (porção delgada), @tubulos_coletores , interstício renal e @vasos_retos . A porção delgada da alça de Henle pode ser facilmente identificada por apresentar um epitélio pavimentoso simples e não exibir hemácias em sua luz, enquanto que a porção espessa da alça e os túbulos coletores são de difícil diferenciação, já que ambos apresentam epitélio cúbico simples.', 'HE', 200, 107, '', '[{"id":1,"post":"186","title":"alça de Henle","alias":"alca_de_Henle","description":"","color":"#35235b"},{"id":2,"post":"187","title":"Túbulos coletores","alias":"tubulos_coletores","description":"","color":"#406b29"},{"id":3,"post":"188","title":"Vasos Retos","alias":"vasos_retos","description":"","color":"#99813b"}]', 0),
(38, 1, 1, 'Medula renal - túbulos coletores, alça de Henle e vasos retos', 'medula-renal2', 'Medula renal em corte transversal, onde são observados a @alca_de_Henle (porções delgada e espessa), @tubulos_coletores , @intersticio_renal e @vasos_retos . A porção delgada da alça de Henle pode ser facilmente identificada por apresentar um epitélio pavimentoso simples e não exibir hemácias em sua luz, enquanto que a porção espessa da alça e os túbulos coletores são de difícil diferenciação, já que ambos apresentam epitélio cúbico simples.', 'HE', 200, 108, '', '[{"id":1,"post":"189","title":"alça de Henle","alias":"alca_de_Henle","description":"","color":"#3c789b"},{"id":2,"post":"190","title":"Túbulos coletores","alias":"tubulos_coletores","description":"","color":"#8c365b"},{"id":3,"post":"191","title":"interstício renal","alias":"intersticio_renal","description":"","color":"#3e772e"},{"id":4,"post":"192","title":"vasos retos","alias":"vasos_retos","description":"","color":"#e0c757"}]', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_laminas_assuntos`
--

CREATE TABLE IF NOT EXISTS `wp_laminas_assuntos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_materia` int(11) NOT NULL,
  `assunto` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_materia` (`ID_materia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `wp_laminas_assuntos`
--

INSERT INTO `wp_laminas_assuntos` (`ID`, `ID_materia`, `assunto`) VALUES
(1, 1, 'Aparelho Urinário'),
(2, 1, 'Sangue e Medula Óssea'),
(3, 1, 'Sistema Cardiovascular'),
(4, 1, 'Sistema Respiratório');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_laminas_hash`
--

CREATE TABLE IF NOT EXISTS `wp_laminas_hash` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_user` int(11) NOT NULL,
  `hash` varchar(124) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Extraindo dados da tabela `wp_laminas_hash`
--

INSERT INTO `wp_laminas_hash` (`ID`, `ID_user`, `hash`) VALUES
(4, 1, '61cd016afcce5458952864c10a63fcf3'),
(5, 1, '61cd016afcce5458952864c10a63fcf3'),
(6, 1, '61cd016afcce5458952864c10a63fcf3'),
(7, 1, '85b4d570d72ad60dcc174b6c1125c2c1'),
(8, 3, '7c3eedeab09fe34a6ea83f7814ebc782'),
(9, 3, 'fc370b29367d44da3d383c3d583e58cd'),
(10, 1, '4f959d0962e340142179dd552d1ff3ec'),
(11, 1, '3f800df3ef337eaab75cfd9af702f1ad'),
(12, 1, 'c6f313d5f444a8ad462bf5535cb02790'),
(13, 3, 'f795c5d551e5ab2843787c39496906b4'),
(14, 3, 'bf523d724fa974606970b28b795b978c'),
(15, 3, '514758dfa52b86c6b9a3135b9044aeb3'),
(16, 1, '0971dbaec98d0e2323e491a100cfca68'),
(17, 1, '0971dbaec98d0e2323e491a100cfca68'),
(18, 1, '9f4245a99562be1aa9efce5428928426'),
(19, 1, 'e915e99f79bd4dd62de42e8cc8ff0ac6'),
(20, 3, '1cbf693eb688e6930ca8ea71f7d91170'),
(21, 1, 'e83ace21f6b571e2c76df9da99491560'),
(22, 1, 'c91801cc5f739aae0a2da247b851e3b4'),
(23, 3, '77cd20453ae29a822635e795f32fb638'),
(24, 1, '01dfc2a3f0d34818327abbb38eb8c042'),
(25, 1, '23e3d1cab0061968de4e45f715944f52'),
(26, 1, '1226a9f1310d023caf0ad9ca3e6f56a8'),
(27, 1, 'c0ff0dc2932f64b093ea32c00fa585ed'),
(28, 1, 'cb0fc69d5b78af0124c2281dfe996743'),
(29, 1, '76bd479c20e92c4c3d9bc33376437f68'),
(30, 1, '8d5558973ad71b206fb77e162c944a46'),
(31, 1, '7c684baf6a780bd2ebaeccad092e6407'),
(32, 1, 'c87fc2d747bf021872ede3bb19e4a366'),
(33, 1, '529905fca8e6c2e16a42e44409c567e3'),
(34, 1, 'f38e36ae8bd622d9c0b78488432f7036'),
(35, 1, '0c35eafe50bf6951e2463e94df1d9c88'),
(36, 3, '8e18ca2c1884a653c84978db617abe4f'),
(37, 3, 'c005239eafbf949c816d28b72dc06ce9'),
(38, 3, '39287c2af4fe31f47cd0581cd44580d1'),
(39, 3, 'a3e60464980d1e6564057b8be28ef68c'),
(40, 3, '2200e69f508ad2cafa458063d83dbee8');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_laminas_materias`
--

CREATE TABLE IF NOT EXISTS `wp_laminas_materias` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `materia` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `wp_laminas_materias`
--

INSERT INTO `wp_laminas_materias` (`ID`, `materia`) VALUES
(1, 'Histologia IV'),
(2, 'Histologia III');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `wp_links`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1226 ;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://histonline.ics.ufba.br/adm', 'yes'),
(2, 'home', 'http://histonline.ics.ufba.br/adm', 'yes'),
(3, 'blogname', 'HistOnline', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'filiperocklopes@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:74:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:25:"duplicator/duplicator.php";i:1;s:19:"laminas/laminas.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1590977255', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:7:"laminas";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(96, 'fresh_site', '1', 'yes'),
(97, 'WPLANG', 'pt_BR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1584558459;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1584583658;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1584583659;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1584583676;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1584583677;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'theme_mods_twentytwenty', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(133, 'can_compress_scripts', '1', 'no'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'ftp_credentials', 'a:3:{s:8:"hostname";s:26:"www.histonline.ics.ufba.br";s:8:"username";s:12:"lopes.filipe";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(183, 'duplicator_settings', 'a:15:{s:7:"version";s:6:"1.3.24";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:16:"uninstall_tables";b:1;s:13:"package_debug";b:0;s:17:"package_mysqldump";b:1;s:22:"package_mysqldump_path";s:0:"";s:24:"package_phpdump_qrylimit";s:3:"100";s:17:"package_zip_flush";b:0;s:20:"storage_htaccess_off";b:0;s:18:"archive_build_mode";i:2;s:17:"skip_archive_scan";b:0;s:21:"unhook_third_party_js";b:0;s:22:"unhook_third_party_css";b:0;s:17:"active_package_id";i:-1;}', 'yes'),
(184, 'duplicator_version_plugin', '1.3.24', 'yes'),
(201, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:25:"filiperocklopes@gmail.com";s:7:"version";s:5:"5.3.2";s:9:"timestamp";i:1576789111;}', 'no'),
(236, 'recovery_mode_email_last_sent', '1577648793', 'yes'),
(1218, '_site_transient_timeout_theme_roots', '1584554406', 'no'),
(1219, '_site_transient_theme_roots', 'a:3:{s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";}', 'no'),
(1222, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-5.3.2-partial-0.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:3:"5.3";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1584552609;s:15:"version_checked";s:3:"5.3";s:12:"translations";a:0:{}}', 'no'),
(1223, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1584552610;s:7:"checked";a:3:{s:14:"twentynineteen";s:3:"1.4";s:15:"twentyseventeen";s:3:"2.2";s:12:"twentytwenty";s:3:"1.0";}s:8:"response";a:1:{s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.1";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.1.zip";s:8:"requires";b:0;s:12:"requires_php";b:0;}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:12:"twentytwenty";s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"1.0";s:7:"updated";s:19:"2019-12-12 21:53:46";s:7:"package";s:76:"https://downloads.wordpress.org/translation/theme/twentytwenty/1.0/pt_BR.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(1224, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1584552611;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"4.1.3";s:25:"duplicator/duplicator.php";s:6:"1.3.24";s:9:"hello.php";s:5:"1.7.2";s:19:"laminas/laminas.php";s:3:"0.1";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.4";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.4";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:25:"duplicator/duplicator.php";O:8:"stdClass":12:{s:2:"id";s:24:"w.org/plugins/duplicator";s:4:"slug";s:10:"duplicator";s:6:"plugin";s:25:"duplicator/duplicator.php";s:11:"new_version";s:6:"1.3.28";s:3:"url";s:41:"https://wordpress.org/plugins/duplicator/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/duplicator.1.3.28.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921";s:2:"1x";s:63:"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.3.2";s:12:"requires_php";s:6:"5.2.17";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=220 ;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1575485241:1'),
(5, 7, '_wp_attached_file', '2019/12/1.2-Esfregaço-de-sangue-eritrócitos-e-plaquetas-Romanowsky-modificada-1000x.jpg'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:89:"2019/12/1.2-Esfregaço-de-sangue-eritrócitos-e-plaquetas-Romanowsky-modificada-1000x.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:89:"1.2-Esfregaço-de-sangue-eritrócitos-e-plaquetas-Romanowsky-modificada-1000x-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:90:"1.2-Esfregaço-de-sangue-eritrócitos-e-plaquetas-Romanowsky-modificada-1000x-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:89:"1.2-Esfregaço-de-sangue-eritrócitos-e-plaquetas-Romanowsky-modificada-1000x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:89:"1.2-Esfregaço-de-sangue-eritrócitos-e-plaquetas-Romanowsky-modificada-1000x-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:90:"1.2-Esfregaço-de-sangue-eritrócitos-e-plaquetas-Romanowsky-modificada-1000x-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(7, 8, '_wp_attached_file', '2019/12/1.2_plaquetas.svg'),
(8, 9, '_wp_attached_file', '2019/12/1.2_hemaceas.svg'),
(9, 12, '_wp_attached_file', '2020/01/1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x.jpg'),
(10, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:100:"2020/01/1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:100:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:101:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:100:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:100:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:101:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(11, 14, '_wp_attached_file', '2020/01/1_3_hemaceas.svg'),
(12, 15, '_wp_attached_file', '2020/01/1_5_plaquetas.svg'),
(13, 16, '_wp_attached_file', '2020/01/1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-1.jpg'),
(14, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:102:"2020/01/1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-1.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:102:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-1-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:103:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-1-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:102:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:102:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-1-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:103:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-1-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(15, 17, '_wp_attached_file', '2020/01/1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-2.jpg'),
(16, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:102:"2020/01/1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-2.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:102:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-2-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:103:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-2-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:102:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:102:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-2-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:103:"1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-2-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 18, '_wp_attached_file', '2020/01/1_3_eosinofilo.svg'),
(18, 19, '_wp_attached_file', '2020/01/1_3_hemaceas-1.svg'),
(19, 20, '_wp_attached_file', '2020/01/1_3_plaquetas.svg'),
(20, 21, '_wp_attached_file', '2020/01/1.4-Esfregaço-de-sangue-eritrócitos-plaquetas-e-linfócito-Romanowsky-modificada-1000x.jpg'),
(21, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:100:"2020/01/1.4-Esfregaço-de-sangue-eritrócitos-plaquetas-e-linfócito-Romanowsky-modificada-1000x.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:100:"1.4-Esfregaço-de-sangue-eritrócitos-plaquetas-e-linfócito-Romanowsky-modificada-1000x-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:101:"1.4-Esfregaço-de-sangue-eritrócitos-plaquetas-e-linfócito-Romanowsky-modificada-1000x-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:100:"1.4-Esfregaço-de-sangue-eritrócitos-plaquetas-e-linfócito-Romanowsky-modificada-1000x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:100:"1.4-Esfregaço-de-sangue-eritrócitos-plaquetas-e-linfócito-Romanowsky-modificada-1000x-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:101:"1.4-Esfregaço-de-sangue-eritrócitos-plaquetas-e-linfócito-Romanowsky-modificada-1000x-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(22, 22, '_wp_attached_file', '2020/01/1_4_hemaceas.svg'),
(23, 23, '_wp_attached_file', '2020/01/1_3_plaquetas-1.svg'),
(24, 24, '_wp_attached_file', '2020/01/1_4_linfocito.svg'),
(25, 25, '_wp_attached_file', '2020/01/1_5_hemaceas.svg'),
(26, 26, '_wp_attached_file', '2020/01/1_5_plaquetas-1.svg'),
(27, 27, '_wp_attached_file', '2020/01/1_5_neutrofilo.svg'),
(28, 28, '_wp_attached_file', '2020/01/1_5_nucleo.svg'),
(29, 29, '_wp_attached_file', '2020/01/1.6-Medula-hematógena-HE-40x.jpg'),
(30, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:41:"2020/01/1.6-Medula-hematógena-HE-40x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:41:"1.6-Medula-hematógena-HE-40x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:41:"1.6-Medula-hematógena-HE-40x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 30, '_wp_attached_file', '2020/01/1.7-Medula-hematógena-megacariócito-HE-400x.jpg'),
(32, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:57:"2020/01/1.7-Medula-hematógena-megacariócito-HE-400x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:57:"1.7-Medula-hematógena-megacariócito-HE-400x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:57:"1.7-Medula-hematógena-megacariócito-HE-400x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 31, '_wp_attached_file', '2020/01/1.8-Medula-amarela-HE-40x.jpg'),
(34, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:37:"2020/01/1.8-Medula-amarela-HE-40x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:37:"1.8-Medula-amarela-HE-40x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:37:"1.8-Medula-amarela-HE-40x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 32, '_wp_attached_file', '2020/01/2.1-Coração-moicárdio-ventricular-e-fibras-de-Purkinje-HE-200x.jpg'),
(36, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:77:"2020/01/2.1-Coração-moicárdio-ventricular-e-fibras-de-Purkinje-HE-200x.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:77:"2.1-Coração-moicárdio-ventricular-e-fibras-de-Purkinje-HE-200x-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:78:"2.1-Coração-moicárdio-ventricular-e-fibras-de-Purkinje-HE-200x-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:77:"2.1-Coração-moicárdio-ventricular-e-fibras-de-Purkinje-HE-200x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:77:"2.1-Coração-moicárdio-ventricular-e-fibras-de-Purkinje-HE-200x-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:78:"2.1-Coração-moicárdio-ventricular-e-fibras-de-Purkinje-HE-200x-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(37, 33, '_wp_attached_file', '2020/01/2.2-Miocárdio-vertricular-e-epicárdio-HE-100x.jpg'),
(38, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:59:"2020/01/2.2-Miocárdio-vertricular-e-epicárdio-HE-100x.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:59:"2.2-Miocárdio-vertricular-e-epicárdio-HE-100x-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:60:"2.2-Miocárdio-vertricular-e-epicárdio-HE-100x-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:59:"2.2-Miocárdio-vertricular-e-epicárdio-HE-100x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:59:"2.2-Miocárdio-vertricular-e-epicárdio-HE-100x-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:60:"2.2-Miocárdio-vertricular-e-epicárdio-HE-100x-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 34, '_wp_attached_file', '2020/01/2.3-Artéria-elástica-túnicas-íntima-e-média-HE-40x.jpg'),
(40, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:67:"2020/01/2.3-Artéria-elástica-túnicas-íntima-e-média-HE-40x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:67:"2.3-Artéria-elástica-túnicas-íntima-e-média-HE-40x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:67:"2.3-Artéria-elástica-túnicas-íntima-e-média-HE-40x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(41, 35, '_wp_attached_file', '2020/01/2.4-Artéria-elástica-túnicas-íntima-e-média-HE-100x.jpg'),
(42, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:68:"2020/01/2.4-Artéria-elástica-túnicas-íntima-e-média-HE-100x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:68:"2.4-Artéria-elástica-túnicas-íntima-e-média-HE-100x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:68:"2.4-Artéria-elástica-túnicas-íntima-e-média-HE-100x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(43, 36, '_wp_attached_file', '2020/01/2.5-Artéria-elástica-túnicas-média-e-adventícia-HE-40x.jpg'),
(44, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:71:"2020/01/2.5-Artéria-elástica-túnicas-média-e-adventícia-HE-40x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:71:"2.5-Artéria-elástica-túnicas-média-e-adventícia-HE-40x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:71:"2.5-Artéria-elástica-túnicas-média-e-adventícia-HE-40x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(45, 37, '_wp_attached_file', '2020/01/2.6-Artéria-muscular-tunicas-íntima-e-média-HE-40x.jpg'),
(46, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:65:"2020/01/2.6-Artéria-muscular-tunicas-íntima-e-média-HE-40x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:65:"2.6-Artéria-muscular-tunicas-íntima-e-média-HE-40x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:65:"2.6-Artéria-muscular-tunicas-íntima-e-média-HE-40x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(47, 38, '_wp_attached_file', '2020/01/2.7-artéria-muscular-túnicas-íntima-e-média-HE-200x-.jpg'),
(48, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:68:"2020/01/2.7-artéria-muscular-túnicas-íntima-e-média-HE-200x-.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:68:"2.7-artéria-muscular-túnicas-íntima-e-média-HE-200x--300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:68:"2.7-artéria-muscular-túnicas-íntima-e-média-HE-200x--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 39, '_wp_attached_file', '2020/01/2.8-Artéria-muscular-túnicas-média-e-adventícia-HE-40x.jpg'),
(50, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:70:"2020/01/2.8-Artéria-muscular-túnicas-média-e-adventícia-HE-40x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:70:"2.8-Artéria-muscular-túnicas-média-e-adventícia-HE-40x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:70:"2.8-Artéria-muscular-túnicas-média-e-adventícia-HE-40x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(51, 40, '_wp_attached_file', '2020/01/1.5-Esfregaço-de-sangue-eritrócitos-plaquetas-e-neutrófilo-Romanowsky-modificada-1000x.jpg'),
(52, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:101:"2020/01/1.5-Esfregaço-de-sangue-eritrócitos-plaquetas-e-neutrófilo-Romanowsky-modificada-1000x.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:101:"1.5-Esfregaço-de-sangue-eritrócitos-plaquetas-e-neutrófilo-Romanowsky-modificada-1000x-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:102:"1.5-Esfregaço-de-sangue-eritrócitos-plaquetas-e-neutrófilo-Romanowsky-modificada-1000x-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:101:"1.5-Esfregaço-de-sangue-eritrócitos-plaquetas-e-neutrófilo-Romanowsky-modificada-1000x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:101:"1.5-Esfregaço-de-sangue-eritrócitos-plaquetas-e-neutrófilo-Romanowsky-modificada-1000x-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:102:"1.5-Esfregaço-de-sangue-eritrócitos-plaquetas-e-neutrófilo-Romanowsky-modificada-1000x-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(53, 41, '_wp_attached_file', '2020/01/1_4_plaquetas.svg'),
(54, 42, '_wp_attached_file', '2020/01/1_2_hemaceas.svg'),
(55, 43, '_wp_attached_file', '2020/01/1_2_plaquetas.svg'),
(56, 44, '_wp_attached_file', '2020/01/1_3_eosinofilo-1.svg'),
(57, 45, '_wp_attached_file', '2020/01/1_3_hemaceas-2.svg'),
(58, 46, '_wp_attached_file', '2020/01/1_3_plaquetas-2.svg'),
(59, 47, '_wp_attached_file', '2020/01/1_4_hemaceas-1.svg'),
(60, 48, '_wp_attached_file', '2020/01/1_4_plaquetas-1.svg'),
(61, 49, '_wp_attached_file', '2020/01/1_4_linfocito-1.svg'),
(62, 50, '_wp_attached_file', '2020/01/1_5_hemaceas-1.svg'),
(63, 51, '_wp_attached_file', '2020/01/1_5_plaquetas-2.svg'),
(64, 52, '_wp_attached_file', '2020/01/1_5_neutrofilo-1.svg'),
(65, 53, '_wp_attached_file', '2020/01/1_5_nucleo-1.svg'),
(66, 54, '_wp_attached_file', '2020/01/1_6_trabeculas.svg'),
(67, 55, '_wp_attached_file', '2020/01/1_7_megacariocitos.svg'),
(68, 56, '_wp_attached_file', '2020/01/1_8_adipocitos.svg'),
(69, 57, '_wp_attached_file', '2020/01/1_8_medula_hematogenica.svg'),
(70, 58, '_wp_attached_file', '2020/01/1_8_tecido_adiposo_unilocular_cada_celula_tem_um_unico_vacuolo.svg'),
(71, 59, '_wp_attached_file', '2020/01/1_8_trabeculas_osseas.svg'),
(72, 62, '_wp_attached_file', '2020/02/2_1_miocardio_ventricular.svg'),
(73, 63, '_wp_attached_file', '2020/02/2_1_fibras_purkinje.svg'),
(74, 64, '_wp_attached_file', '2020/02/2_1_discos_intercalares.svg'),
(75, 65, '_wp_attached_file', '2020/02/2_2_miocardio.svg'),
(76, 66, '_wp_attached_file', '2020/02/2_2_epicardio.svg'),
(77, 67, '_wp_attached_file', '2020/02/2_3_tunica_media.svg'),
(78, 68, '_wp_attached_file', '2020/02/2_3_endotelio.svg'),
(79, 69, '_wp_attached_file', '2020/02/2_3_subendotelio.svg'),
(80, 70, '_wp_attached_file', '2020/02/2_4_endotelio.svg'),
(81, 71, '_wp_attached_file', '2020/02/2_4_subendotelio.svg'),
(82, 72, '_wp_attached_file', '2020/02/2_4_tunica_media.svg'),
(83, 73, '_wp_attached_file', '2020/02/2_5_tunica_media.svg'),
(84, 74, '_wp_attached_file', '2020/02/2_5_tunica_adventicia.svg'),
(85, 75, '_wp_attached_file', '2020/02/2_5_vasa_vasorum.svg'),
(86, 76, '_wp_attached_file', '2020/02/2_5_nervi_vasorum.svg'),
(87, 77, '_wp_attached_file', '2020/02/2_6_tunica_intima.svg'),
(88, 78, '_wp_attached_file', '2020/02/2_6_endotelio.svg'),
(89, 79, '_wp_attached_file', '2020/02/2_6_tunica_intima-1.svg'),
(90, 80, '_wp_attached_file', '2020/02/2_6_endotelio-1.svg'),
(91, 81, '_wp_attached_file', '2020/02/2_6_tecido_conjuntivo.svg'),
(92, 82, '_wp_attached_file', '2020/02/2_6_membrana_limitante_elastica_interna.svg'),
(93, 83, '_wp_attached_file', '2020/02/2_6_tunica_media.svg'),
(94, 84, '_wp_attached_file', '2020/02/2_7_endotelio.svg'),
(95, 85, '_wp_attached_file', '2020/02/2_7_membrana_limitante_elastica_interna.svg'),
(96, 86, '_wp_attached_file', '2020/02/2_7_tecido_conjuntivo.svg'),
(97, 87, '_wp_attached_file', '2020/02/2_7_tunica_intima.svg'),
(98, 88, '_wp_attached_file', '2020/02/2_7_tunica_media.svg'),
(99, 89, '_wp_attached_file', '2020/02/2_8_nervi_vasorum.svg'),
(100, 90, '_wp_attached_file', '2020/02/2_8_tunica_media.svg'),
(101, 91, '_wp_attached_file', '2020/02/2_8_tunica_adventicia.svg'),
(102, 92, '_wp_attached_file', '2020/02/2_8_vasa_vasorum.svg'),
(103, 93, '_wp_attached_file', '2020/02/3.1-Traquela-mucosa-respiratória-submucosa-e-placa-de-cartilagem-HE-40x.jpg'),
(104, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:84:"2020/02/3.1-Traquela-mucosa-respiratória-submucosa-e-placa-de-cartilagem-HE-40x.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:84:"3.1-Traquela-mucosa-respiratória-submucosa-e-placa-de-cartilagem-HE-40x-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:85:"3.1-Traquela-mucosa-respiratória-submucosa-e-placa-de-cartilagem-HE-40x-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:84:"3.1-Traquela-mucosa-respiratória-submucosa-e-placa-de-cartilagem-HE-40x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:84:"3.1-Traquela-mucosa-respiratória-submucosa-e-placa-de-cartilagem-HE-40x-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:85:"3.1-Traquela-mucosa-respiratória-submucosa-e-placa-de-cartilagem-HE-40x-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(105, 94, '_wp_attached_file', '2020/02/3.2-Traqueia-epitélio-respiratório-HE-200x.jpg'),
(106, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:56:"2020/02/3.2-Traqueia-epitélio-respiratório-HE-200x.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:56:"3.2-Traqueia-epitélio-respiratório-HE-200x-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:57:"3.2-Traqueia-epitélio-respiratório-HE-200x-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:56:"3.2-Traqueia-epitélio-respiratório-HE-200x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:56:"3.2-Traqueia-epitélio-respiratório-HE-200x-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:57:"3.2-Traqueia-epitélio-respiratório-HE-200x-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(107, 95, '_wp_attached_file', '2020/02/3.3-Brônquiointrapulmonar-em-corte-transversal-epitélio-respiratório-lâmina-própria-músculo-liso-submucosa-cartilagem-HE-40x.jpg'),
(108, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:142:"2020/02/3.3-Brônquiointrapulmonar-em-corte-transversal-epitélio-respiratório-lâmina-própria-músculo-liso-submucosa-cartilagem-HE-40x.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:142:"3.3-Brônquiointrapulmonar-em-corte-transversal-epitélio-respiratório-lâmina-própria-músculo-liso-submucosa-cartilagem-HE-40x-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:143:"3.3-Brônquiointrapulmonar-em-corte-transversal-epitélio-respiratório-lâmina-própria-músculo-liso-submucosa-cartilagem-HE-40x-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:142:"3.3-Brônquiointrapulmonar-em-corte-transversal-epitélio-respiratório-lâmina-própria-músculo-liso-submucosa-cartilagem-HE-40x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:142:"3.3-Brônquiointrapulmonar-em-corte-transversal-epitélio-respiratório-lâmina-própria-músculo-liso-submucosa-cartilagem-HE-40x-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:143:"3.3-Brônquiointrapulmonar-em-corte-transversal-epitélio-respiratório-lâmina-própria-músculo-liso-submucosa-cartilagem-HE-40x-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(109, 96, '_wp_attached_file', '2020/02/3.5-Pulmão-alvéolos-e-bronquíolo-HE-40X.jpg'),
(110, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:54:"2020/02/3.5-Pulmão-alvéolos-e-bronquíolo-HE-40X.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:54:"3.5-Pulmão-alvéolos-e-bronquíolo-HE-40X-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:55:"3.5-Pulmão-alvéolos-e-bronquíolo-HE-40X-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:54:"3.5-Pulmão-alvéolos-e-bronquíolo-HE-40X-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:54:"3.5-Pulmão-alvéolos-e-bronquíolo-HE-40X-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:55:"3.5-Pulmão-alvéolos-e-bronquíolo-HE-40X-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(111, 97, '_wp_attached_file', '2020/02/3.4-Parede-de-brônquio-intrapulmonar-HE-100x.jpg'),
(112, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:57:"2020/02/3.4-Parede-de-brônquio-intrapulmonar-HE-100x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:57:"3.4-Parede-de-brônquio-intrapulmonar-HE-100x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:57:"3.4-Parede-de-brônquio-intrapulmonar-HE-100x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(113, 98, '_wp_attached_file', '2020/02/3.6-Pulmão-alvéolos-e-bronquíolosHE-40x.jpg'),
(114, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:54:"2020/02/3.6-Pulmão-alvéolos-e-bronquíolosHE-40x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:54:"3.6-Pulmão-alvéolos-e-bronquíolosHE-40x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:54:"3.6-Pulmão-alvéolos-e-bronquíolosHE-40x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(115, 99, '_wp_attached_file', '2020/02/3.7-Alvélos-pulmonares-septos-interalveolares-e-espaçoes-aéreos-HE-400x.jpg'),
(116, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1392;s:6:"height";i:1040;s:4:"file";s:86:"2020/02/3.7-Alvélos-pulmonares-septos-interalveolares-e-espaçoes-aéreos-HE-400x.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:86:"3.7-Alvélos-pulmonares-septos-interalveolares-e-espaçoes-aéreos-HE-400x-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:87:"3.7-Alvélos-pulmonares-septos-interalveolares-e-espaçoes-aéreos-HE-400x-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:86:"3.7-Alvélos-pulmonares-septos-interalveolares-e-espaçoes-aéreos-HE-400x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:86:"3.7-Alvélos-pulmonares-septos-interalveolares-e-espaçoes-aéreos-HE-400x-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:87:"3.7-Alvélos-pulmonares-septos-interalveolares-e-espaçoes-aéreos-HE-400x-1200x897.jpg";s:5:"width";i:1200;s:6:"height";i:897;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(117, 100, '_wp_attached_file', '2020/02/3.8Alvéolos-pulmonares-macrófago-alveolar-ou-célula-de-poeira-HE-400x.jpg'),
(118, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:84:"2020/02/3.8Alvéolos-pulmonares-macrófago-alveolar-ou-célula-de-poeira-HE-400x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:84:"3.8Alvéolos-pulmonares-macrófago-alveolar-ou-célula-de-poeira-HE-400x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:84:"3.8Alvéolos-pulmonares-macrófago-alveolar-ou-célula-de-poeira-HE-400x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(119, 101, '_wp_attached_file', '2020/02/4.1-Mucosa-do-ureter-HE-100x.jpg'),
(120, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:40:"2020/02/4.1-Mucosa-do-ureter-HE-100x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:40:"4.1-Mucosa-do-ureter-HE-100x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:40:"4.1-Mucosa-do-ureter-HE-100x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 102, '_wp_attached_file', '2020/02/4.2-camada-muscular-da-parede-do-ureter-HE-100x.jpg'),
(122, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:59:"2020/02/4.2-camada-muscular-da-parede-do-ureter-HE-100x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:59:"4.2-camada-muscular-da-parede-do-ureter-HE-100x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:59:"4.2-camada-muscular-da-parede-do-ureter-HE-100x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 103, '_wp_attached_file', '2020/02/4.3-Córtex-renal-HE-40x.jpg'),
(124, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:36:"2020/02/4.3-Córtex-renal-HE-40x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:36:"4.3-Córtex-renal-HE-40x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:36:"4.3-Córtex-renal-HE-40x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(125, 104, '_wp_attached_file', '2020/02/4.4-Córtex-renal-corpúculo-renal-túbulos-contorcidos-proximais-e-distais-HE-100x.jpg'),
(126, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:95:"2020/02/4.4-Córtex-renal-corpúculo-renal-túbulos-contorcidos-proximais-e-distais-HE-100x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:95:"4.4-Córtex-renal-corpúculo-renal-túbulos-contorcidos-proximais-e-distais-HE-100x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:95:"4.4-Córtex-renal-corpúculo-renal-túbulos-contorcidos-proximais-e-distais-HE-100x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(127, 105, '_wp_attached_file', '2020/02/4.5-Córpúculo-renal-túbulos-contorcidos-proximais-túbulo-contorcido-distal-e-aparelho-justaglomerular-HE-200x.jpg'),
(128, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:125:"2020/02/4.5-Córpúculo-renal-túbulos-contorcidos-proximais-túbulo-contorcido-distal-e-aparelho-justaglomerular-HE-200x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:125:"4.5-Córpúculo-renal-túbulos-contorcidos-proximais-túbulo-contorcido-distal-e-aparelho-justaglomerular-HE-200x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:125:"4.5-Córpúculo-renal-túbulos-contorcidos-proximais-túbulo-contorcido-distal-e-aparelho-justaglomerular-HE-200x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(129, 106, '_wp_attached_file', '2020/02/4.6-Aparelho-justaglomerular-túbulos-contorcudos-proximais-e-distais-e-arteríola-aferente-HE-400x.jpg'),
(130, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:111:"2020/02/4.6-Aparelho-justaglomerular-túbulos-contorcudos-proximais-e-distais-e-arteríola-aferente-HE-400x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:111:"4.6-Aparelho-justaglomerular-túbulos-contorcudos-proximais-e-distais-e-arteríola-aferente-HE-400x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:111:"4.6-Aparelho-justaglomerular-túbulos-contorcudos-proximais-e-distais-e-arteríola-aferente-HE-400x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 107, '_wp_attached_file', '2020/02/4.7-Medula-renal-túbulos-coletores-alça-de-Henle-e-vasos-retos-HE-200x.jpg'),
(132, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:84:"2020/02/4.7-Medula-renal-túbulos-coletores-alça-de-Henle-e-vasos-retos-HE-200x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:84:"4.7-Medula-renal-túbulos-coletores-alça-de-Henle-e-vasos-retos-HE-200x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:84:"4.7-Medula-renal-túbulos-coletores-alça-de-Henle-e-vasos-retos-HE-200x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 108, '_wp_attached_file', '2020/02/4.8-Medula-renal-túbulos-coletores-alças-de-Henle-e-vasos-retos-HE-200x.jpg'),
(134, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:85:"2020/02/4.8-Medula-renal-túbulos-coletores-alças-de-Henle-e-vasos-retos-HE-200x.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:85:"4.8-Medula-renal-túbulos-coletores-alças-de-Henle-e-vasos-retos-HE-200x-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:85:"4.8-Medula-renal-túbulos-coletores-alças-de-Henle-e-vasos-retos-HE-200x-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(135, 110, '_wp_attached_file', '2020/03/3_1_anel_cartilagem_hialina.svg'),
(136, 111, '_wp_attached_file', '2020/03/3_1_celulas_adiposas_uniloculares.svg'),
(137, 112, '_wp_attached_file', '2020/03/3_1_epitelio_pseudoestratificado_ciliado_respiratorio.svg'),
(138, 113, '_wp_attached_file', '2020/03/3_1_glandulas_seromucosas.svg'),
(139, 114, '_wp_attached_file', '2020/03/3_1_lamina_propria.svg'),
(140, 115, '_wp_attached_file', '2020/03/3_1_pericondrio.svg'),
(141, 116, '_wp_attached_file', '2020/03/3_1_submucosa.svg'),
(142, 117, '_wp_attached_file', '2020/03/3_2_celulas_basais.svg'),
(143, 118, '_wp_attached_file', '2020/03/3_2_celulas_caliciformes.svg'),
(144, 119, '_wp_attached_file', '2020/03/3_2_celulas_ciliadas.svg'),
(145, 120, '_wp_attached_file', '2020/03/3_2_epitelio_respiratorio.svg'),
(146, 121, '_wp_attached_file', '2020/03/3_2_lamina_propria.svg'),
(147, 122, '_wp_attached_file', '2020/03/3_3_cartilagem_hialina.svg'),
(148, 123, '_wp_attached_file', '2020/03/3_3_epitelio_pseudoestratificado_ciliado.svg'),
(149, 124, '_wp_attached_file', '2020/03/3_3_musculo_liso.svg'),
(150, 125, '_wp_attached_file', '2020/03/3_3_tecido_linfoide_associado_ao_bronquio.svg'),
(151, 126, '_wp_attached_file', '2020/03/3_4_epitelio_respiratorio.svg'),
(152, 127, '_wp_attached_file', '2020/03/3_4_lamina_propria.svg'),
(153, 128, '_wp_attached_file', '2020/03/3_4_musculo_liso.svg'),
(154, 129, '_wp_attached_file', '2020/03/3_4_submucosa.svg'),
(155, 130, '_wp_attached_file', '2020/03/3_4_glandulas_seromucosas.svg'),
(156, 131, '_wp_attached_file', '2020/03/3_4_nodulo_linfoide.svg'),
(157, 132, '_wp_attached_file', '2020/03/3_4_cartilagem_hialina.svg'),
(158, 133, '_wp_attached_file', '2020/03/3_5_aoveolos.svg'),
(159, 134, '_wp_attached_file', '2020/03/3_5_tecido_conjuntivo_fibroelastico.svg'),
(160, 135, '_wp_attached_file', '2020/03/3_5_espacos_aereos.svg'),
(161, 136, '_wp_attached_file', '2020/03/3_5_septos_interaoveolares.svg'),
(162, 137, '_wp_attached_file', '2020/03/3_9_aoveolos.svg'),
(163, 138, '_wp_attached_file', '2020/03/3_9_pleura_visceral.svg'),
(164, 139, '_wp_attached_file', '2020/03/3_8_aoveolo.svg'),
(165, 140, '_wp_attached_file', '2020/03/3_8_macrofago_aoveolar.svg'),
(166, 141, '_wp_attached_file', '2020/03/3_8_pneumocitos_tipo_1.svg'),
(167, 142, '_wp_attached_file', '2020/03/3_7_espacos_aereos.svg'),
(168, 143, '_wp_attached_file', '2020/03/3_6_bronquiolos.svg'),
(169, 144, '_wp_attached_file', '2020/03/3_6_musculo_liso.svg'),
(170, 145, '_wp_attached_file', '2020/03/3_6_arterias_musculares.svg'),
(171, 146, '_wp_attached_file', '2020/03/3_6_aoveolos.svg'),
(172, 147, '_wp_attached_file', '2020/03/3_7_septos_interaoveolares.svg'),
(173, 148, '_wp_attached_file', '2020/03/3_7_tecido-conjuntivo.svg'),
(174, 149, '_wp_attached_file', '2020/03/3_7_pneumocito_tipo_1.svg'),
(175, 150, '_wp_attached_file', '2020/03/3_7_pneumocito_tipo_2.svg'),
(176, 151, '_wp_attached_file', '2020/03/3_7_macrofago.svg'),
(177, 152, '_wp_attached_file', '2020/03/3_7_veia.svg'),
(178, 153, '_wp_attached_file', '2020/03/3_7_plasma.svg'),
(179, 154, '_wp_attached_file', '2020/03/3_7_hemacias.svg'),
(180, 155, '_wp_attached_file', '2020/03/4_1_epitelio_transicao.svg'),
(181, 156, '_wp_attached_file', '2020/03/4_1_lamina_propria.svg'),
(182, 157, '_wp_attached_file', '2020/03/4_2_feixe_celula_muscular_longitudinal.svg'),
(183, 158, '_wp_attached_file', '2020/03/4_2_feixe_celula_muscular_transversal.svg'),
(184, 159, '_wp_attached_file', '2020/03/4_2_tecido_conjuntivo.svg'),
(185, 160, '_wp_attached_file', '2020/03/4_3_corpusculos_renais.svg'),
(186, 161, '_wp_attached_file', '2020/03/4_3_tubulos_contorcidos.svg'),
(187, 162, '_wp_attached_file', '2020/03/4_4_corpusculos_renais.svg'),
(188, 163, '_wp_attached_file', '2020/03/4_4_tubulo_contorcido_proximal.svg'),
(189, 164, '_wp_attached_file', '2020/03/4_4_tubulo_contorcido_distal.svg'),
(190, 165, '_wp_attached_file', '2020/03/4_4_intersticio_renal.svg'),
(191, 166, '_wp_attached_file', '2020/03/4_4_lamina_parietal.svg'),
(192, 167, '_wp_attached_file', '2020/03/4_4_lamina_visceral.svg'),
(193, 168, '_wp_attached_file', '2020/03/4_4_capsula_bowman.svg'),
(194, 169, '_wp_attached_file', '2020/03/4_4_tubulo_contorcido_proximal-1.svg'),
(195, 170, '_wp_attached_file', '2020/03/4_4_tubulo_contorcido_distal-1.svg'),
(196, 171, '_wp_attached_file', '2020/03/4_4_macula_densa.svg'),
(197, 172, '_wp_attached_file', '2020/03/4_5_corpusculo_renal.svg'),
(198, 173, '_wp_attached_file', '2020/03/4_5_capsula_bowman.svg'),
(199, 174, '_wp_attached_file', '2020/03/4_5_espaco_capsular.svg'),
(200, 175, '_wp_attached_file', '2020/03/4_5_folheto_parietal.svg'),
(201, 176, '_wp_attached_file', '2020/03/4_5_folheto_visceral.svg'),
(202, 177, '_wp_attached_file', '2020/03/4_5_macula_densa.svg'),
(203, 178, '_wp_attached_file', '2020/03/4_5_tubulo_contorcido_distal.svg'),
(204, 179, '_wp_attached_file', '2020/03/4_5_tubulo_contorcido_proximal.svg'),
(205, 180, '_wp_attached_file', '2020/03/4_6_intersticio_renal.svg'),
(206, 181, '_wp_attached_file', '2020/03/4_6_capilares_peritubulares.svg'),
(207, 182, '_wp_attached_file', '2020/03/4_6_tubulos_contorcidos_proximais.svg'),
(208, 183, '_wp_attached_file', '2020/03/4_6_tubulos_contorcidos_distais.svg'),
(209, 184, '_wp_attached_file', '2020/03/4_6_macula_densa.svg'),
(210, 185, '_wp_attached_file', '2020/03/4_6_arteriola_aferente.svg'),
(211, 186, '_wp_attached_file', '2020/03/4_7_alca_henle.svg'),
(212, 187, '_wp_attached_file', '2020/03/4_7_tubulos_coletores.svg'),
(213, 188, '_wp_attached_file', '2020/03/4_7_vasos_retos.svg'),
(214, 189, '_wp_attached_file', '2020/03/4_8_alca_henle.svg'),
(215, 190, '_wp_attached_file', '2020/03/4_8_tubulos_coletores.svg'),
(216, 191, '_wp_attached_file', '2020/03/4_8_inersticio_renal.svg'),
(217, 192, '_wp_attached_file', '2020/03/4_8_vasos_retos.svg'),
(218, 193, '_wp_attached_file', '2020/03/3.9-Alvéolos-e-pleura-visceral-HE-–-100x.svg'),
(219, 194, '_wp_attached_file', '2020/03/3_8_pneumocitos_tipo_2.svg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=195 ;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-04 00:07:35', '2019-12-04 02:07:35', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2019-12-04 00:07:35', '2019-12-04 02:07:35', '', 0, 'http://histonline.ics.ufba.br/adm/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-04 00:07:35', '2019-12-04 02:07:35', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href="http://histonline.ics.ufba.br/adm/wp-admin/">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2019-12-04 00:07:35', '2019-12-04 02:07:35', '', 0, 'http://histonline.ics.ufba.br/adm/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-04 00:07:35', '2019-12-04 02:07:35', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://histonline.ics.ufba.br/adm.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2019-12-04 00:07:35', '2019-12-04 02:07:35', '', 0, 'http://histonline.ics.ufba.br/adm/?page_id=3', 0, 'page', '', 0),
(7, 1, '2019-12-23 20:30:45', '2019-12-23 22:30:45', '', '1.2 Esfregaço de sangue - eritrócitos e plaquetas (Romanowsky modificada - 1000x)', '', 'inherit', 'open', 'closed', '', '1-2-esfregaco-de-sangue-eritrocitos-e-plaquetas-romanowsky-modificada-1000x', '', '', '2019-12-23 20:30:45', '2019-12-23 22:30:45', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2019/12/1.2-Esfregaço-de-sangue-eritrócitos-e-plaquetas-Romanowsky-modificada-1000x.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2019-12-24 11:52:38', '2019-12-24 13:52:38', '', '1.2_plaquetas', '', 'inherit', 'open', 'closed', '', '1-2_plaquetas', '', '', '2019-12-24 11:52:38', '2019-12-24 13:52:38', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2019/12/1.2_plaquetas.svg', 0, 'attachment', 'image/svg+xml', 0),
(9, 1, '2019-12-24 21:20:43', '2019-12-24 23:20:43', '', '1.2_hemaceas', '', 'inherit', 'open', 'closed', '', '1-2_hemaceas', '', '', '2019-12-24 21:20:43', '2019-12-24 23:20:43', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2019/12/1.2_hemaceas.svg', 0, 'attachment', 'image/svg+xml', 0),
(12, 3, '2020-01-03 21:45:58', '2020-01-03 23:45:58', '', '1.3 Esfregaço de sangue - eritrócitos, plaquetas e eosinófilo(Romanowsky modificada - 1000x)', '', 'inherit', 'open', 'closed', '', '1-3-esfregaco-de-sangue-eritrocitos-plaquetas-e-eosinofiloromanowsky-modificada-1000x', '', '', '2020-01-03 21:45:58', '2020-01-03 23:45:58', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2020-01-04 18:55:06', '2020-01-04 20:55:06', '', '1_3_hemaceas', '', 'inherit', 'open', 'closed', '', '1_3_hemaceas', '', '', '2020-01-04 18:55:06', '2020-01-04 20:55:06', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_3_hemaceas.svg', 0, 'attachment', 'image/svg+xml', 0),
(15, 1, '2020-01-04 19:03:55', '2020-01-04 21:03:55', '', '1_5_plaquetas', '', 'inherit', 'open', 'closed', '', '1_5_plaquetas', '', '', '2020-01-04 19:03:55', '2020-01-04 21:03:55', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_5_plaquetas.svg', 0, 'attachment', 'image/svg+xml', 0),
(16, 3, '2020-01-04 20:00:08', '2020-01-04 22:00:08', '', '1.3 Esfregaço de sangue - eritrócitos, plaquetas e eosinófilo(Romanowsky modificada - 1000x)', '', 'inherit', 'open', 'closed', '', '1-3-esfregaco-de-sangue-eritrocitos-plaquetas-e-eosinofiloromanowsky-modificada-1000x-2', '', '', '2020-01-04 20:00:08', '2020-01-04 22:00:08', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 3, '2020-01-04 21:26:53', '2020-01-04 23:26:53', '', '1.3 Esfregaço de sangue - eritrócitos, plaquetas e eosinófilo(Romanowsky modificada - 1000x)', '', 'inherit', 'open', 'closed', '', '1-3-esfregaco-de-sangue-eritrocitos-plaquetas-e-eosinofiloromanowsky-modificada-1000x-3', '', '', '2020-01-04 21:26:53', '2020-01-04 23:26:53', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1.3-Esfregaço-de-sangue-eritrócitos-plaquetas-e-eosinófiloRomanowsky-modificada-1000x-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 3, '2020-01-04 21:27:29', '2020-01-04 23:27:29', '', '1_3_eosinofilo', '', 'inherit', 'open', 'closed', '', '1_3_eosinofilo', '', '', '2020-01-04 21:27:29', '2020-01-04 23:27:29', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_3_eosinofilo.svg', 0, 'attachment', 'image/svg+xml', 0),
(19, 3, '2020-01-04 21:34:34', '2020-01-04 23:34:34', '', '1_3_hemaceas', '', 'inherit', 'open', 'closed', '', '1_3_hemaceas-2', '', '', '2020-01-04 21:34:34', '2020-01-04 23:34:34', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_3_hemaceas-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(20, 3, '2020-01-04 21:35:00', '2020-01-04 23:35:00', '', '1_3_plaquetas', '', 'inherit', 'open', 'closed', '', '1_3_plaquetas', '', '', '2020-01-04 21:35:00', '2020-01-04 23:35:00', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_3_plaquetas.svg', 0, 'attachment', 'image/svg+xml', 0),
(21, 3, '2020-01-05 10:21:30', '2020-01-05 12:21:30', '', '1.4 Esfregaço de sangue - eritrócitos, plaquetas e linfócito (Romanowsky modificada - 1000x)', '', 'inherit', 'open', 'closed', '', '1-4-esfregaco-de-sangue-eritrocitos-plaquetas-e-linfocito-romanowsky-modificada-1000x', '', '', '2020-01-05 10:21:30', '2020-01-05 12:21:30', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1.4-Esfregaço-de-sangue-eritrócitos-plaquetas-e-linfócito-Romanowsky-modificada-1000x.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 3, '2020-01-05 10:23:21', '2020-01-05 12:23:21', '', '1_4_hemaceas', '', 'inherit', 'open', 'closed', '', '1_4_hemaceas', '', '', '2020-01-05 10:23:21', '2020-01-05 12:23:21', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_4_hemaceas.svg', 0, 'attachment', 'image/svg+xml', 0),
(23, 3, '2020-01-05 10:23:44', '2020-01-05 12:23:44', '', '1_3_plaquetas', '', 'inherit', 'open', 'closed', '', '1_3_plaquetas-2', '', '', '2020-01-05 10:23:44', '2020-01-05 12:23:44', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_3_plaquetas-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(24, 3, '2020-01-05 10:24:11', '2020-01-05 12:24:11', '', '1_4_linfocito', '', 'inherit', 'open', 'closed', '', '1_4_linfocito', '', '', '2020-01-05 10:24:11', '2020-01-05 12:24:11', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_4_linfocito.svg', 0, 'attachment', 'image/svg+xml', 0),
(25, 3, '2020-01-05 10:33:21', '2020-01-05 12:33:21', '', '1_5_hemaceas', '', 'inherit', 'open', 'closed', '', '1_5_hemaceas', '', '', '2020-01-05 10:33:21', '2020-01-05 12:33:21', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_5_hemaceas.svg', 0, 'attachment', 'image/svg+xml', 0),
(26, 3, '2020-01-05 10:33:50', '2020-01-05 12:33:50', '', '1_5_plaquetas', '', 'inherit', 'open', 'closed', '', '1_5_plaquetas-2', '', '', '2020-01-05 10:33:50', '2020-01-05 12:33:50', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_5_plaquetas-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(27, 3, '2020-01-05 10:34:13', '2020-01-05 12:34:13', '', '1_5_neutrofilo', '', 'inherit', 'open', 'closed', '', '1_5_neutrofilo', '', '', '2020-01-05 10:34:13', '2020-01-05 12:34:13', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_5_neutrofilo.svg', 0, 'attachment', 'image/svg+xml', 0),
(28, 3, '2020-01-05 10:34:28', '2020-01-05 12:34:28', '', '1_5_nucleo', '', 'inherit', 'open', 'closed', '', '1_5_nucleo', '', '', '2020-01-05 10:34:28', '2020-01-05 12:34:28', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_5_nucleo.svg', 0, 'attachment', 'image/svg+xml', 0),
(29, 3, '2020-01-05 19:35:17', '2020-01-05 21:35:17', '', '1.6 Medula hematógena (HE - 40x)', '', 'inherit', 'open', 'closed', '', '1-6-medula-hematogena-he-40x', '', '', '2020-01-05 19:35:17', '2020-01-05 21:35:17', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1.6-Medula-hematógena-HE-40x.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 3, '2020-01-05 19:42:00', '2020-01-05 21:42:00', '', '1.7 Medula hematógena - megacariócito (HE - 400x)', '', 'inherit', 'open', 'closed', '', '1-7-medula-hematogena-megacariocito-he-400x', '', '', '2020-01-05 19:42:00', '2020-01-05 21:42:00', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1.7-Medula-hematógena-megacariócito-HE-400x.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 3, '2020-01-05 19:46:18', '2020-01-05 21:46:18', '', '1.8 Medula amarela (HE - 40x)', '', 'inherit', 'open', 'closed', '', '1-8-medula-amarela-he-40x', '', '', '2020-01-05 19:46:18', '2020-01-05 21:46:18', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1.8-Medula-amarela-HE-40x.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 3, '2020-01-05 20:42:44', '2020-01-05 22:42:44', '', '2.1 Coração - moicárdio ventricular e fibras de Purkinje (HE - 200x)', '', 'inherit', 'open', 'closed', '', '2-1-coracao-moicardio-ventricular-e-fibras-de-purkinje-he-200x', '', '', '2020-01-05 20:42:44', '2020-01-05 22:42:44', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/2.1-Coração-moicárdio-ventricular-e-fibras-de-Purkinje-HE-200x.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 3, '2020-01-06 12:22:38', '2020-01-06 14:22:38', '', '2.2 Miocárdio vertricular e epicárdio (HE - 100x)', '', 'inherit', 'open', 'closed', '', '2-2-miocardio-vertricular-e-epicardio-he-100x', '', '', '2020-01-06 12:22:38', '2020-01-06 14:22:38', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/2.2-Miocárdio-vertricular-e-epicárdio-HE-100x.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 3, '2020-01-06 12:27:07', '2020-01-06 14:27:07', '', '2.3 Artéria elástica - túnicas íntima e média ( HE - 40x)', '', 'inherit', 'open', 'closed', '', '2-3-arteria-elastica-tunicas-intima-e-media-he-40x', '', '', '2020-01-06 12:27:07', '2020-01-06 14:27:07', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/2.3-Artéria-elástica-túnicas-íntima-e-média-HE-40x.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 3, '2020-01-06 12:30:03', '2020-01-06 14:30:03', '', '2.4 Artéria elástica - túnicas íntima e média ( HE - 100x)', '', 'inherit', 'open', 'closed', '', '2-4-arteria-elastica-tunicas-intima-e-media-he-100x', '', '', '2020-01-06 12:30:03', '2020-01-06 14:30:03', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/2.4-Artéria-elástica-túnicas-íntima-e-média-HE-100x.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 3, '2020-01-06 12:32:43', '2020-01-06 14:32:43', '', '2.5 Artéria elástica - túnicas média e adventícia ( HE - 40x)', '', 'inherit', 'open', 'closed', '', '2-5-arteria-elastica-tunicas-media-e-adventicia-he-40x', '', '', '2020-01-06 12:32:43', '2020-01-06 14:32:43', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/2.5-Artéria-elástica-túnicas-média-e-adventícia-HE-40x.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 3, '2020-01-06 12:34:17', '2020-01-06 14:34:17', '', '2.6 Artéria muscular - tunicas íntima e média (HE - 40x)', '', 'inherit', 'open', 'closed', '', '2-6-arteria-muscular-tunicas-intima-e-media-he-40x', '', '', '2020-01-06 12:34:17', '2020-01-06 14:34:17', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/2.6-Artéria-muscular-tunicas-íntima-e-média-HE-40x.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 3, '2020-01-06 12:36:03', '2020-01-06 14:36:03', '', '2.7 artéria muscular - túnicas íntima e média (HE - 200x)', '', 'inherit', 'open', 'closed', '', '2-7-arteria-muscular-tunicas-intima-e-media-he-200x', '', '', '2020-01-06 12:36:03', '2020-01-06 14:36:03', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/2.7-artéria-muscular-túnicas-íntima-e-média-HE-200x-.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 3, '2020-01-06 12:37:26', '2020-01-06 14:37:26', '', '2.8 Artéria muscular - túnicas média e adventícia ( HE - 40x)', '', 'inherit', 'open', 'closed', '', '2-8-arteria-muscular-tunicas-media-e-adventicia-he-40x', '', '', '2020-01-06 12:37:26', '2020-01-06 14:37:26', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/2.8-Artéria-muscular-túnicas-média-e-adventícia-HE-40x.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 3, '2020-01-09 18:17:39', '2020-01-09 20:17:39', '', '1.5 Esfregaço de sangue - eritrócitos, plaquetas e neutrófilo (Romanowsky modificada - 1000x)', '', 'inherit', 'open', 'closed', '', '1-5-esfregaco-de-sangue-eritrocitos-plaquetas-e-neutrofilo-romanowsky-modificada-1000x', '', '', '2020-01-09 18:17:39', '2020-01-09 20:17:39', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1.5-Esfregaço-de-sangue-eritrócitos-plaquetas-e-neutrófilo-Romanowsky-modificada-1000x.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 3, '2020-01-10 11:21:05', '2020-01-10 13:21:05', '', '1_4_plaquetas', '', 'inherit', 'open', 'closed', '', '1_4_plaquetas', '', '', '2020-01-10 11:21:05', '2020-01-10 13:21:05', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_4_plaquetas.svg', 0, 'attachment', 'image/svg+xml', 0),
(42, 3, '2020-01-12 10:47:22', '2020-01-12 12:47:22', '', '1_2_hemaceas', '', 'inherit', 'open', 'closed', '', '1_2_hemaceas', '', '', '2020-01-12 10:47:22', '2020-01-12 12:47:22', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_2_hemaceas.svg', 0, 'attachment', 'image/svg+xml', 0),
(43, 3, '2020-01-12 10:47:47', '2020-01-12 12:47:47', '', '1_2_plaquetas', '', 'inherit', 'open', 'closed', '', '1_2_plaquetas', '', '', '2020-01-12 10:47:47', '2020-01-12 12:47:47', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_2_plaquetas.svg', 0, 'attachment', 'image/svg+xml', 0),
(44, 3, '2020-01-12 10:48:37', '2020-01-12 12:48:37', '', '1_3_eosinofilo', '', 'inherit', 'open', 'closed', '', '1_3_eosinofilo-2', '', '', '2020-01-12 10:48:37', '2020-01-12 12:48:37', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_3_eosinofilo-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(45, 3, '2020-01-12 10:48:59', '2020-01-12 12:48:59', '', '1_3_hemaceas', '', 'inherit', 'open', 'closed', '', '1_3_hemaceas-3', '', '', '2020-01-12 10:48:59', '2020-01-12 12:48:59', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_3_hemaceas-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(46, 3, '2020-01-12 10:49:25', '2020-01-12 12:49:25', '', '1_3_plaquetas', '', 'inherit', 'open', 'closed', '', '1_3_plaquetas-3', '', '', '2020-01-12 10:49:25', '2020-01-12 12:49:25', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_3_plaquetas-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(47, 3, '2020-01-12 10:51:03', '2020-01-12 12:51:03', '', '1_4_hemaceas', '', 'inherit', 'open', 'closed', '', '1_4_hemaceas-2', '', '', '2020-01-12 10:51:03', '2020-01-12 12:51:03', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_4_hemaceas-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(48, 3, '2020-01-12 10:51:26', '2020-01-12 12:51:26', '', '1_4_plaquetas', '', 'inherit', 'open', 'closed', '', '1_4_plaquetas-2', '', '', '2020-01-12 10:51:26', '2020-01-12 12:51:26', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_4_plaquetas-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(49, 3, '2020-01-12 10:51:47', '2020-01-12 12:51:47', '', '1_4_linfocito', '', 'inherit', 'open', 'closed', '', '1_4_linfocito-2', '', '', '2020-01-12 10:51:47', '2020-01-12 12:51:47', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_4_linfocito-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(50, 3, '2020-01-12 10:52:59', '2020-01-12 12:52:59', '', '1_5_hemaceas', '', 'inherit', 'open', 'closed', '', '1_5_hemaceas-2', '', '', '2020-01-12 10:52:59', '2020-01-12 12:52:59', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_5_hemaceas-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(51, 3, '2020-01-12 10:53:18', '2020-01-12 12:53:18', '', '1_5_plaquetas', '', 'inherit', 'open', 'closed', '', '1_5_plaquetas-3', '', '', '2020-01-12 10:53:18', '2020-01-12 12:53:18', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_5_plaquetas-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(52, 3, '2020-01-12 10:53:42', '2020-01-12 12:53:42', '', '1_5_neutrofilo', '', 'inherit', 'open', 'closed', '', '1_5_neutrofilo-2', '', '', '2020-01-12 10:53:42', '2020-01-12 12:53:42', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_5_neutrofilo-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(53, 3, '2020-01-12 10:54:00', '2020-01-12 12:54:00', '', '1_5_nucleo', '', 'inherit', 'open', 'closed', '', '1_5_nucleo-2', '', '', '2020-01-12 10:54:00', '2020-01-12 12:54:00', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_5_nucleo-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(54, 3, '2020-01-12 17:08:32', '2020-01-12 19:08:32', '', '1_6_trabeculas', '', 'inherit', 'open', 'closed', '', '1_6_trabeculas', '', '', '2020-01-12 17:08:32', '2020-01-12 19:08:32', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_6_trabeculas.svg', 0, 'attachment', 'image/svg+xml', 0),
(55, 3, '2020-01-12 17:09:08', '2020-01-12 19:09:08', '', '1_7_megacariocitos', '', 'inherit', 'open', 'closed', '', '1_7_megacariocitos', '', '', '2020-01-12 17:09:08', '2020-01-12 19:09:08', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_7_megacariocitos.svg', 0, 'attachment', 'image/svg+xml', 0),
(56, 3, '2020-01-12 17:11:51', '2020-01-12 19:11:51', '', '1_8_adipocitos', '', 'inherit', 'open', 'closed', '', '1_8_adipocitos', '', '', '2020-01-12 17:11:51', '2020-01-12 19:11:51', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_8_adipocitos.svg', 0, 'attachment', 'image/svg+xml', 0),
(57, 3, '2020-01-12 17:12:31', '2020-01-12 19:12:31', '', '1_8_medula_hematogenica', '', 'inherit', 'open', 'closed', '', '1_8_medula_hematogenica', '', '', '2020-01-12 17:12:31', '2020-01-12 19:12:31', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_8_medula_hematogenica.svg', 0, 'attachment', 'image/svg+xml', 0),
(58, 3, '2020-01-12 17:13:02', '2020-01-12 19:13:02', '', '1_8_tecido_adiposo_unilocular_cada_celula_tem_um_unico_vacuolo', '', 'inherit', 'open', 'closed', '', '1_8_tecido_adiposo_unilocular_cada_celula_tem_um_unico_vacuolo', '', '', '2020-01-12 17:13:02', '2020-01-12 19:13:02', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_8_tecido_adiposo_unilocular_cada_celula_tem_um_unico_vacuolo.svg', 0, 'attachment', 'image/svg+xml', 0),
(59, 3, '2020-01-12 17:13:25', '2020-01-12 19:13:25', '', '1_8_trabeculas_osseas', '', 'inherit', 'open', 'closed', '', '1_8_trabeculas_osseas', '', '', '2020-01-12 17:13:25', '2020-01-12 19:13:25', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/01/1_8_trabeculas_osseas.svg', 0, 'attachment', 'image/svg+xml', 0),
(62, 3, '2020-02-04 16:43:20', '2020-02-04 18:43:20', '', '2_1_miocardio_ventricular', '', 'inherit', 'open', 'closed', '', '2_1_miocardio_ventricular', '', '', '2020-02-04 16:43:20', '2020-02-04 18:43:20', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_1_miocardio_ventricular.svg', 0, 'attachment', 'image/svg+xml', 0),
(63, 3, '2020-02-04 16:43:44', '2020-02-04 18:43:44', '', '2_1_fibras_purkinje', '', 'inherit', 'open', 'closed', '', '2_1_fibras_purkinje', '', '', '2020-02-04 16:43:44', '2020-02-04 18:43:44', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_1_fibras_purkinje.svg', 0, 'attachment', 'image/svg+xml', 0),
(64, 3, '2020-02-04 16:44:01', '2020-02-04 18:44:01', '', '2_1_discos_intercalares', '', 'inherit', 'open', 'closed', '', '2_1_discos_intercalares', '', '', '2020-02-04 16:44:01', '2020-02-04 18:44:01', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_1_discos_intercalares.svg', 0, 'attachment', 'image/svg+xml', 0),
(65, 3, '2020-02-04 16:50:31', '2020-02-04 18:50:31', '', '2_2_miocardio', '', 'inherit', 'open', 'closed', '', '2_2_miocardio', '', '', '2020-02-04 16:50:31', '2020-02-04 18:50:31', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_2_miocardio.svg', 0, 'attachment', 'image/svg+xml', 0),
(66, 3, '2020-02-04 16:50:54', '2020-02-04 18:50:54', '', '2_2_epicardio', '', 'inherit', 'open', 'closed', '', '2_2_epicardio', '', '', '2020-02-04 16:50:54', '2020-02-04 18:50:54', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_2_epicardio.svg', 0, 'attachment', 'image/svg+xml', 0),
(67, 3, '2020-02-04 16:53:44', '2020-02-04 18:53:44', '', '2_3_tunica_media', '', 'inherit', 'open', 'closed', '', '2_3_tunica_media', '', '', '2020-02-04 16:53:44', '2020-02-04 18:53:44', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_3_tunica_media.svg', 0, 'attachment', 'image/svg+xml', 0),
(68, 3, '2020-02-04 16:54:09', '2020-02-04 18:54:09', '', '2_3_endotelio', '', 'inherit', 'open', 'closed', '', '2_3_endotelio', '', '', '2020-02-04 16:54:09', '2020-02-04 18:54:09', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_3_endotelio.svg', 0, 'attachment', 'image/svg+xml', 0),
(69, 3, '2020-02-04 16:54:37', '2020-02-04 18:54:37', '', '2_3_subendotelio', '', 'inherit', 'open', 'closed', '', '2_3_subendotelio', '', '', '2020-02-04 16:54:37', '2020-02-04 18:54:37', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_3_subendotelio.svg', 0, 'attachment', 'image/svg+xml', 0),
(70, 3, '2020-02-04 16:59:15', '2020-02-04 18:59:15', '', '2_4_endotelio', '', 'inherit', 'open', 'closed', '', '2_4_endotelio', '', '', '2020-02-04 16:59:15', '2020-02-04 18:59:15', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_4_endotelio.svg', 0, 'attachment', 'image/svg+xml', 0),
(71, 3, '2020-02-04 16:59:34', '2020-02-04 18:59:34', '', '2_4_subendotelio', '', 'inherit', 'open', 'closed', '', '2_4_subendotelio', '', '', '2020-02-04 16:59:34', '2020-02-04 18:59:34', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_4_subendotelio.svg', 0, 'attachment', 'image/svg+xml', 0),
(72, 3, '2020-02-04 16:59:57', '2020-02-04 18:59:57', '', '2_4_tunica_media', '', 'inherit', 'open', 'closed', '', '2_4_tunica_media', '', '', '2020-02-04 16:59:57', '2020-02-04 18:59:57', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_4_tunica_media.svg', 0, 'attachment', 'image/svg+xml', 0),
(73, 3, '2020-02-04 17:01:44', '2020-02-04 19:01:44', '', '2_5_tunica_media', '', 'inherit', 'open', 'closed', '', '2_5_tunica_media', '', '', '2020-02-04 17:01:44', '2020-02-04 19:01:44', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_5_tunica_media.svg', 0, 'attachment', 'image/svg+xml', 0),
(74, 3, '2020-02-04 17:02:53', '2020-02-04 19:02:53', '', '2_5_tunica_adventicia', '', 'inherit', 'open', 'closed', '', '2_5_tunica_adventicia', '', '', '2020-02-04 17:02:53', '2020-02-04 19:02:53', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_5_tunica_adventicia.svg', 0, 'attachment', 'image/svg+xml', 0),
(75, 3, '2020-02-04 17:03:21', '2020-02-04 19:03:21', '', '2_5_vasa_vasorum', '', 'inherit', 'open', 'closed', '', '2_5_vasa_vasorum', '', '', '2020-02-04 17:03:21', '2020-02-04 19:03:21', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_5_vasa_vasorum.svg', 0, 'attachment', 'image/svg+xml', 0),
(76, 3, '2020-02-04 17:03:51', '2020-02-04 19:03:51', '', '2_5_nervi_vasorum', '', 'inherit', 'open', 'closed', '', '2_5_nervi_vasorum', '', '', '2020-02-04 17:03:51', '2020-02-04 19:03:51', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_5_nervi_vasorum.svg', 0, 'attachment', 'image/svg+xml', 0),
(77, 3, '2020-02-04 17:26:38', '2020-02-04 19:26:38', '', '2_6_tunica_intima', '', 'inherit', 'open', 'closed', '', '2_6_tunica_intima', '', '', '2020-02-04 17:26:38', '2020-02-04 19:26:38', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_6_tunica_intima.svg', 0, 'attachment', 'image/svg+xml', 0),
(78, 3, '2020-02-04 17:27:36', '2020-02-04 19:27:36', '', '2_6_endotelio', '', 'inherit', 'open', 'closed', '', '2_6_endotelio', '', '', '2020-02-04 17:27:36', '2020-02-04 19:27:36', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_6_endotelio.svg', 0, 'attachment', 'image/svg+xml', 0),
(79, 3, '2020-02-04 17:29:03', '2020-02-04 19:29:03', '', '2_6_tunica_intima', '', 'inherit', 'open', 'closed', '', '2_6_tunica_intima-2', '', '', '2020-02-04 17:29:03', '2020-02-04 19:29:03', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_6_tunica_intima-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(80, 3, '2020-02-04 17:29:24', '2020-02-04 19:29:24', '', '2_6_endotelio', '', 'inherit', 'open', 'closed', '', '2_6_endotelio-2', '', '', '2020-02-04 17:29:24', '2020-02-04 19:29:24', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_6_endotelio-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(81, 3, '2020-02-04 17:29:59', '2020-02-04 19:29:59', '', '2_6_tecido_conjuntivo', '', 'inherit', 'open', 'closed', '', '2_6_tecido_conjuntivo', '', '', '2020-02-04 17:29:59', '2020-02-04 19:29:59', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_6_tecido_conjuntivo.svg', 0, 'attachment', 'image/svg+xml', 0),
(82, 3, '2020-02-04 17:30:20', '2020-02-04 19:30:20', '', '2_6_membrana_limitante_elastica_interna', '', 'inherit', 'open', 'closed', '', '2_6_membrana_limitante_elastica_interna', '', '', '2020-02-04 17:30:20', '2020-02-04 19:30:20', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_6_membrana_limitante_elastica_interna.svg', 0, 'attachment', 'image/svg+xml', 0),
(83, 3, '2020-02-04 17:30:43', '2020-02-04 19:30:43', '', '2_6_tunica_media', '', 'inherit', 'open', 'closed', '', '2_6_tunica_media', '', '', '2020-02-04 17:30:43', '2020-02-04 19:30:43', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_6_tunica_media.svg', 0, 'attachment', 'image/svg+xml', 0),
(84, 3, '2020-02-04 17:43:33', '2020-02-04 19:43:33', '', '2_7_endotelio', '', 'inherit', 'open', 'closed', '', '2_7_endotelio', '', '', '2020-02-04 17:43:33', '2020-02-04 19:43:33', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_7_endotelio.svg', 0, 'attachment', 'image/svg+xml', 0),
(85, 3, '2020-02-04 17:44:15', '2020-02-04 19:44:15', '', '2_7_membrana_limitante_elastica_interna', '', 'inherit', 'open', 'closed', '', '2_7_membrana_limitante_elastica_interna', '', '', '2020-02-04 17:44:15', '2020-02-04 19:44:15', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_7_membrana_limitante_elastica_interna.svg', 0, 'attachment', 'image/svg+xml', 0),
(86, 3, '2020-02-04 17:45:44', '2020-02-04 19:45:44', '', '2_7_tecido_conjuntivo', '', 'inherit', 'open', 'closed', '', '2_7_tecido_conjuntivo', '', '', '2020-02-04 17:45:44', '2020-02-04 19:45:44', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_7_tecido_conjuntivo.svg', 0, 'attachment', 'image/svg+xml', 0),
(87, 3, '2020-02-04 17:46:38', '2020-02-04 19:46:38', '', '2_7_tunica_intima', '', 'inherit', 'open', 'closed', '', '2_7_tunica_intima', '', '', '2020-02-04 17:46:38', '2020-02-04 19:46:38', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_7_tunica_intima.svg', 0, 'attachment', 'image/svg+xml', 0),
(88, 3, '2020-02-04 17:47:12', '2020-02-04 19:47:12', '', '2_7_tunica_media', '', 'inherit', 'open', 'closed', '', '2_7_tunica_media', '', '', '2020-02-04 17:47:12', '2020-02-04 19:47:12', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_7_tunica_media.svg', 0, 'attachment', 'image/svg+xml', 0),
(89, 3, '2020-02-04 17:50:16', '2020-02-04 19:50:16', '', '2_8_nervi_vasorum', '', 'inherit', 'open', 'closed', '', '2_8_nervi_vasorum', '', '', '2020-02-04 17:50:16', '2020-02-04 19:50:16', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_8_nervi_vasorum.svg', 0, 'attachment', 'image/svg+xml', 0),
(90, 3, '2020-02-04 17:50:56', '2020-02-04 19:50:56', '', '2_8_tunica_media', '', 'inherit', 'open', 'closed', '', '2_8_tunica_media', '', '', '2020-02-04 17:50:56', '2020-02-04 19:50:56', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_8_tunica_media.svg', 0, 'attachment', 'image/svg+xml', 0),
(91, 3, '2020-02-04 17:51:47', '2020-02-04 19:51:47', '', '2_8_tunica_adventicia', '', 'inherit', 'open', 'closed', '', '2_8_tunica_adventicia', '', '', '2020-02-04 17:51:47', '2020-02-04 19:51:47', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_8_tunica_adventicia.svg', 0, 'attachment', 'image/svg+xml', 0),
(92, 3, '2020-02-04 17:52:06', '2020-02-04 19:52:06', '', '2_8_vasa_vasorum', '', 'inherit', 'open', 'closed', '', '2_8_vasa_vasorum', '', '', '2020-02-04 17:52:06', '2020-02-04 19:52:06', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/2_8_vasa_vasorum.svg', 0, 'attachment', 'image/svg+xml', 0),
(93, 3, '2020-02-11 13:25:37', '2020-02-11 15:25:37', '', '3.1 Traquela - mucosa respiratória, submucosa e placa de cartilagem (HE - 40x)', '', 'inherit', 'open', 'closed', '', '3-1-traquela-mucosa-respiratoria-submucosa-e-placa-de-cartilagem-he-40x', '', '', '2020-02-11 13:25:37', '2020-02-11 15:25:37', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/3.1-Traquela-mucosa-respiratória-submucosa-e-placa-de-cartilagem-HE-40x.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 3, '2020-02-11 13:31:02', '2020-02-11 15:31:02', '', '3.2 Traqueia - epitélio respiratório (HE - 200x)', '', 'inherit', 'open', 'closed', '', '3-2-traqueia-epitelio-respiratorio-he-200x', '', '', '2020-02-11 13:31:02', '2020-02-11 15:31:02', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/3.2-Traqueia-epitélio-respiratório-HE-200x.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 3, '2020-02-11 13:34:05', '2020-02-11 15:34:05', '', '3.3 Brônquiointrapulmonar em corte transversal - epitélio respiratório, lâmina própria, músculo liso, submucosa, cartilagem (HE - 40x)', '', 'inherit', 'open', 'closed', '', '3-3-bronquiointrapulmonar-em-corte-transversal-epitelio-respiratorio-lamina-propria-musculo-liso-submucosa-cartilagem-he-40x', '', '', '2020-02-11 13:34:05', '2020-02-11 15:34:05', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/3.3-Brônquiointrapulmonar-em-corte-transversal-epitélio-respiratório-lâmina-própria-músculo-liso-submucosa-cartilagem-HE-40x.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 3, '2020-02-11 13:37:57', '2020-02-11 15:37:57', '', '3.5 Pulmão - alvéolos e bronquíolo (HE - 40X)', '', 'inherit', 'open', 'closed', '', '3-5-pulmao-alveolos-e-bronquiolo-he-40x', '', '', '2020-02-11 13:37:57', '2020-02-11 15:37:57', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/3.5-Pulmão-alvéolos-e-bronquíolo-HE-40X.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 3, '2020-02-11 13:38:55', '2020-02-11 15:38:55', '', '3.4 Parede de brônquio intrapulmonar (HE - 100x)', '', 'inherit', 'open', 'closed', '', '3-4-parede-de-bronquio-intrapulmonar-he-100x', '', '', '2020-02-11 13:38:55', '2020-02-11 15:38:55', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/3.4-Parede-de-brônquio-intrapulmonar-HE-100x.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 3, '2020-02-11 13:40:17', '2020-02-11 15:40:17', '', '3.6 Pulmão - alvéolos e bronquíolos(HE - 40x)', '', 'inherit', 'open', 'closed', '', '3-6-pulmao-alveolos-e-bronquioloshe-40x', '', '', '2020-02-11 13:40:17', '2020-02-11 15:40:17', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/3.6-Pulmão-alvéolos-e-bronquíolosHE-40x.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 3, '2020-02-11 13:41:39', '2020-02-11 15:41:39', '', '3.7 Alvélos pulmonares - septos interalveolares e espaçoes aéreos (HE - 400x)', '', 'inherit', 'open', 'closed', '', '3-7-alvelos-pulmonares-septos-interalveolares-e-espacoes-aereos-he-400x', '', '', '2020-02-11 13:41:39', '2020-02-11 15:41:39', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/3.7-Alvélos-pulmonares-septos-interalveolares-e-espaçoes-aéreos-HE-400x.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 3, '2020-02-11 13:43:19', '2020-02-11 15:43:19', '', '3.8Alvéolos pulmonares - macrófago alveolar ou célula de poeira (HE - 400x)', '', 'inherit', 'open', 'closed', '', '3-8alveolos-pulmonares-macrofago-alveolar-ou-celula-de-poeira-he-400x', '', '', '2020-02-11 13:43:19', '2020-02-11 15:43:19', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/3.8Alvéolos-pulmonares-macrófago-alveolar-ou-célula-de-poeira-HE-400x.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 3, '2020-02-11 13:46:09', '2020-02-11 15:46:09', '', '4.1 Mucosa do ureter (HE - 100x)', '', 'inherit', 'open', 'closed', '', '4-1-mucosa-do-ureter-he-100x', '', '', '2020-02-11 13:46:09', '2020-02-11 15:46:09', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/4.1-Mucosa-do-ureter-HE-100x.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 3, '2020-02-11 14:04:42', '2020-02-11 16:04:42', '', '4.2 camada muscular da parede do ureter (HE - 100x)', '', 'inherit', 'open', 'closed', '', '4-2-camada-muscular-da-parede-do-ureter-he-100x', '', '', '2020-02-11 14:04:42', '2020-02-11 16:04:42', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/4.2-camada-muscular-da-parede-do-ureter-HE-100x.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 3, '2020-02-11 14:05:49', '2020-02-11 16:05:49', '', '4.3 Córtex renal (HE - 40x)', '', 'inherit', 'open', 'closed', '', '4-3-cortex-renal-he-40x', '', '', '2020-02-11 14:05:49', '2020-02-11 16:05:49', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/4.3-Córtex-renal-HE-40x.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 3, '2020-02-11 14:06:45', '2020-02-11 16:06:45', '', '4.4 Córtex renal - corpúculo renal, túbulos contorcidos proximais e distais (HE - 100x)', '', 'inherit', 'open', 'closed', '', '4-4-cortex-renal-corpuculo-renal-tubulos-contorcidos-proximais-e-distais-he-100x', '', '', '2020-02-11 14:06:45', '2020-02-11 16:06:45', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/4.4-Córtex-renal-corpúculo-renal-túbulos-contorcidos-proximais-e-distais-HE-100x.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 3, '2020-02-11 14:09:30', '2020-02-11 16:09:30', '', '4.5 Córpúculo renal, túbulos contorcidos proximais, túbulo contorcido distal e aparelho justaglomerular ( HE - 200x)', '', 'inherit', 'open', 'closed', '', '4-5-corpuculo-renal-tubulos-contorcidos-proximais-tubulo-contorcido-distal-e-aparelho-justaglomerular-he-200x', '', '', '2020-02-11 14:09:30', '2020-02-11 16:09:30', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/4.5-Córpúculo-renal-túbulos-contorcidos-proximais-túbulo-contorcido-distal-e-aparelho-justaglomerular-HE-200x.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 3, '2020-02-11 14:10:02', '2020-02-11 16:10:02', '', '4.6 Aparelho justaglomerular, túbulos contorcudos proximais e distais, e arteríola aferente (HE - 400x)', '', 'inherit', 'open', 'closed', '', '4-6-aparelho-justaglomerular-tubulos-contorcudos-proximais-e-distais-e-arteriola-aferente-he-400x', '', '', '2020-02-11 14:10:02', '2020-02-11 16:10:02', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/4.6-Aparelho-justaglomerular-túbulos-contorcudos-proximais-e-distais-e-arteríola-aferente-HE-400x.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 3, '2020-02-11 14:11:21', '2020-02-11 16:11:21', '', '4.7 Medula renal - túbulos coletores, alça de Henle e vasos retos (HE - 200x)', '', 'inherit', 'open', 'closed', '', '4-7-medula-renal-tubulos-coletores-alca-de-henle-e-vasos-retos-he-200x', '', '', '2020-02-11 14:11:21', '2020-02-11 16:11:21', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/4.7-Medula-renal-túbulos-coletores-alça-de-Henle-e-vasos-retos-HE-200x.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 3, '2020-02-11 14:12:34', '2020-02-11 16:12:34', '', '4.8 Medula renal - túbulos coletores, alças de Henle e vasos retos (HE - 200x)', '', 'inherit', 'open', 'closed', '', '4-8-medula-renal-tubulos-coletores-alcas-de-henle-e-vasos-retos-he-200x', '', '', '2020-02-11 14:12:34', '2020-02-11 16:12:34', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/02/4.8-Medula-renal-túbulos-coletores-alças-de-Henle-e-vasos-retos-HE-200x.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 3, '2020-03-02 10:16:07', '2020-03-02 13:16:07', '', '3_1_anel_cartilagem_hialina', '', 'inherit', 'open', 'closed', '', '3_1_anel_cartilagem_hialina', '', '', '2020-03-02 10:16:07', '2020-03-02 13:16:07', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_1_anel_cartilagem_hialina.svg', 0, 'attachment', 'image/svg+xml', 0),
(111, 3, '2020-03-02 10:17:40', '2020-03-02 13:17:40', '', '3_1_celulas_adiposas_uniloculares', '', 'inherit', 'open', 'closed', '', '3_1_celulas_adiposas_uniloculares', '', '', '2020-03-02 10:17:40', '2020-03-02 13:17:40', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_1_celulas_adiposas_uniloculares.svg', 0, 'attachment', 'image/svg+xml', 0),
(112, 3, '2020-03-02 10:18:45', '2020-03-02 13:18:45', '', '3_1_epitelio_pseudoestratificado_ciliado_respiratorio', '', 'inherit', 'open', 'closed', '', '3_1_epitelio_pseudoestratificado_ciliado_respiratorio', '', '', '2020-03-02 10:18:45', '2020-03-02 13:18:45', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_1_epitelio_pseudoestratificado_ciliado_respiratorio.svg', 0, 'attachment', 'image/svg+xml', 0),
(113, 3, '2020-03-02 10:20:23', '2020-03-02 13:20:23', '', '3_1_glandulas_seromucosas', '', 'inherit', 'open', 'closed', '', '3_1_glandulas_seromucosas', '', '', '2020-03-02 10:20:23', '2020-03-02 13:20:23', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_1_glandulas_seromucosas.svg', 0, 'attachment', 'image/svg+xml', 0),
(114, 3, '2020-03-02 10:21:26', '2020-03-02 13:21:26', '', '3_1_lamina_propria', '', 'inherit', 'open', 'closed', '', '3_1_lamina_propria', '', '', '2020-03-02 10:21:26', '2020-03-02 13:21:26', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_1_lamina_propria.svg', 0, 'attachment', 'image/svg+xml', 0),
(115, 3, '2020-03-02 10:22:11', '2020-03-02 13:22:11', '', '3_1_pericondrio', '', 'inherit', 'open', 'closed', '', '3_1_pericondrio', '', '', '2020-03-02 10:22:11', '2020-03-02 13:22:11', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_1_pericondrio.svg', 0, 'attachment', 'image/svg+xml', 0),
(116, 3, '2020-03-02 10:24:23', '2020-03-02 13:24:23', '', '3_1_submucosa', '', 'inherit', 'open', 'closed', '', '3_1_submucosa', '', '', '2020-03-02 10:24:23', '2020-03-02 13:24:23', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_1_submucosa.svg', 0, 'attachment', 'image/svg+xml', 0),
(117, 3, '2020-03-02 10:32:38', '2020-03-02 13:32:38', '', '3_2_celulas_basais', '', 'inherit', 'open', 'closed', '', '3_2_celulas_basais', '', '', '2020-03-02 10:32:38', '2020-03-02 13:32:38', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_2_celulas_basais.svg', 0, 'attachment', 'image/svg+xml', 0),
(118, 3, '2020-03-02 10:41:41', '2020-03-02 13:41:41', '', '3_2_celulas_caliciformes', '', 'inherit', 'open', 'closed', '', '3_2_celulas_caliciformes', '', '', '2020-03-02 10:41:41', '2020-03-02 13:41:41', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_2_celulas_caliciformes.svg', 0, 'attachment', 'image/svg+xml', 0),
(119, 3, '2020-03-02 10:42:24', '2020-03-02 13:42:24', '', '3_2_celulas_ciliadas', '', 'inherit', 'open', 'closed', '', '3_2_celulas_ciliadas', '', '', '2020-03-02 10:42:24', '2020-03-02 13:42:24', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_2_celulas_ciliadas.svg', 0, 'attachment', 'image/svg+xml', 0),
(120, 3, '2020-03-02 10:43:24', '2020-03-02 13:43:24', '', '3_2_epitelio_respiratorio', '', 'inherit', 'open', 'closed', '', '3_2_epitelio_respiratorio', '', '', '2020-03-02 10:43:24', '2020-03-02 13:43:24', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_2_epitelio_respiratorio.svg', 0, 'attachment', 'image/svg+xml', 0),
(121, 3, '2020-03-02 11:56:08', '2020-03-02 14:56:08', '', '3_2_lamina_propria', '', 'inherit', 'open', 'closed', '', '3_2_lamina_propria', '', '', '2020-03-02 11:56:08', '2020-03-02 14:56:08', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_2_lamina_propria.svg', 0, 'attachment', 'image/svg+xml', 0),
(122, 3, '2020-03-08 14:04:41', '2020-03-08 17:04:41', '', '3_3_cartilagem_hialina', '', 'inherit', 'open', 'closed', '', '3_3_cartilagem_hialina', '', '', '2020-03-08 14:04:41', '2020-03-08 17:04:41', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_3_cartilagem_hialina.svg', 0, 'attachment', 'image/svg+xml', 0),
(123, 3, '2020-03-08 14:05:32', '2020-03-08 17:05:32', '', '3_3_epitelio_pseudoestratificado_ciliado', '', 'inherit', 'open', 'closed', '', '3_3_epitelio_pseudoestratificado_ciliado', '', '', '2020-03-08 14:05:32', '2020-03-08 17:05:32', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_3_epitelio_pseudoestratificado_ciliado.svg', 0, 'attachment', 'image/svg+xml', 0),
(124, 3, '2020-03-08 14:07:35', '2020-03-08 17:07:35', '', '3_3_musculo_liso', '', 'inherit', 'open', 'closed', '', '3_3_musculo_liso', '', '', '2020-03-08 14:07:35', '2020-03-08 17:07:35', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_3_musculo_liso.svg', 0, 'attachment', 'image/svg+xml', 0),
(125, 3, '2020-03-08 14:08:35', '2020-03-08 17:08:35', '', '3_3_tecido_linfoide_associado_ao_bronquio', '', 'inherit', 'open', 'closed', '', '3_3_tecido_linfoide_associado_ao_bronquio', '', '', '2020-03-08 14:08:35', '2020-03-08 17:08:35', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_3_tecido_linfoide_associado_ao_bronquio.svg', 0, 'attachment', 'image/svg+xml', 0),
(126, 3, '2020-03-08 14:13:46', '2020-03-08 17:13:46', '', '3_4_epitelio_respiratorio', '', 'inherit', 'open', 'closed', '', '3_4_epitelio_respiratorio', '', '', '2020-03-08 14:13:46', '2020-03-08 17:13:46', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_4_epitelio_respiratorio.svg', 0, 'attachment', 'image/svg+xml', 0),
(127, 3, '2020-03-08 14:14:26', '2020-03-08 17:14:26', '', '3_4_lamina_propria', '', 'inherit', 'open', 'closed', '', '3_4_lamina_propria', '', '', '2020-03-08 14:14:26', '2020-03-08 17:14:26', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_4_lamina_propria.svg', 0, 'attachment', 'image/svg+xml', 0),
(128, 3, '2020-03-08 14:15:09', '2020-03-08 17:15:09', '', '3_4_musculo_liso', '', 'inherit', 'open', 'closed', '', '3_4_musculo_liso', '', '', '2020-03-08 14:15:09', '2020-03-08 17:15:09', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_4_musculo_liso.svg', 0, 'attachment', 'image/svg+xml', 0),
(129, 3, '2020-03-08 14:16:00', '2020-03-08 17:16:00', '', '3_4_submucosa', '', 'inherit', 'open', 'closed', '', '3_4_submucosa', '', '', '2020-03-08 14:16:00', '2020-03-08 17:16:00', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_4_submucosa.svg', 0, 'attachment', 'image/svg+xml', 0),
(130, 3, '2020-03-08 14:16:31', '2020-03-08 17:16:31', '', '3_4_glandulas_seromucosas', '', 'inherit', 'open', 'closed', '', '3_4_glandulas_seromucosas', '', '', '2020-03-08 14:16:31', '2020-03-08 17:16:31', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_4_glandulas_seromucosas.svg', 0, 'attachment', 'image/svg+xml', 0),
(131, 3, '2020-03-08 14:17:14', '2020-03-08 17:17:14', '', '3_4_nodulo_linfoide', '', 'inherit', 'open', 'closed', '', '3_4_nodulo_linfoide', '', '', '2020-03-08 14:17:14', '2020-03-08 17:17:14', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_4_nodulo_linfoide.svg', 0, 'attachment', 'image/svg+xml', 0),
(132, 3, '2020-03-08 14:17:36', '2020-03-08 17:17:36', '', '3_4_cartilagem_hialina', '', 'inherit', 'open', 'closed', '', '3_4_cartilagem_hialina', '', '', '2020-03-08 14:17:36', '2020-03-08 17:17:36', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_4_cartilagem_hialina.svg', 0, 'attachment', 'image/svg+xml', 0),
(133, 3, '2020-03-08 14:24:31', '2020-03-08 17:24:31', '', '3_5_aoveolos', '', 'inherit', 'open', 'closed', '', '3_5_aoveolos', '', '', '2020-03-08 14:24:31', '2020-03-08 17:24:31', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_5_aoveolos.svg', 0, 'attachment', 'image/svg+xml', 0),
(134, 3, '2020-03-08 14:25:25', '2020-03-08 17:25:25', '', '3_5_tecido_conjuntivo_fibroelastico', '', 'inherit', 'open', 'closed', '', '3_5_tecido_conjuntivo_fibroelastico', '', '', '2020-03-08 14:25:25', '2020-03-08 17:25:25', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_5_tecido_conjuntivo_fibroelastico.svg', 0, 'attachment', 'image/svg+xml', 0),
(135, 3, '2020-03-08 14:27:12', '2020-03-08 17:27:12', '', '3_5_espacos_aereos', '', 'inherit', 'open', 'closed', '', '3_5_espacos_aereos', '', '', '2020-03-08 14:27:12', '2020-03-08 17:27:12', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_5_espacos_aereos.svg', 0, 'attachment', 'image/svg+xml', 0),
(136, 3, '2020-03-08 14:27:47', '2020-03-08 17:27:47', '', '3_5_septos_interaoveolares', '', 'inherit', 'open', 'closed', '', '3_5_septos_interaoveolares', '', '', '2020-03-08 14:27:47', '2020-03-08 17:27:47', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_5_septos_interaoveolares.svg', 0, 'attachment', 'image/svg+xml', 0),
(137, 3, '2020-03-08 14:32:00', '2020-03-08 17:32:00', '', '3_9_aoveolos', '', 'inherit', 'open', 'closed', '', '3_9_aoveolos', '', '', '2020-03-08 14:32:00', '2020-03-08 17:32:00', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_9_aoveolos.svg', 0, 'attachment', 'image/svg+xml', 0),
(138, 3, '2020-03-08 14:33:10', '2020-03-08 17:33:10', '', '3_9_pleura_visceral', '', 'inherit', 'open', 'closed', '', '3_9_pleura_visceral', '', '', '2020-03-08 14:33:10', '2020-03-08 17:33:10', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_9_pleura_visceral.svg', 0, 'attachment', 'image/svg+xml', 0),
(139, 3, '2020-03-08 14:35:24', '2020-03-08 17:35:24', '', '3_8_aoveolo', '', 'inherit', 'open', 'closed', '', '3_8_aoveolo', '', '', '2020-03-08 14:35:24', '2020-03-08 17:35:24', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_8_aoveolo.svg', 0, 'attachment', 'image/svg+xml', 0),
(140, 3, '2020-03-08 14:35:52', '2020-03-08 17:35:52', '', '3_8_macrofago_aoveolar', '', 'inherit', 'open', 'closed', '', '3_8_macrofago_aoveolar', '', '', '2020-03-08 14:35:52', '2020-03-08 17:35:52', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_8_macrofago_aoveolar.svg', 0, 'attachment', 'image/svg+xml', 0),
(141, 3, '2020-03-08 14:36:25', '2020-03-08 17:36:25', '', '3_8_pneumocitos_tipo_1', '', 'inherit', 'open', 'closed', '', '3_8_pneumocitos_tipo_1', '', '', '2020-03-08 14:36:25', '2020-03-08 17:36:25', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_8_pneumocitos_tipo_1.svg', 0, 'attachment', 'image/svg+xml', 0),
(142, 3, '2020-03-08 14:39:59', '2020-03-08 17:39:59', '', '3_7_espacos_aereos', '', 'inherit', 'open', 'closed', '', '3_7_espacos_aereos', '', '', '2020-03-08 14:39:59', '2020-03-08 17:39:59', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_7_espacos_aereos.svg', 0, 'attachment', 'image/svg+xml', 0),
(143, 3, '2020-03-08 14:40:38', '2020-03-08 17:40:38', '', '3_6_bronquiolos', '', 'inherit', 'open', 'closed', '', '3_6_bronquiolos', '', '', '2020-03-08 14:40:38', '2020-03-08 17:40:38', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_6_bronquiolos.svg', 0, 'attachment', 'image/svg+xml', 0),
(144, 3, '2020-03-08 14:42:01', '2020-03-08 17:42:01', '', '3_6_musculo_liso', '', 'inherit', 'open', 'closed', '', '3_6_musculo_liso', '', '', '2020-03-08 14:42:01', '2020-03-08 17:42:01', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_6_musculo_liso.svg', 0, 'attachment', 'image/svg+xml', 0),
(145, 3, '2020-03-08 14:42:31', '2020-03-08 17:42:31', '', '3_6_arterias_musculares', '', 'inherit', 'open', 'closed', '', '3_6_arterias_musculares', '', '', '2020-03-08 14:42:31', '2020-03-08 17:42:31', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_6_arterias_musculares.svg', 0, 'attachment', 'image/svg+xml', 0),
(146, 3, '2020-03-08 14:44:06', '2020-03-08 17:44:06', '', '3_6_aoveolos', '', 'inherit', 'open', 'closed', '', '3_6_aoveolos', '', '', '2020-03-08 14:44:06', '2020-03-08 17:44:06', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_6_aoveolos.svg', 0, 'attachment', 'image/svg+xml', 0),
(147, 3, '2020-03-08 14:48:35', '2020-03-08 17:48:35', '', '3_7_septos_interaoveolares', '', 'inherit', 'open', 'closed', '', '3_7_septos_interaoveolares', '', '', '2020-03-08 14:48:35', '2020-03-08 17:48:35', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_7_septos_interaoveolares.svg', 0, 'attachment', 'image/svg+xml', 0),
(148, 3, '2020-03-08 14:50:13', '2020-03-08 17:50:13', '', '3_7_tecido conjuntivo', '', 'inherit', 'open', 'closed', '', '3_7_tecido-conjuntivo', '', '', '2020-03-08 14:50:13', '2020-03-08 17:50:13', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_7_tecido-conjuntivo.svg', 0, 'attachment', 'image/svg+xml', 0),
(149, 3, '2020-03-08 14:51:20', '2020-03-08 17:51:20', '', '3_7_pneumocito_tipo_1', '', 'inherit', 'open', 'closed', '', '3_7_pneumocito_tipo_1', '', '', '2020-03-08 14:51:20', '2020-03-08 17:51:20', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_7_pneumocito_tipo_1.svg', 0, 'attachment', 'image/svg+xml', 0),
(150, 3, '2020-03-08 14:52:41', '2020-03-08 17:52:41', '', '3_7_pneumocito_tipo_2', '', 'inherit', 'open', 'closed', '', '3_7_pneumocito_tipo_2', '', '', '2020-03-08 14:52:41', '2020-03-08 17:52:41', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_7_pneumocito_tipo_2.svg', 0, 'attachment', 'image/svg+xml', 0),
(151, 3, '2020-03-08 14:53:57', '2020-03-08 17:53:57', '', '3_7_macrofago', '', 'inherit', 'open', 'closed', '', '3_7_macrofago', '', '', '2020-03-08 14:53:57', '2020-03-08 17:53:57', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_7_macrofago.svg', 0, 'attachment', 'image/svg+xml', 0),
(152, 3, '2020-03-08 14:54:59', '2020-03-08 17:54:59', '', '3_7_veia', '', 'inherit', 'open', 'closed', '', '3_7_veia', '', '', '2020-03-08 14:54:59', '2020-03-08 17:54:59', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_7_veia.svg', 0, 'attachment', 'image/svg+xml', 0),
(153, 3, '2020-03-08 14:55:49', '2020-03-08 17:55:49', '', '3_7_plasma', '', 'inherit', 'open', 'closed', '', '3_7_plasma', '', '', '2020-03-08 14:55:49', '2020-03-08 17:55:49', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_7_plasma.svg', 0, 'attachment', 'image/svg+xml', 0),
(154, 3, '2020-03-08 14:56:35', '2020-03-08 17:56:35', '', '3_7_hemacias', '', 'inherit', 'open', 'closed', '', '3_7_hemacias', '', '', '2020-03-08 14:56:35', '2020-03-08 17:56:35', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_7_hemacias.svg', 0, 'attachment', 'image/svg+xml', 0),
(155, 3, '2020-03-15 09:10:28', '2020-03-15 12:10:28', '', '4_1_epitelio_transicao', '', 'inherit', 'open', 'closed', '', '4_1_epitelio_transicao', '', '', '2020-03-15 09:10:28', '2020-03-15 12:10:28', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_1_epitelio_transicao.svg', 0, 'attachment', 'image/svg+xml', 0),
(156, 3, '2020-03-15 09:10:51', '2020-03-15 12:10:51', '', '4_1_lamina_propria', '', 'inherit', 'open', 'closed', '', '4_1_lamina_propria', '', '', '2020-03-15 09:10:51', '2020-03-15 12:10:51', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_1_lamina_propria.svg', 0, 'attachment', 'image/svg+xml', 0),
(157, 3, '2020-03-15 12:38:59', '2020-03-15 15:38:59', '', '4_2_feixe_celula_muscular_longitudinal', '', 'inherit', 'open', 'closed', '', '4_2_feixe_celula_muscular_longitudinal', '', '', '2020-03-15 12:38:59', '2020-03-15 15:38:59', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_2_feixe_celula_muscular_longitudinal.svg', 0, 'attachment', 'image/svg+xml', 0),
(158, 3, '2020-03-15 12:41:33', '2020-03-15 15:41:33', '', '4_2_feixe_celula_muscular_transversal', '', 'inherit', 'open', 'closed', '', '4_2_feixe_celula_muscular_transversal', '', '', '2020-03-15 12:41:33', '2020-03-15 15:41:33', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_2_feixe_celula_muscular_transversal.svg', 0, 'attachment', 'image/svg+xml', 0),
(159, 3, '2020-03-15 12:42:37', '2020-03-15 15:42:37', '', '4_2_tecido_conjuntivo', '', 'inherit', 'open', 'closed', '', '4_2_tecido_conjuntivo', '', '', '2020-03-15 12:42:37', '2020-03-15 15:42:37', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_2_tecido_conjuntivo.svg', 0, 'attachment', 'image/svg+xml', 0),
(160, 3, '2020-03-15 12:45:55', '2020-03-15 15:45:55', '', '4_3_corpusculos_renais', '', 'inherit', 'open', 'closed', '', '4_3_corpusculos_renais', '', '', '2020-03-15 12:45:55', '2020-03-15 15:45:55', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_3_corpusculos_renais.svg', 0, 'attachment', 'image/svg+xml', 0),
(161, 3, '2020-03-15 12:46:50', '2020-03-15 15:46:50', '', '4_3_tubulos_contorcidos', '', 'inherit', 'open', 'closed', '', '4_3_tubulos_contorcidos', '', '', '2020-03-15 12:46:50', '2020-03-15 15:46:50', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_3_tubulos_contorcidos.svg', 0, 'attachment', 'image/svg+xml', 0),
(162, 3, '2020-03-15 12:49:13', '2020-03-15 15:49:13', '', '4_4_corpusculos_renais', '', 'inherit', 'open', 'closed', '', '4_4_corpusculos_renais', '', '', '2020-03-15 12:49:13', '2020-03-15 15:49:13', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_4_corpusculos_renais.svg', 0, 'attachment', 'image/svg+xml', 0),
(163, 3, '2020-03-15 12:51:15', '2020-03-15 15:51:15', '', '4_4_tubulo_contorcido_proximal', '', 'inherit', 'open', 'closed', '', '4_4_tubulo_contorcido_proximal', '', '', '2020-03-15 12:51:15', '2020-03-15 15:51:15', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_4_tubulo_contorcido_proximal.svg', 0, 'attachment', 'image/svg+xml', 0),
(164, 3, '2020-03-15 12:52:22', '2020-03-15 15:52:22', '', '4_4_tubulo_contorcido_distal', '', 'inherit', 'open', 'closed', '', '4_4_tubulo_contorcido_distal', '', '', '2020-03-15 12:52:22', '2020-03-15 15:52:22', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_4_tubulo_contorcido_distal.svg', 0, 'attachment', 'image/svg+xml', 0),
(165, 3, '2020-03-15 12:52:56', '2020-03-15 15:52:56', '', '4_4_intersticio_renal', '', 'inherit', 'open', 'closed', '', '4_4_intersticio_renal', '', '', '2020-03-15 12:52:56', '2020-03-15 15:52:56', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_4_intersticio_renal.svg', 0, 'attachment', 'image/svg+xml', 0),
(166, 3, '2020-03-15 12:55:39', '2020-03-15 15:55:39', '', '4_4_lamina_parietal', '', 'inherit', 'open', 'closed', '', '4_4_lamina_parietal', '', '', '2020-03-15 12:55:39', '2020-03-15 15:55:39', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_4_lamina_parietal.svg', 0, 'attachment', 'image/svg+xml', 0),
(167, 3, '2020-03-15 12:56:23', '2020-03-15 15:56:23', '', '4_4_lamina_visceral', '', 'inherit', 'open', 'closed', '', '4_4_lamina_visceral', '', '', '2020-03-15 12:56:23', '2020-03-15 15:56:23', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_4_lamina_visceral.svg', 0, 'attachment', 'image/svg+xml', 0),
(168, 3, '2020-03-15 12:57:11', '2020-03-15 15:57:11', '', '4_4_capsula_bowman', '', 'inherit', 'open', 'closed', '', '4_4_capsula_bowman', '', '', '2020-03-15 12:57:11', '2020-03-15 15:57:11', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_4_capsula_bowman.svg', 0, 'attachment', 'image/svg+xml', 0),
(169, 3, '2020-03-15 12:58:21', '2020-03-15 15:58:21', '', '4_4_tubulo_contorcido_proximal', '', 'inherit', 'open', 'closed', '', '4_4_tubulo_contorcido_proximal-2', '', '', '2020-03-15 12:58:21', '2020-03-15 15:58:21', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_4_tubulo_contorcido_proximal-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(170, 3, '2020-03-15 12:59:20', '2020-03-15 15:59:20', '', '4_4_tubulo_contorcido_distal', '', 'inherit', 'open', 'closed', '', '4_4_tubulo_contorcido_distal-2', '', '', '2020-03-15 12:59:20', '2020-03-15 15:59:20', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_4_tubulo_contorcido_distal-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(171, 3, '2020-03-15 12:59:40', '2020-03-15 15:59:40', '', '4_4_macula_densa', '', 'inherit', 'open', 'closed', '', '4_4_macula_densa', '', '', '2020-03-15 12:59:40', '2020-03-15 15:59:40', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_4_macula_densa.svg', 0, 'attachment', 'image/svg+xml', 0),
(172, 3, '2020-03-15 13:09:59', '2020-03-15 16:09:59', '', '4_5_corpusculo_renal', '', 'inherit', 'open', 'closed', '', '4_5_corpusculo_renal', '', '', '2020-03-15 13:09:59', '2020-03-15 16:09:59', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_5_corpusculo_renal.svg', 0, 'attachment', 'image/svg+xml', 0),
(173, 3, '2020-03-15 13:12:04', '2020-03-15 16:12:04', '', '4_5_capsula_bowman', '', 'inherit', 'open', 'closed', '', '4_5_capsula_bowman', '', '', '2020-03-15 13:12:04', '2020-03-15 16:12:04', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_5_capsula_bowman.svg', 0, 'attachment', 'image/svg+xml', 0),
(174, 3, '2020-03-15 13:13:15', '2020-03-15 16:13:15', '', '4_5_espaco_capsular', '', 'inherit', 'open', 'closed', '', '4_5_espaco_capsular', '', '', '2020-03-15 13:13:15', '2020-03-15 16:13:15', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_5_espaco_capsular.svg', 0, 'attachment', 'image/svg+xml', 0),
(175, 3, '2020-03-15 13:14:18', '2020-03-15 16:14:18', '', '4_5_folheto_parietal', '', 'inherit', 'open', 'closed', '', '4_5_folheto_parietal', '', '', '2020-03-15 13:14:18', '2020-03-15 16:14:18', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_5_folheto_parietal.svg', 0, 'attachment', 'image/svg+xml', 0),
(176, 3, '2020-03-15 13:14:53', '2020-03-15 16:14:53', '', '4_5_folheto_visceral', '', 'inherit', 'open', 'closed', '', '4_5_folheto_visceral', '', '', '2020-03-15 13:14:53', '2020-03-15 16:14:53', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_5_folheto_visceral.svg', 0, 'attachment', 'image/svg+xml', 0),
(177, 3, '2020-03-15 13:16:25', '2020-03-15 16:16:25', '', '4_5_macula_densa', '', 'inherit', 'open', 'closed', '', '4_5_macula_densa', '', '', '2020-03-15 13:16:25', '2020-03-15 16:16:25', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_5_macula_densa.svg', 0, 'attachment', 'image/svg+xml', 0),
(178, 3, '2020-03-15 13:16:56', '2020-03-15 16:16:56', '', '4_5_tubulo_contorcido_distal', '', 'inherit', 'open', 'closed', '', '4_5_tubulo_contorcido_distal', '', '', '2020-03-15 13:16:56', '2020-03-15 16:16:56', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_5_tubulo_contorcido_distal.svg', 0, 'attachment', 'image/svg+xml', 0),
(179, 3, '2020-03-15 13:18:01', '2020-03-15 16:18:01', '', '4_5_tubulo_contorcido_proximal', '', 'inherit', 'open', 'closed', '', '4_5_tubulo_contorcido_proximal', '', '', '2020-03-15 13:18:01', '2020-03-15 16:18:01', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_5_tubulo_contorcido_proximal.svg', 0, 'attachment', 'image/svg+xml', 0),
(180, 3, '2020-03-15 13:33:06', '2020-03-15 16:33:06', '', '4_6_intersticio_renal', '', 'inherit', 'open', 'closed', '', '4_6_intersticio_renal', '', '', '2020-03-15 13:33:06', '2020-03-15 16:33:06', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_6_intersticio_renal.svg', 0, 'attachment', 'image/svg+xml', 0),
(181, 3, '2020-03-15 13:35:30', '2020-03-15 16:35:30', '', '4_6_capilares_peritubulares', '', 'inherit', 'open', 'closed', '', '4_6_capilares_peritubulares', '', '', '2020-03-15 13:35:30', '2020-03-15 16:35:30', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_6_capilares_peritubulares.svg', 0, 'attachment', 'image/svg+xml', 0),
(182, 3, '2020-03-15 13:36:25', '2020-03-15 16:36:25', '', '4_6_tubulos_contorcidos_proximais', '', 'inherit', 'open', 'closed', '', '4_6_tubulos_contorcidos_proximais', '', '', '2020-03-15 13:36:25', '2020-03-15 16:36:25', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_6_tubulos_contorcidos_proximais.svg', 0, 'attachment', 'image/svg+xml', 0),
(183, 3, '2020-03-15 13:37:44', '2020-03-15 16:37:44', '', '4_6_tubulos_contorcidos_distais', '', 'inherit', 'open', 'closed', '', '4_6_tubulos_contorcidos_distais', '', '', '2020-03-15 13:37:44', '2020-03-15 16:37:44', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_6_tubulos_contorcidos_distais.svg', 0, 'attachment', 'image/svg+xml', 0),
(184, 3, '2020-03-15 13:38:30', '2020-03-15 16:38:30', '', '4_6_macula_densa', '', 'inherit', 'open', 'closed', '', '4_6_macula_densa', '', '', '2020-03-15 13:38:30', '2020-03-15 16:38:30', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_6_macula_densa.svg', 0, 'attachment', 'image/svg+xml', 0),
(185, 3, '2020-03-15 13:39:58', '2020-03-15 16:39:58', '', '4_6_arteriola_aferente', '', 'inherit', 'open', 'closed', '', '4_6_arteriola_aferente', '', '', '2020-03-15 13:39:58', '2020-03-15 16:39:58', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_6_arteriola_aferente.svg', 0, 'attachment', 'image/svg+xml', 0),
(186, 3, '2020-03-15 13:45:39', '2020-03-15 16:45:39', '', '4_7_alca_henle', '', 'inherit', 'open', 'closed', '', '4_7_alca_henle', '', '', '2020-03-15 13:45:39', '2020-03-15 16:45:39', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_7_alca_henle.svg', 0, 'attachment', 'image/svg+xml', 0),
(187, 3, '2020-03-15 13:46:38', '2020-03-15 16:46:38', '', '4_7_tubulos_coletores', '', 'inherit', 'open', 'closed', '', '4_7_tubulos_coletores', '', '', '2020-03-15 13:46:38', '2020-03-15 16:46:38', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_7_tubulos_coletores.svg', 0, 'attachment', 'image/svg+xml', 0),
(188, 3, '2020-03-15 13:47:28', '2020-03-15 16:47:28', '', '4_7_vasos_retos', '', 'inherit', 'open', 'closed', '', '4_7_vasos_retos', '', '', '2020-03-15 13:47:28', '2020-03-15 16:47:28', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_7_vasos_retos.svg', 0, 'attachment', 'image/svg+xml', 0),
(189, 3, '2020-03-15 13:49:20', '2020-03-15 16:49:20', '', '4_8_alca_henle', '', 'inherit', 'open', 'closed', '', '4_8_alca_henle', '', '', '2020-03-15 13:49:20', '2020-03-15 16:49:20', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_8_alca_henle.svg', 0, 'attachment', 'image/svg+xml', 0),
(190, 3, '2020-03-15 13:50:19', '2020-03-15 16:50:19', '', '4_8_tubulos_coletores', '', 'inherit', 'open', 'closed', '', '4_8_tubulos_coletores', '', '', '2020-03-15 13:50:19', '2020-03-15 16:50:19', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_8_tubulos_coletores.svg', 0, 'attachment', 'image/svg+xml', 0),
(191, 3, '2020-03-15 13:51:51', '2020-03-15 16:51:51', '', '4_8_inersticio_renal', '', 'inherit', 'open', 'closed', '', '4_8_inersticio_renal', '', '', '2020-03-15 13:51:51', '2020-03-15 16:51:51', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_8_inersticio_renal.svg', 0, 'attachment', 'image/svg+xml', 0),
(192, 3, '2020-03-15 13:52:13', '2020-03-15 16:52:13', '', '4_8_vasos_retos', '', 'inherit', 'open', 'closed', '', '4_8_vasos_retos', '', '', '2020-03-15 13:52:13', '2020-03-15 16:52:13', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/4_8_vasos_retos.svg', 0, 'attachment', 'image/svg+xml', 0),
(193, 3, '2020-03-18 14:40:14', '2020-03-18 17:40:14', '', '3.9 Alvéolos e pleura visceral (HE – 100x)', '', 'inherit', 'open', 'closed', '', '3-9-alveolos-e-pleura-visceral-he-100x', '', '', '2020-03-18 14:40:14', '2020-03-18 17:40:14', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3.9-Alvéolos-e-pleura-visceral-HE-–-100x.svg', 0, 'attachment', 'image/svg+xml', 0),
(194, 3, '2020-03-18 14:44:21', '2020-03-18 17:44:21', '', '3_8_pneumocitos_tipo_2', '', 'inherit', 'open', 'closed', '', '3_8_pneumocitos_tipo_2', '', '', '2020-03-18 14:44:21', '2020-03-18 17:44:21', '', 0, 'http://histonline.ics.ufba.br/adm/wp-content/uploads/2020/03/3_8_pneumocitos_tipo_2.svg', 0, 'attachment', 'image/svg+xml', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `wp_termmeta`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=63 ;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '109'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:13:"177.193.222.0";}'),
(20, 2, 'nickname', 'alexandre'),
(21, 2, 'first_name', 'Alexandre'),
(22, 2, 'last_name', 'Espírito Santo'),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(32, 2, 'wp_user_level', '10'),
(33, 2, 'dismissed_wp_pointers', ''),
(35, 3, 'nickname', 'lorenaguedes'),
(36, 3, 'first_name', 'Lorena'),
(37, 3, 'last_name', 'Guedes'),
(38, 3, 'description', ''),
(39, 3, 'rich_editing', 'true'),
(40, 3, 'syntax_highlighting', 'true'),
(41, 3, 'comment_shortcuts', 'false'),
(42, 3, 'admin_color', 'fresh'),
(43, 3, 'use_ssl', '0'),
(44, 3, 'show_admin_bar_front', 'true'),
(45, 3, 'locale', ''),
(46, 3, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(47, 3, 'wp_user_level', '10'),
(48, 3, 'dismissed_wp_pointers', ''),
(49, 1, 'wp_user-settings', 'libraryContent=browse'),
(50, 1, 'wp_user-settings-time', '1577198722'),
(54, 3, 'wp_dashboard_quick_press_last_post_id', '61'),
(55, 3, 'community-events-location', 'a:1:{s:2:"ip";s:11:"189.77.20.0";}'),
(56, 3, 'wp_user-settings', 'libraryContent=browse'),
(57, 3, 'wp_user-settings-time', '1578320807'),
(58, 3, 'session_tokens', 'a:1:{s:64:"f1c543ba7a6329d9b3a4b40507703bdc5010f85ba10f3332ad1ed6fcff33b60f";a:4:{s:10:"expiration";i:1584725724;s:2:"ip";s:14:"200.128.56.104";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36";s:5:"login";i:1584552924;}}'),
(59, 1, 'session_tokens', 'a:1:{s:64:"9be3e40d5d1525cf116648b91a61fd179e7ff860c3789828505ec69f9963faee";a:4:{s:10:"expiration";i:1583061385;s:2:"ip";s:14:"200.128.56.104";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36";s:5:"login";i:1582888585;}}'),
(61, 2, 'wp_dashboard_quick_press_last_post_id', '60'),
(62, 2, 'community-events-location', 'a:1:{s:2:"ip";s:12:"187.105.64.0";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BQN/Q8/XHjmSmZlSrJb5BNceVCuDFd.', 'root', 'filiperocklopes@gmail.com', '', '2019-12-04 02:07:35', '', 0, 'root'),
(2, 'alexandre', '$P$BtW82PaQCcR2SfTK2vAf8hQy028DU40', 'alexandre', 'arespiritosanto@ufba.br', '', '2019-12-04 02:27:35', '1575426455:$P$BcMcyuSW/WeXbGuthyuavR8pYuxxF8.', 0, 'Alexandre Espírito Santo'),
(3, 'lorenaguedes', '$P$B4nzOnefE4BgBFnW4Zli6DzNepFKei.', 'lorenaguedes', 'loguedes.lg@gmail.com', '', '2019-12-04 18:50:46', '1575485446:$P$BuTnRoDN9zATaj775oJhrfPCB.Nqtv.', 0, 'Lorena Guedes');

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `wp_laminas`
--
ALTER TABLE `wp_laminas`
  ADD CONSTRAINT `wp_laminas_ibfk_1` FOREIGN KEY (`ID_materia`) REFERENCES `wp_laminas_materias` (`ID`);

--
-- Restrições para a tabela `wp_laminas_assuntos`
--
ALTER TABLE `wp_laminas_assuntos`
  ADD CONSTRAINT `wp_laminas_assuntos_ibfk_1` FOREIGN KEY (`ID_materia`) REFERENCES `wp_laminas_materias` (`ID`);

