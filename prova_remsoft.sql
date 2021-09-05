-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Set-2021 às 14:11
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `prova_remsoft`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tarefa`
--

CREATE TABLE `tarefa` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `finalizado` tinyint(1) NOT NULL,
  `dt_finalizado` datetime DEFAULT NULL,
  `dt_criacao` datetime NOT NULL,
  `dt_ult_alt` datetime DEFAULT NULL,
  `excluido` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tarefa`
--

INSERT INTO `tarefa` (`id`, `descricao`, `finalizado`, `dt_finalizado`, `dt_criacao`, `dt_ult_alt`, `excluido`) VALUES
(12, 'tarefa do dia', 0, NULL, '2021-09-04 18:53:53', '2021-09-05 05:50:08', 1),
(13, 'tarefa do dia', 0, NULL, '2021-09-04 18:55:38', '2021-09-05 06:12:35', 1),
(14, 'comprar panela', 0, NULL, '2021-09-04 19:07:14', '2021-09-05 05:50:14', 1),
(15, 'tatata', 0, NULL, '2021-09-05 04:59:03', '2021-09-05 06:12:36', 1),
(16, 'tatat', 1, '2021-09-05 06:12:11', '2021-09-05 04:59:19', '2021-09-05 06:12:37', 1),
(17, 'Fazer cafe da manhã', 0, NULL, '2021-09-05 05:00:03', '2021-09-05 06:12:32', 1),
(18, 'Organizar documentos documentos para entregar a contabilidade', 1, '2021-09-05 07:39:06', '2021-09-05 06:13:12', '2021-09-05 07:39:15', 1),
(19, 'Verificar estoque e fazer pedido dos produtos pendentes.', 1, '2021-09-05 06:21:46', '2021-09-05 06:13:44', '2021-09-05 06:22:21', 1),
(20, 'Compra miojo de frango e um refri.', 0, NULL, '2021-09-05 06:14:14', '2021-09-05 06:22:28', 1),
(21, 'engraxar sapatoengraxar sapatoengraxar sapatoengraxar sapatoengraxar sapatoengraxar sapatoengraxar sapatoengraxar sapatoengraxar sapato', 0, NULL, '2021-09-05 06:14:57', '2021-09-05 06:15:06', 1),
(22, 'engraxar sapato', 0, NULL, '2021-09-05 06:15:11', '2021-09-05 07:18:13', 1),
(23, 'come batata', 1, '2021-09-05 06:21:43', '2021-09-05 06:21:39', '2021-09-05 06:22:31', 1),
(24, 'Organizar documentos documentos para entregar a contabilidadeOrganizar documentos documentos para entregar a contabilidade', 1, '2021-09-05 07:18:05', '2021-09-05 06:23:22', '2021-09-05 07:18:11', 1),
(25, 'Organizar documentos documentos para entregar a contabilidadeOrganizar documentos documentos para entregar a contabilidadeOrganizar documentos documentos para entregar a contabilidadeOrganizar documentos documentos para entregar a contabilidade', 0, NULL, '2021-09-05 06:24:18', '2021-09-05 07:18:14', 1),
(26, 'comer sapato de limpar batata', 1, '2021-09-05 07:39:07', '2021-09-05 07:18:24', '2021-09-05 07:39:14', 1),
(27, 'wwwwwwwww', 1, '2021-09-05 07:42:04', '2021-09-05 07:41:00', '2021-09-05 07:58:17', 1),
(28, 'wwwwwww', 0, NULL, '2021-09-05 07:41:04', '2021-09-05 07:58:18', 1),
(29, 'eeeeeeeeee', 0, NULL, '2021-09-05 07:41:10', '2021-09-05 07:58:19', 1),
(30, 'ddddddddddddddddddddddddddddddddddddddddddddd', 1, '2021-09-05 07:42:07', '2021-09-05 07:41:15', '2021-09-05 07:58:20', 1),
(31, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 1, '2021-09-05 07:42:10', '2021-09-05 07:41:23', '2021-09-05 07:58:21', 1),
(32, 'ffffffffffffffffffffffffffffffffffffffffffff', 0, NULL, '2021-09-05 07:41:30', '2021-09-05 07:58:22', 1),
(33, 'ggggggggggggggggggggggggggggggggggggggggg', 0, NULL, '2021-09-05 07:41:36', '2021-09-05 07:58:23', 1),
(34, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, NULL, '2021-09-05 07:41:40', '2021-09-05 07:58:24', 1),
(35, 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 0, NULL, '2021-09-05 07:41:47', '2021-09-05 07:58:25', 1),
(36, 'kkkkkkkkkkkkkkkkkkkkkkk', 0, NULL, '2021-09-05 07:41:52', '2021-09-05 07:58:25', 1),
(37, 'Comer banana', 1, '2021-09-05 08:01:24', '2021-09-05 08:00:31', '2021-09-05 09:07:04', 1),
(38, 'Comer batata Comer batata Comer batata Comer batata ', 0, NULL, '2021-09-05 08:00:39', '2021-09-05 08:00:57', 1),
(39, 'Comer batata Comer batata Comer batata Comer batata Comer batata ', 0, NULL, '2021-09-05 08:00:45', '2021-09-05 08:00:52', 1),
(40, 'Comer batata Comer batata Comer batata Comer batata Comer batata Comer batata Comer batata ', 0, NULL, '2021-09-05 08:01:05', '2021-09-05 09:07:06', 1),
(41, 'tata', 1, '2021-09-05 08:47:15', '2021-09-05 08:47:12', '2021-09-05 09:07:07', 1),
(42, 'Comprar super bonde', 0, NULL, '2021-09-05 09:07:29', NULL, 0),
(43, 'fazer café ', 1, '2021-09-05 09:08:51', '2021-09-05 09:07:44', '2021-09-05 09:08:51', 0),
(44, 'Levar documentos para contabilidade', 0, NULL, '2021-09-05 09:08:00', NULL, 0),
(45, 'Engraxar sapato', 1, '2021-09-05 09:08:54', '2021-09-05 09:08:16', '2021-09-05 09:08:54', 0),
(46, 'Comprar presente de casamento de fulano dos treco', 0, NULL, '2021-09-05 09:08:48', NULL, 0),
(47, 'Buscar Andre na escolinha', 0, NULL, '2021-09-05 09:09:41', NULL, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tarefa`
--
ALTER TABLE `tarefa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tarefa`
--
ALTER TABLE `tarefa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
