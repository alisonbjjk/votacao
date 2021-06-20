-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Jun-2021 às 22:19
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mix_projeto`
--
CREATE DATABASE IF NOT EXISTS `mix_projeto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mix_projeto`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `login_usuario` varchar(64) CHARACTER SET utf8 NOT NULL,
  `senha_usuario` varchar(64) CHARACTER SET utf8 NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 NOT NULL,
  `cpf_user` varchar(15) NOT NULL,
  `rg_user` varchar(10) NOT NULL,
  `dt_nasc_user` date NOT NULL,
  `estado_civil` varchar(15) NOT NULL,
  `endereco_user` varchar(60) NOT NULL,
  `bairro_user` varchar(30) NOT NULL,
  `code_estados` int(6) NOT NULL,
  `cod_estados` int(6) DEFAULT NULL,
  `code_cidades` int(6) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `ativo` enum('1','0') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `permissao_usuario` enum('1','2','3') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `liberado` enum('1','0') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `dt_criação` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `login_usuario`, `senha_usuario`, `nome`, `email`, `cpf_user`, `rg_user`, `dt_nasc_user`, `estado_civil`, `endereco_user`, `bairro_user`, `code_estados`, `cod_estados`, `code_cidades`, `telefone`, `ativo`, `permissao_usuario`, `liberado`, `dt_criação`) VALUES
(6, 'c9270be233bd656b46624c287e7edcb0', '55a1239bc75f6a5c5f5b586a5c13bb4e', 'alison', 'alisonbjjk@gmail.com', '055.868.134-40', '2.123.234', '1999-05-13', '1', 'rua dos testes', '', 21, NULL, 7124, '(84)9999-9999', '1', '1', '1', '2020-06-17 14:52:53'),
(7, 'c9270be233bd656b46624c287e7edcb0', '55a1239bc75f6a5c5f5b586a5c13bb4e', 'alison', 'teste@gmail.com', '055.868.134-40', '2.123.234', '1999-05-13', '1', 'rua dos testes', 'bela vista', 21, NULL, 7124, '(84)9999-9999', '1', '1', '1', '2020-06-17 14:52:53'),
(8, '3374e356163c4d5d26cfa019a7470b58', '55a1239bc75f6a5c5f5b586a5c13bb4e', 'alison tavares', 'teste@gmail.com', '373.091.960-15', '2.123.234', '1999-05-13', '3', 'rua dos testes', 'bela vista', 21, NULL, 7155, '(84)9999-9999', '1', '1', '1', '2020-06-17 14:52:53'),
(9, '4545657fa0bee4fda7c0d90bd6ac991d', '55a1239bc75f6a5c5f5b586a5c13bb4e', 'testando ', 'teste@gmail.com', '163.897.490-07', '2.123.123', '1970-01-01', '4', 'testando', 'alecrim', 21, NULL, 7124, '(84)9999-9999', '1', '1', '1', '2020-06-17 14:52:53'),
(10, '4545657fa0bee4fda7c0d90bd6ac991d', '55a1239bc75f6a5c5f5b586a5c13bb4e', 'testando ', 'teste@gmail.com', '163.897.490-07', '2.123.234', '1985-10-15', '4', 'testando', 'alecrim', 21, NULL, 7124, '(84)9999-9999', '1', '1', '1', '2020-06-17 14:52:53'),
(11, '4545657fa0bee4fda7c0d90bd6ac991d', '55a1239bc75f6a5c5f5b586a5c13bb4e', 'testando ', 'teste@gmail.com', '163.897.490-07', '2.123.234', '1985-10-15', '4', 'testando', 'alecrim', 21, NULL, 7124, '(84)9999-9999', '1', '1', '1', '2020-06-17 14:52:53'),
(12, '4545657fa0bee4fda7c0d90bd6ac991d', '55a1239bc75f6a5c5f5b586a5c13bb4e', 'testando ', 'teste@gmail.com', '163.897.490-07', '2.123.234', '1985-10-15', '4', 'testando', 'alecrim', 21, NULL, 7124, '(84)9999-9999', '1', '1', '1', '2020-06-17 14:52:53'),
(13, '4545657fa0bee4fda7c0d90bd6ac991d', '55a1239bc75f6a5c5f5b586a5c13bb4e', 'testando ', 'teste@gmail.com', '163.897.490-07', '2.123.234', '1985-10-15', '4', 'testando', 'alecrim', 21, NULL, 7124, '(84)9999-9999', '1', '1', '1', '2020-06-17 14:52:53'),
(14, '4545657fa0bee4fda7c0d90bd6ac991d', '55a1239bc75f6a5c5f5b586a5c13bb4e', 'testando ', 'teste@gmail.com', '163.897.490-07', '2.123.234', '1985-10-15', '4', 'testando', 'alecrim', 21, NULL, 7124, '(84)9999-9999', '1', '1', '1', '2020-06-17 14:52:55'),
(15, 'c3c0678baa8c0942ea114371c5831c7c', '55a1239bc75f6a5c5f5b586a5c13bb4e', 'alison', 'teste@gmail.com', '117.837.424-61', '002', '1999-05-13', '1', 'rua dos testes', 'bela vista', 21, NULL, 7124, '(84)9999-9999', '1', '1', '1', '2020-06-17 15:00:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `votacao`
--

DROP TABLE IF EXISTS `votacao`;
CREATE TABLE `votacao` (
  `id` int(11) NOT NULL,
  `nmUser` varchar(50) NOT NULL,
  `emailUser` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `escolha` enum('filme','serie','ambos') NOT NULL,
  `dtVotacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `votacao`
--

INSERT INTO `votacao` (`id`, `nmUser`, `emailUser`, `telefone`, `escolha`, `dtVotacao`) VALUES
(1, 'alison tavares', 'teste@teste', '2222-2222', 'filme', '2021-06-19 13:16:41'),
(2, 'Marcos teste', 'arcos@gmail.com', '1234-5678', 'filme', '2021-06-19 13:48:07'),
(3, 'francisco teste', 'francisco@gmail.com', '0000-0000', 'ambos', '2021-06-19 14:07:18'),
(4, 'alison tavares', 'Marcos@gmail.com', '2222-2222', 'serie', '2021-06-19 16:46:31'),
(5, 'Marcos teste', 'Marcos@gmail.com', '1234-5678', 'ambos', '2021-06-19 16:46:38'),
(6, 'alison tavares', 'Marcos@gmail.com', '2222-2222', 'filme', '2021-06-19 16:47:43'),
(7, 'alison tavares', 'Marcos@gmail.com', '2222-2222', 'serie', '2021-06-19 17:14:43'),
(8, 'alison tavares', 'Marcos@gmail.com', '2222-2222', 'serie', '2021-06-19 17:14:46'),
(9, 'alison tavares', 'Marcos@gmail.com', '2222-2222', 'serie', '2021-06-19 17:14:49'),
(10, 'alison tavares', 'Marcos@gmail.com', '2222-2222', 'serie', '2021-06-19 17:14:51'),
(11, 'alison tavares', 'Marcos@gmail.com', '2222-2222', 'serie', '2021-06-19 17:14:52'),
(12, 'Marcos teste', 'felipe@gmail.com', '2222-2222', 'filme', '2021-06-19 17:26:44'),
(13, 'Alison Cristiano Silva Tavares', '12345678900', 'alisonbjjk@gmail.com', 'ambos', '2021-06-19 22:35:34'),
(14, 'Alison Cristiano Silva Tavares', '123', 'alisonbjjk@gmail.com', 'ambos', '2021-06-19 22:36:24'),
(15, 'Alison Cristiano Silva Tavares', '123', 'alisonbjjk@gmail.com', 'ambos', '2021-06-19 22:37:30'),
(16, 'Alison Cristiano Silva Tavares', 'alisonbjjk@gmail.com', '84991369606', 'filme', '2021-06-19 22:55:28'),
(17, 'Alison Cristiano Silva Tavares', 'alisonbjjk@gmail.com', '84991369606', 'ambos', '2021-06-19 23:20:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `cod_estados` (`cod_estados`);

--
-- Índices para tabela `votacao`
--
ALTER TABLE `votacao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `votacao`
--
ALTER TABLE `votacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
