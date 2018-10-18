-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 01-Out-2018 às 19:58
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webpost`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `confsite`
--

DROP TABLE IF EXISTS `confsite`;
CREATE TABLE IF NOT EXISTS `confsite` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_nome` text COLLATE utf8_unicode_ci NOT NULL,
  `co_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `co_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `co_link3` text COLLATE utf8_unicode_ci NOT NULL,
  `co_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `co_desc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `co_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `confsite`
--

INSERT INTO `confsite` (`co_id`, `co_nome`, `co_link1`, `co_link2`, `co_link3`, `co_img`, `co_desc`, `co_data`) VALUES
(7, 'caracol backpacks', 'PortfÃ³lio', 'Sobre', 'Contato', 'posts/perfil.jpg', 'Loren Inpsun', '2018-09-14 15:22:44'),
(8, 'caracol backpacks ', 'PortfÃ³lio', 'Sobre', 'Contato', 'posts/perfil.jpg', ' A qualidade nunca sai de moda', '2018-09-13 14:37:14'),
(9, 'caracol backpacks', 'PortfÃ³lio', 'Sobre', 'Contato', 'posts/perfil.jpg', 'Loren Inpsun', '2018-09-14 14:02:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `us_id` int(11) NOT NULL AUTO_INCREMENT,
  `us_nome` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `us_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `us_pass` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `us_chave` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `us_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`us_id`, `us_nome`, `us_email`, `us_pass`, `us_chave`, `us_data`) VALUES
(3, 'admin', 'fa@fa.com', '21232f297a57a5a743894a0e4a801fc3', '4f571d0a019d941e2720017cdbb91b31', '2015-12-28 14:47:40'),
(4, 'beto', 'betoars360@hotmail.com', '123456', '123456', '2018-09-12 17:53:12'),
(5, 'elaine', 'ex_nane@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '47b6ae47e1172d36c1daeaf3724de203', '2018-09-12 17:54:19'),
(6, 'beto', 'betoars360@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '3b2512ad9ec25b32686721515c9af74e', '2018-09-12 18:28:46'),
(7, 'beto costa', 'betoars360@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'a4ed76de1545b3d8a6c44b620f825d07', '2018-09-12 18:29:46'),
(8, 'elaine costa', 'betocosta4158@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'f4fe4c1a7ac816a72173807786e996c0', '2018-09-12 18:32:51'),
(9, 'elaine cerqueira', 'ex_nane@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'fa5e4d0338ca88319f64294fac4b6293', '2018-09-12 18:39:02'),
(10, 'elaine', 'ex_nane@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'ac53d2d76778ea314c984db5431bce6c', '2018-09-12 18:41:57'),
(11, 'elaine cerqueira', 'betocosta2009@bol.com.br', '202cb962ac59075b964b07152d234b70', '10ce2405b731b2c2c3d28070ddbd36c1', '2018-09-12 18:44:02'),
(12, 'elaine', 'ex_nane@hotmail.com', '202cb962ac59075b964b07152d234b70', '', '2018-09-12 19:01:40'),
(13, 'elaine', 'ex_nane@hotmail.com', '202cb962ac59075b964b07152d234b70', 'f14d9248353228e89cb0d8c295a769c2', '2018-09-12 19:04:21'),
(14, 'Helisson teste', 'teste@teste.com', '698dc19d489c4e4db73e28a713eab07b', 'a3b4fe8341d674f5c1f67098d2bd75c6', '2018-09-12 19:05:22'),
(15, 'Helisson', 'ex_nane@hotmail.com', '202cb962ac59075b964b07152d234b70', '36dc901597c8d6c577790ff80f471cf6', '2018-09-12 19:11:57'),
(16, 'Beto voador', 'ex_nane@hotmail.com', '202cb962ac59075b964b07152d234b70', '915aad7460995557ad72e5327c6befa2', '2018-09-12 19:16:29'),
(17, 'elaine teste', 'ex_nane@hotmail.com', '698dc19d489c4e4db73e28a713eab07b', '7b3f804c88b5617b477858fda5a74604', '2018-09-12 19:19:58'),
(18, 'beto teste', 'ex_nane@hotmail.com', '698dc19d489c4e4db73e28a713eab07b', '87ea1765684ce988ba5e18b6b1aecfca', '2018-09-12 19:23:59'),
(19, 'elaine teste 2', 'ex_nane@hotmail.com', '202cb962ac59075b964b07152d234b70', '583f232e78a01622c933a409a6d17513', '2018-09-12 19:29:54'),
(20, 'elaine teste 3', 'ex_nane@hotmail.com', '202cb962ac59075b964b07152d234b70', '3724d02397783047e682ff8b86f6f51d', '2018-09-12 19:31:05'),
(21, 'elaine teste 4', 'ex_nane@hotmail.com', '202cb962ac59075b964b07152d234b70', 'cbfcc3dfe8ca4d3bd9790d49c8f38619', '2018-09-12 19:32:09'),
(22, 'elaine teste 5', 'ex_nane@hotmail.com', '202cb962ac59075b964b07152d234b70', '3e535c9dd87068d6ccb88e80dc344683', '2018-09-12 19:34:57'),
(23, 'Helisson teste 2', 'ex_nane@hotmail.com', '202cb962ac59075b964b07152d234b70', 'f60483562304f1b85454370c76923348', '2018-09-12 19:36:04'),
(24, 'elaine', 'ex_nane@hotmail.com', '202cb962ac59075b964b07152d234b70', '49274d3ce2d6403f0f2458c35ac81e39', '2018-09-12 19:37:50'),
(25, 'beto teste 5', 'ex_nane@hotmail.com', '202cb962ac59075b964b07152d234b70', '283284341f8013def24c5831853a02ba', '2018-09-12 19:52:37'),
(26, 'Beto voador 2', 'betoars360@hotmail.com', '698dc19d489c4e4db73e28a713eab07b', '125971df8171835ccd3721f055a7e28b', '2018-09-12 19:55:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
CREATE TABLE IF NOT EXISTS `portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `desc_img` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `portfolio`
--

INSERT INTO `portfolio` (`id`, `titulo`, `link`, `img`, `desc_img`) VALUES
(40, 'mochila 1', 'modal1', 'img/portfolio/g1.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.'),
(41, 'mochila 2', 'modal2', 'img/portfolio/g2.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.'),
(42, 'mochila 3', 'modal3', 'img/portfolio/g3.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.'),
(43, 'mochila 4', 'modal4', 'img/portfolio/g4.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.'),
(44, 'mochila 4', 'modal4', 'img/portfolio/g4.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.'),
(45, 'mochila 5', 'modal5', 'img/portfolio/g5.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.'),
(46, 'mochila 6', 'modal6', 'img/portfolio/g6.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.'),
(47, 'mochila 7', 'modal7', 'img/portfolio/g7.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.'),
(48, 'mochila 8', 'modal8', 'img/portfolio/g9.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.'),
(49, 'mochila 10', 'modal10', 'img/portfolio/g11.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.'),
(50, 'mochila 12', 'modal12', 'img/portfolio/g12.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.'),
(51, 'mochila 10', 'modal10', 'img/portfolio/g1.jpg', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `slides`
--

INSERT INTO `slides` (`id`, `titulo`, `desc_img`, `created`, `modified`, `img`) VALUES
(1, 'Welcome to <strong>Fame</strong>', 'Generate a flood of new business with the<br> power of a digital media platform', '2018-09-01 00:00:00', NULL, 'header-back.png'),
(2, 'Welcome to <strong>Fame</strong>', 'Generate a flood of new business with the<br> power of a digital media platform', '2018-09-01 00:00:00', NULL, 'header-bg-1.jpg'),
(3, 'The way of <strong>Success</strong>', 'At vero eos et accusamus et iusto odio dignissimos<br> ducimus qui blanditiis praesentium voluptatum', NULL, NULL, 'galaxy.jpg'),
(25, 'Cadastro 3', 'cadastro 3', NULL, NULL, 'BannerSite.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sobre`
--

DROP TABLE IF EXISTS `sobre`;
CREATE TABLE IF NOT EXISTS `sobre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `texto1` text NOT NULL,
  `texto2` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sobre`
--

INSERT INTO `sobre` (`id`, `titulo`, `texto1`, `texto2`) VALUES
(1, 'Sobre', 'Lorem Ipsum Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu nÃ£o sÃ³ a cinco sÃ©culos, como tambÃ©m ao salto para a editoraÃ§Ã£o eletrÃ´nica, permanecendo essencialmente inalterado. Se popularizou na dÃ©cada de 60, quando a Letraset lanÃ§ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoraÃ§Ã£o eletrÃ´nica como Aldus PageMaker.', 'Lorem Ipsum Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu nÃ£o sÃ³ a cinco sÃ©culos, como tambÃ©m ao salto para a editoraÃ§Ã£o eletrÃ´nica, permanecendo essencialmente inalterado. Se popularizou na dÃ©cada de 60, quando a Letraset lanÃ§ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoraÃ§Ã£o eletrÃ´nica como Aldus PageMaker.'),
(2, 'Sobre', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu nÃ£o sÃ³ a cinco sÃ©culos, como tambÃ©m ao salto para a editoraÃ§Ã£o eletrÃ´nica, permanecendo essencialmente inalterado. Se popularizou na dÃ©cada de 60, quando a Letraset lanÃ§ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoraÃ§Ã£o eletrÃ´nica como Aldus PageMaker.', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu nÃ£o sÃ³ a cinco sÃ©culos, como tambÃ©m ao salto para a editoraÃ§Ã£o eletrÃ´nica, permanecendo essencialmente inalterado. Se popularizou na dÃ©cada de 60, quando a Letraset lanÃ§ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoraÃ§Ã£o eletrÃ´nica como Aldus PageMaker.'),
(3, 'Sobre', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu nÃ£o sÃ³ a cinco sÃ©culos, como tambÃ©m ao salto para a editoraÃ§Ã£o eletrÃ´nica, permanecendo essencialmente inalterado. Se popularizou na dÃ©cada de 60, quando a Letraset lanÃ§ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoraÃ§Ã£o eletrÃ´nica como Aldus PageMaker.', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu nÃ£o sÃ³ a cinco sÃ©culos, como tambÃ©m ao salto para a editoraÃ§Ã£o eletrÃ´nica, permanecendo essencialmente inalterado. Se popularizou na dÃ©cada de 60, quando a Letraset lanÃ§ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoraÃ§Ã£o eletrÃ´nica como Aldus PageMaker.'),
(4, 'Sobre teste', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu nÃ£o sÃ³ a cinco sÃ©culos, como tambÃ©m ao salto para a editoraÃ§Ã£o eletrÃ´nica, permanecendo essencialmente inalterado. Se popularizou na dÃ©cada de 60, quando a Letraset lanÃ§ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoraÃ§Ã£o eletrÃ´nica como Aldus PageMaker.', 'Ã© simplesmente uma simulaÃ§Ã£o de texto da indÃºstria tipogrÃ¡fica e de impressos, e vem sendo utilizado desde o sÃ©culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu nÃ£o sÃ³ a cinco sÃ©culos, como tambÃ©m ao salto para a editoraÃ§Ã£o eletrÃ´nica, permanecendo essencialmente inalterado. Se popularizou na dÃ©cada de 60, quando a Letraset lanÃ§ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoraÃ§Ã£o eletrÃ´nica como Aldus PageMaker.'),
(5, 'Sobre teste 2', '\r\nPorque nÃ³s o usamos?\r\n\r\nÃ‰ um fato conhecido de todos que um leitor se distrairÃ¡ com o conteÃºdo de texto legÃ­vel de uma pÃ¡gina quando estiver examinando sua diagramaÃ§Ã£o. A vantagem de usar Lorem Ipsum Ã© que ele tem uma distribuiÃ§Ã£o normal de letras, ao contrÃ¡rio de \"ConteÃºdo aqui, conteÃºdo aqui\", fazendo com que ele tenha uma aparÃªncia similar a de um texto legÃ­vel. Muitos softwares de publicaÃ§Ã£o e editores de pÃ¡ginas na internet agora usam Lorem Ipsum como texto-modelo padrÃ£o, e uma rÃ¡pida busca por \'lorem ipsum\' mostra vÃ¡rios websites ainda em sua fase de construÃ§Ã£o. VÃ¡rias versÃµes novas surgiram ao longo dos anos, eventualmente por acidente, e Ã s vezes de propÃ³sito (injetando humor, e coisas do gÃªnero).\r\n', '\r\nPorque nÃ³s o usamos?\r\n\r\nÃ‰ um fato conhecido de todos que um leitor se distrairÃ¡ com o conteÃºdo de texto legÃ­vel de uma pÃ¡gina quando estiver examinando sua diagramaÃ§Ã£o. A vantagem de usar Lorem Ipsum Ã© que ele tem uma distribuiÃ§Ã£o normal de letras, ao contrÃ¡rio de \"ConteÃºdo aqui, conteÃºdo aqui\", fazendo com que ele tenha uma aparÃªncia similar a de um texto legÃ­vel. Muitos softwares de publicaÃ§Ã£o e editores de pÃ¡ginas na internet agora usam Lorem Ipsum como texto-modelo padrÃ£o, e uma rÃ¡pida busca por \'lorem ipsum\' mostra vÃ¡rios websites ainda em sua fase de construÃ§Ã£o. VÃ¡rias versÃµes novas surgiram ao longo dos anos, eventualmente por acidente, e Ã s vezes de propÃ³sito (injetando humor, e coisas do gÃªnero).\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
