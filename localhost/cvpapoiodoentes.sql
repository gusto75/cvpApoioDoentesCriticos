-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Mar-2020 às 22:43
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cvpapoiodoentes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `motivo`
--

CREATE TABLE `motivo` (
  `idMotivo` int(11) NOT NULL,
  `descricaoMotivo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `motivo`
--

INSERT INTO `motivo` (`idMotivo`, `descricaoMotivo`) VALUES
(1, 'Geral'),
(2, 'Entrega de Medicação'),
(3, 'Entrega de Bens'),
(4, 'Entrega de Medicação e Bens');

-- --------------------------------------------------------

--
-- Estrutura da tabela `socorrista`
--

CREATE TABLE `socorrista` (
  `idSocorrista` int(11) NOT NULL,
  `nomeSocorrista` varchar(100) NOT NULL,
  `username` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `numeroSocorrista` int(11) NOT NULL,
  `contactoSocorrista` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `socorrista`
--

INSERT INTO `socorrista` (`idSocorrista`, `nomeSocorrista`, `username`, `pass`, `numeroSocorrista`, `contactoSocorrista`) VALUES
(1, 'Daniel Gonçalves', '17327', '698dc19d489c4e4db73e28a713eab07b', 17327, '939906015'),
(3, 'Emanuel Gonçalves', 'egoncalves', '698dc19d489c4e4db73e28a713eab07b', 17333, '123123123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utente`
--

CREATE TABLE `utente` (
  `idUtente` int(11) NOT NULL,
  `nomeUtente` varchar(100) NOT NULL,
  `dataNascimento` date NOT NULL,
  `contactoUtente` varchar(9) NOT NULL,
  `contactoAltUtente` varchar(9) DEFAULT NULL,
  `freguesia` varchar(45) NOT NULL,
  `moradaCompleta` varchar(200) NOT NULL,
  `contactada` varchar(3) NOT NULL,
  `dataContacto` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `utente`
--

INSERT INTO `utente` (`idUtente`, `nomeUtente`, `dataNascimento`, `contactoUtente`, `contactoAltUtente`, `freguesia`, `moradaCompleta`, `contactada`, `dataContacto`) VALUES
(27, 'Antonio', '1990-01-01', '123123123', '', 'Amares', 'Rua de Amares', 'NAO', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `visita`
--

CREATE TABLE `visita` (
  `idVisita` int(11) NOT NULL,
  `idUtente` varchar(100) NOT NULL,
  `idSocorrista` varchar(110) NOT NULL,
  `dataVisita` date NOT NULL,
  `idMotivo` varchar(100) NOT NULL,
  `observacoes` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `motivo`
--
ALTER TABLE `motivo`
  ADD PRIMARY KEY (`idMotivo`);

--
-- Índices para tabela `socorrista`
--
ALTER TABLE `socorrista`
  ADD PRIMARY KEY (`idSocorrista`);

--
-- Índices para tabela `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`idUtente`);

--
-- Índices para tabela `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`idVisita`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `motivo`
--
ALTER TABLE `motivo`
  MODIFY `idMotivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `socorrista`
--
ALTER TABLE `socorrista`
  MODIFY `idSocorrista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `utente`
--
ALTER TABLE `utente`
  MODIFY `idUtente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `visita`
--
ALTER TABLE `visita`
  MODIFY `idVisita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
