-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Set-2022 às 18:26
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_loja_virtual`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `id_imagem`
--

CREATE TABLE `id_imagem` (
  `id_imagem` int(11) NOT NULL,
  `id_produtos` int(11) NOT NULL,
  `url_imagem` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `id_imagem`
--

INSERT INTO `id_imagem` (`id_imagem`, `id_produtos`, `url_imagem`) VALUES
(1, 1, 'notebook_1.jpg'),
(4, 2, 'smart_tv1.jpg'),
(6, 3, 'smartphoneUltraMaxPower_7.png'),
(7, 1, 'notebook1.png'),
(8, 1, 'notebookRAZER_65.png'),
(9, 1, 'notebookAZUS_69.png'),
(10, 2, 'smartTv.jpg'),
(11, 2, 'smartTv4kLED_DIGITAL.jpg'),
(12, 3, 'smartPHONE_4k_90GBRAM.gif');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `idade` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`id_cliente`, `nome`, `idade`) VALUES
(1, 'Jorge', 20),
(2, 'jamilton', 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_descricao_tecnica`
--

CREATE TABLE `tb_descricao_tecnica` (
  `id_descricao_tecnica` int(11) NOT NULL,
  `id_produtos` int(11) NOT NULL,
  `descricao_tecnica` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_descricao_tecnica`
--

INSERT INTO `tb_descricao_tecnica` (`id_descricao_tecnica`, `id_produtos`, `descricao_tecnica`) VALUES
(1, 1, 'O novo Inspiron Dell oferece um design elegante e tela infinita que amplia seus sentidos, mantendo a sofisticação e medidas compactas...'),
(3, 2, 'A smart TV da Samsung possui tela de 40\" e oferece resolução Full HD, imagens duas vezes melhores que TVs HDs padrão...'),
(4, 3, 'Saia da mesmice. O smartphone LG está mais divertido, rápido, fácil, cheio de selfies e com tela HD de incríveis 5,3\"...');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pedidos`
--

CREATE TABLE `tb_pedidos` (
  `id_pedidos` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `data_hora` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_pedidos`
--

INSERT INTO `tb_pedidos` (`id_pedidos`, `id_cliente`, `data_hora`) VALUES
(1, 1, '2022-09-21 08:36:03'),
(2, 1, '2022-09-21 08:40:21'),
(3, 2, '2022-09-21 13:20:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pedidos_produtos`
--

CREATE TABLE `tb_pedidos_produtos` (
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_pedidos_produtos`
--

INSERT INTO `tb_pedidos_produtos` (`id_pedido`, `id_produto`) VALUES
(1, 2),
(1, 3),
(2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `id_produtos` int(11) NOT NULL,
  `produto` varchar(200) NOT NULL,
  `valor` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`id_produtos`, `produto`, `valor`) VALUES
(1, 'Notebook Dell Inspiron Ultrafino Intel Core i7, 16GB RAM e 240GB SSD', 3500.00),
(2, 'Smart TV LED 40\" Samsung Full HD 2 HDMI 1 USB Wi-Fi Integrado', 1475.54),
(3, 'Smartphone LG K10 Dual Chip Android 7.0 4G Wi-Fi Câmera de 13MP', 629.99);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `id_imagem`
--
ALTER TABLE `id_imagem`
  ADD PRIMARY KEY (`id_imagem`),
  ADD KEY `id_produtos` (`id_produtos`);

--
-- Índices para tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `tb_descricao_tecnica`
--
ALTER TABLE `tb_descricao_tecnica`
  ADD PRIMARY KEY (`id_descricao_tecnica`),
  ADD KEY `id_produtos` (`id_produtos`);

--
-- Índices para tabela `tb_pedidos`
--
ALTER TABLE `tb_pedidos`
  ADD PRIMARY KEY (`id_pedidos`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices para tabela `tb_pedidos_produtos`
--
ALTER TABLE `tb_pedidos_produtos`
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices para tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`id_produtos`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `id_imagem`
--
ALTER TABLE `id_imagem`
  MODIFY `id_imagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_descricao_tecnica`
--
ALTER TABLE `tb_descricao_tecnica`
  MODIFY `id_descricao_tecnica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_pedidos`
--
ALTER TABLE `tb_pedidos`
  MODIFY `id_pedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  MODIFY `id_produtos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `id_imagem`
--
ALTER TABLE `id_imagem`
  ADD CONSTRAINT `id_imagem_ibfk_1` FOREIGN KEY (`id_produtos`) REFERENCES `tb_produtos` (`id_produtos`);

--
-- Limitadores para a tabela `tb_descricao_tecnica`
--
ALTER TABLE `tb_descricao_tecnica`
  ADD CONSTRAINT `tb_descricao_tecnica_ibfk_1` FOREIGN KEY (`id_produtos`) REFERENCES `tb_produtos` (`id_produtos`);

--
-- Limitadores para a tabela `tb_pedidos`
--
ALTER TABLE `tb_pedidos`
  ADD CONSTRAINT `tb_pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`id_cliente`);

--
-- Limitadores para a tabela `tb_pedidos_produtos`
--
ALTER TABLE `tb_pedidos_produtos`
  ADD CONSTRAINT `tb_pedidos_produtos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `tb_pedidos` (`id_pedidos`),
  ADD CONSTRAINT `tb_pedidos_produtos_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `tb_produtos` (`id_produtos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
