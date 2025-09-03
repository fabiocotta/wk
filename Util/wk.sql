-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/09/2025 às 13:17
-- Versão do servidor: 5.6.20
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wk`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `CODIGO` int(11) NOT NULL,
  `NOME` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `CIDADE` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `UF` varchar(45) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`CODIGO`, `NOME`, `CIDADE`, `UF`) VALUES
(1, 'MARIA MODERNA', 'RECIFE', 'PE'),
(2, 'JORGA CAIO', 'SAO PAULO', 'SP'),
(3, 'DUNGA LUIZ', 'RIO DE JANEIRO', 'RJ'),
(4, 'MARIO ARAUJO', 'BRASILIA', 'DF'),
(5, 'PEDRO ORTEGA', 'RECIFE', 'PE');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `NUMERO_PEDIDO` int(11) NOT NULL,
  `DATA_EMISSAO` timestamp NULL DEFAULT NULL,
  `VALOR_TOTAL` decimal(11,2) DEFAULT NULL,
  `CODIGO_CLIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido_produto`
--

CREATE TABLE `pedido_produto` (
  `CODIGO` int(11) NOT NULL,
  `QUANTIDADE` int(11) NOT NULL,
  `VALOR_UNITARIO` decimal(11,2) DEFAULT NULL,
  `VALOR_TOTAL` decimal(11,2) DEFAULT NULL,
  `CODIGO_PRODUTO` int(11) NOT NULL,
  `NUMERO_PEDIDO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `CODIGO` int(11) NOT NULL,
  `DESCRICAO` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `PRECOVENDA` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`CODIGO`, `DESCRICAO`, `PRECOVENDA`) VALUES
(1, 'Apple MacBook Air', 4958.30),
(2, 'Notebook Apple MacBook Pro', 8642.40),
(3, 'Apple iPhone 16', 3767.20),
(4, 'Relógio Apple Watch Series 10', 1717.40),
(5, 'Tablet Apple iPad 11ª Geração', 1761.72);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CODIGO`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`NUMERO_PEDIDO`),
  ADD KEY `fk_pedido_cliente_idx` (`CODIGO_CLIENTE`);

--
-- Índices de tabela `pedido_produto`
--
ALTER TABLE `pedido_produto`
  ADD PRIMARY KEY (`CODIGO`),
  ADD KEY `fk_pedido_produto_pedido1_idx` (`NUMERO_PEDIDO`),
  ADD KEY `fk_pedido_produto_produto1_idx` (`CODIGO_PRODUTO`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`CODIGO`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `NUMERO_PEDIDO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedido_produto`
--
ALTER TABLE `pedido_produto`
  MODIFY `CODIGO` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_cliente` FOREIGN KEY (`CODIGO_CLIENTE`) REFERENCES `cliente` (`CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `pedido_produto`
--
ALTER TABLE `pedido_produto`
  ADD CONSTRAINT `fk_pedido_produto_pedido1` FOREIGN KEY (`NUMERO_PEDIDO`) REFERENCES `pedido` (`NUMERO_PEDIDO`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pedido_produto_produto1` FOREIGN KEY (`CODIGO_PRODUTO`) REFERENCES `produto` (`CODIGO`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
