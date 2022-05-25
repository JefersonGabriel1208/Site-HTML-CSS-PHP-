-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 10-Jun-2021 às 02:49
-- Versão do servidor: 10.3.22-MariaDB-log
-- versão do PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `282271`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `formulario_doacoes`
--

CREATE TABLE `formulario_doacoes` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `telefone` varchar(220) CHARACTER SET utf8 NOT NULL,
  `endereco` varchar(220) NOT NULL,
  `qualproduto` varchar(220) NOT NULL,
  `marcaemodelo` varchar(220) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `formulario_doacoes`
--

INSERT INTO `formulario_doacoes` (`id`, `nome`, `email`, `telefone`, `endereco`, `qualproduto`, `marcaemodelo`, `created`) VALUES
(9, 'Jeferson  Gabriel Alves', 'jeferson.galves@hotmail.com', '1499728950', 'Rua Barão do rio Branco 661  fundos', 'Um computador antigo', 'samsung1987', '2021-06-09 23:38:11'),
(8, 'Claudio ', 'claudio@icmc.usp.br', '', 'Rua Barão do rio Branco 661', 'teste claudio', 'teste claudio', '2021-06-09 22:16:37');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `formulario_doacoes`
--
ALTER TABLE `formulario_doacoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `formulario_doacoes`
--
ALTER TABLE `formulario_doacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
