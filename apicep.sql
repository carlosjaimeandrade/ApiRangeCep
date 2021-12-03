-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Dez-2021 às 12:26
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `apicep`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `faixa_cep`
--

CREATE TABLE `faixa_cep` (
  `id` int(11) NOT NULL,
  `regiao` varchar(100) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `faixa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Extraindo dados da tabela `faixa_cep`
--

INSERT INTO `faixa_cep` (`id`, `regiao`, `uf`, `faixa`) VALUES
(1, 'São Paulo (SP), Capital', 'SP', '01000 a 05999 - 0800'),
(2, 'Região Metropolitana de São Paulo ou Grande São Paulo', 'SP', '06000 a 09999'),
(3, 'Litoral paulista', 'SP', '11000 a 11999'),
(4, 'Interior paulista', 'SP', '12000 a 19999'),
(5, 'Todo o Estado SP', 'au', '01000 a 19999'),
(6, 'Rio de Janeiro (RJ), Capital', 'RJ', '20000 a 23799'),
(7, 'Região Metropolitana do Rio de Janeiro ou Grande Rio', 'RJ', '20000 a 26600'),
(8, 'Interior fluminense e baixada fluminense', 'RJ', '26601 a 28999'),
(9, 'Todo o Estado RJ', 'RJ', '20000 a 28999'),
(10, 'Vitória (ES)', 'ES', '29000 a 29099'),
(11, 'Interior capixaba', 'ES', '29100 a 29999'),
(12, 'Todo o Estado ES', 'ES', '29000 a 29999'),
(13, 'Belo Horizonte (MG)', 'MG', '30000 a 31999'),
(14, 'Região Metropolitana de Belo Horizonte (Grande BH)', 'MG', '30000 a 34999'),
(15, 'Interior mineiro', 'MG', '35000 a 39999'),
(16, 'Todo o Estado MG', 'MG', '30000 a 39999'),
(17, 'Salvador (BA)', 'BA', '40000 a 41999'),
(18, 'Região Metropolitana de Salvador ou Grande Salvador', 'BA', '40000 a 44470'),
(19, 'Interior baiano', 'BA', '44471 a 48999'),
(20, 'Todo o Estado BA', 'BA', '40000 a 48999'),
(21, 'Aracaju (SE)', 'SE', '49000 a 49099'),
(22, 'Interior sergipano', 'SE', '49100 a 49999'),
(23, 'Todo o Estado SE', 'SE', '49000 a 49999'),
(24, 'Recife', 'PE', '50000 a 52999'),
(25, 'Região Metropolitana de Recife ou Grande Recife', 'PE', '50000 a 54999'),
(26, 'Interior pernambucano', 'PE', '55000 a 56999'),
(27, 'Todo o Estado PE', 'PE', '50000 a 56999'),
(28, 'Maceió (AL)', 'AL', '57000 a 57099'),
(29, 'Interior alagoano', 'AL', '57100 a 57999'),
(30, 'Todo o Estado AL', 'AL', '57000 a 57999'),
(31, 'João Pessoa (PB)', 'PB', '58000 a 58099'),
(32, 'Interior paraibano', 'PB', '58100 a 58999'),
(33, 'Todo o Estado PB', 'PB', '58000 a 58999'),
(34, 'Natal (RN)', 'RN', '59000 a 59099'),
(35, 'Interior potiguar', 'RN', '59100 a 59999'),
(36, 'Todo o Estado RN', 'RN', '59000 a 59999'),
(37, 'Fortaleza (CE)', 'CE', '60000 a 60999'),
(38, 'Região Metropolitana de Fortaleza ou Grande Fortaleza', 'CE', '60000 a 61900'),
(39, 'Interior cearense', 'CE', '61901 a 63999'),
(40, 'Todo o Estado CE', 'CE', '60000 a 63999'),
(41, 'Teresina (PI)', 'PI', '64000 a 64099'),
(42, 'Interior piauiense', 'PI', '64100 a 64999'),
(43, 'Todo o Estado PI', 'PI', '64000 a 64999'),
(44, 'São Luiz (MA)', 'MA', '65000 a 65099'),
(45, 'Interior maranhense', 'MA', '65100 a 65999'),
(46, 'Todo o Estado MA', 'MA', '65000 a 65999'),
(47, 'Belém (PA)', 'PA', '66000 a 66999'),
(48, 'Região Metropolitana de Belém', 'PA', '66000 a 67999'),
(49, 'Interior paraense', 'PA', '68000 a 68899'),
(50, 'Todo o Estado PA', 'PA', '66000 a 68899'),
(51, 'Macapá (AP)', 'AP', '68900 a 68914'),
(52, 'Interior amapense', 'AP', '68915 a 68999'),
(53, 'Todo o Estado AP', 'AP', '68900 a 68999'),
(54, 'Manaus', 'AM', '69000 a 69099'),
(55, 'Interior amazonense', 'AM', '69100 a 69299'),
(56, 'Todo o Estado AM', 'AM', '69400 a 69899'),
(57, 'Boa Vista (RR)', 'RR', '69300 a 69339'),
(58, 'Interior roraimense', 'RR', '69340 a 69389'),
(59, 'Todo o Estado RR', 'RR', '69300 a 69389'),
(60, 'Rio Branco (AC)', 'AC', '69900 a 69923'),
(61, 'Interior acreano', 'AC', '69924 a 69999'),
(62, 'Todo o Estado AC', 'AC', '69900 a 69999'),
(63, 'Brasília (DF)', 'DF', '70000 a 70999'),
(64, 'Cidades Satélite de Brasília', 'DF', '71000 a 73699'),
(65, 'Todo o Estado DF', 'DF', '70000 a 73699'),
(66, 'Goiânia (GO)', 'GO', '74000 a 74983'),
(67, 'Interior goianiense', 'GO', '74984 a 76799'),
(68, 'Todo o Estado GO', 'GO', '74000 a 76799'),
(69, 'Palmas (TO)', 'TO', '77000 a 77270'),
(70, 'Interior tocantinense', 'TO', '77300 a 77995'),
(71, 'Todo o Estado TO', 'TO', '77000 a 77995'),
(72, 'Cuiabá (MT)', 'MT', '78000 a 78109'),
(73, 'Interior mato-grossense', 'MT', '78110 a 78899'),
(74, 'Todo o Estado MT', 'MT', '78000 a 78899'),
(75, 'Porto Velho (RO)', 'RO', '76800 a 76823'),
(76, 'Interior rondoniense', 'RO', '76824 a 76999'),
(77, 'Todo o Estado RO', 'RO', '76800 a 76999'),
(78, 'Campo Grande (MS)', 'MS', '79000 a 79129'),
(79, 'Interior sul-mato-grossense', 'MS', '79130 a 79999'),
(80, 'Todo o Estado MS', 'MS', '79000 a 79999'),
(81, 'Curitiba (PR)', 'PR', '80000 a 82999'),
(82, 'Região Metropolitana de Curitiba ou Grande Curitiba', 'PR', '80000 a 83800'),
(83, 'Interior paranaense', 'PR', '83801 a 87999'),
(84, 'Todo o Estado PR', 'PR', '80000 a 87999'),
(85, 'Florianópolis (SC)', 'SC', '88000 a 88100'),
(86, 'Região Metropolitana de Florianópolis ou Grande Florianópolis', 'SC', '88000 a 88469'),
(87, 'Interior catarinense', 'SC', '88470 a 89999'),
(88, 'Todo o Estado SC', 'SC', '88000 a 89999'),
(89, 'Porto Alegre (RS)', 'RS', '90000 a 91999'),
(90, 'Região Metropolitana de Porto Alegre ou Grande Poá', 'RS', '90000 a 94900'),
(91, 'Interior Sul Rio Grandense', 'RS', '94901 a 99999'),
(92, 'Todo o Estado RS', 'RS', '90000 a 99999');

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
