-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Dez-2021 às 14:30
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fmsofi77_fms`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `faixa_cep`
--

CREATE TABLE `faixa_cep` (
  `id` int(11) NOT NULL,
  `regiao` varchar(150) COLLATE utf8_esperanto_ci NOT NULL,
  `uf` varchar(150) COLLATE utf8_esperanto_ci NOT NULL,
  `faixa` varchar(150) COLLATE utf8_esperanto_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_esperanto_ci;

--
-- Extraindo dados da tabela `faixa_cep`
--

INSERT INTO `faixa_cep` (`id`, `regiao`, `uf`, `faixa`) VALUES
(1, 'SP Capital', 'SP', '1000000 a 5999999 - 8000000 a 8499999'),
(2, 'SP Área Metropolitana', 'SP', '6000000 a 9999999'),
(3, 'SP Litoral', 'SP', '11000000 a 11999999'),
(4, 'SP Interior', 'SP', '12000000 a 19999999'),
(5, 'SP Todo o estado', 'SP', '1000000 a 19999999'),
(6, 'RJ Capital', 'RJ', '20000000 a 23799999'),
(7, 'RJ Área Metropolitana', 'RJ', '20000000 a 26600999'),
(8, 'RJ Interior', 'RJ', '26601000 a 28999999'),
(9, 'RJ Todo o estado', 'RJ', '20000000 a 28999999'),
(10, 'Vitória', 'ES', '29000000 a 29099999'),
(11, 'ES Interior', 'ES', '29100000 a 29999999'),
(12, 'ES Todo o estado', 'ES', '29000000 a 29999999'),
(13, 'Belo Horizonte', 'MG', '30000000 a 31999999'),
(14, 'MG Região Metropolitana Belo Horizonte', 'MG', '30000000 a 34999999'),
(15, 'MG Interior', 'MG', '35000000 a 39999999'),
(16, 'MG Todo o estado', 'MG', '30000000 a 39999999'),
(17, 'Salvador', 'BA', '40000000 a 41999999'),
(18, 'BA Região Metropolitana Salvador', 'BA', '40000000 a 44470999'),
(19, 'BA Interior', 'BA', '44471000 a 48999999'),
(20, 'BA Todo o estado', 'BA', '40000000 a 48999999'),
(21, 'Aracaju', 'SE', '49000000 a 49099999'),
(22, 'SE Interior', 'SE', '49100000 a 49999999'),
(23, 'SE Todo o estado', 'SE', '49000000 a 49999999'),
(24, 'Recife', 'PE', '50000000 a 52999999'),
(25, 'PE Região Metropolitana Recife', 'PE', '50000000 a 54999999'),
(26, 'Interior', 'PE', '55000000 a 56999999'),
(27, 'PE Todo o estado', 'PE', '50000000 a 56999999'),
(28, 'Maceió', 'Ma', '57000000 a 57099999'),
(29, 'AL Interior', 'AL', '57100000 a 57999999'),
(30, 'AL Todo o estado', 'AL', '57000000 a 57999999'),
(31, 'João Pessoa', 'PB', '58000000 a 58099999'),
(32, 'PB Interior', 'PB', '58100000 a 58999999'),
(33, 'PB Todo o estado', 'PB', '58000000 a 58999999'),
(34, 'Natal', 'RN', '59000000 a 59099999'),
(35, 'RN Interior', 'RN', '59100000 a 59999999'),
(36, 'RN Todo o estado', 'RN', '59000000 a 59999999'),
(37, 'Fortaleza', 'CE', '60000000 a 60999999'),
(38, 'CE Área Metropolitana Fortaleza', 'CE', '60000000 a 61900999'),
(39, 'CE Interior', 'CE', '61901000 a 63999999'),
(40, 'CE Todo o estado', 'CE', '60000000 a 63999999'),
(41, 'Teresina', 'PI', '64000000 a 64099999'),
(42, 'PI Interior', 'PI', '64100000 a 64999999'),
(43, 'PI Todo o estado', 'PI', '64000000 a 64999999'),
(44, 'São Luiz', 'MA', '65000000 a 65099999'),
(45, 'MA Interior', 'MA', '65100000 a 65999999'),
(46, 'MA Todo o estado', 'MA', '65000000 a 65999999'),
(47, 'Belém', 'PA', '66000000 a 66999999'),
(48, 'PA Região Metropolitana Belém', 'PA', '66000000 a 67999999'),
(49, 'PA Interior', 'PA', '68000000 a 68899999'),
(50, 'PA Todo o estado', 'PA', '66000000 a 68899999'),
(51, 'Macapá', 'AP', '68900000 a 68914999'),
(52, 'AP Interior', 'AP', '68915000 a 68999999'),
(53, 'AP Todo o estado', 'AP', '68900000 a 68999999'),
(54, 'Manaus', 'AM', '69000000 a 69099999'),
(55, 'AM Interior', 'AM', '69100000 a 69299999'),
(56, 'AM Todo o estado', 'AM', '69400000 a 69899999'),
(57, 'Boa Vista', 'RR', '69300000 a 69339999'),
(58, 'RR Interior', 'RR', '69340000 a 69389999'),
(59, 'RR Todo o estado', 'RR', '69300000 a 69389999'),
(60, 'Rio cinza', 'AC', '69900000 a 69920999'),
(61, 'AC Interior', 'AC', '69921000 a 69999999'),
(62, 'AC Todo o estado', 'AC', '69900000 a 69999999'),
(63, 'Brasília', 'DF', '70000000 a 70999999'),
(64, 'DF Cidades Satélite', 'DF', '71000000 a 73699999'),
(65, 'DF Todo o estado', 'DF', '70000000 a 73699999'),
(66, 'Goiânia', 'GO', '72800000 a 73999999 - 74000000 a 74894999'),
(67, 'GO Interior', 'GO', '74895000 a 76799999'),
(68, 'GO Todo o estado', 'GO', '72800000 a 76799999'),
(69, 'Palmas', 'TO', '77000000 a 77270999'),
(70, 'TO Interior', 'TO', '77300000 a 77995999'),
(71, 'TO Todo o estado', 'TO', '77000000 a 77995999'),
(72, 'Cuiabá', 'MT', '78000000 a 78109999'),
(73, 'MT Interior', 'MT', '78110000 a 78899999'),
(74, 'MT Todo o estado', 'MT', '78000000 a 78899999'),
(75, 'Porto Velho', 'MS', '78900000 a 78930999'),
(76, 'MS Interior', 'MS', '78931000 a 78999999'),
(77, 'MS Todo o estado', 'MS', '78900000 a 78999999'),
(78, 'Campo Grande', 'MS', '79000000 a 79129999'),
(79, 'MS Interior', 'MS', '79130000 a 79999999'),
(80, 'MS Todo o estado', 'MS', '79000000 a 79999999'),
(81, 'Curitiba', 'PR', '80000000 a 82999999'),
(82, 'PR Área Metropolitana Curitiba', 'PR', '80000000 a 83800999'),
(83, 'PR Interior', 'PR', '83801000 a 87999999'),
(84, 'PR Todo o estado', 'PR', '80000000 a 87999999'),
(85, 'Florianópolis', 'SC', '88000000 a 82999999'),
(86, 'SC Área Metropolitana Florianópolis', 'SC', '88000000 a 88469999'),
(87, 'SC Interior', 'SC', '88470000 a 89999999'),
(88, 'SC Todo o estado', 'SC', '88000000 a 89999999'),
(89, 'Porto Alegre', 'RS', '90000000 a 91999999'),
(90, 'RS Área Metropolitana Porto Alegre', 'RS', '90000000 a 94900999'),
(91, 'RS Interior', 'RS', '94901000 a 99999999'),
(92, 'RS Todo o estado', 'RS', '90000000 a 99999999');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `faixa_cep`
--
ALTER TABLE `faixa_cep`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `faixa_cep`
--
ALTER TABLE `faixa_cep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
