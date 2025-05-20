CREATE DATABASE desafio;

USE desafio;


CREATE TABLE cliente (
  idCliente INT AUTO_INCREMENT PRIMARY KEY,
  nomeCliente VARCHAR(100) NOT NULL
);


CREATE TABLE veiculo (
  idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
  placa INT NOT NULL,
  tipo ENUM('carro', 'moto') NOT NULL
);


CREATE TABLE vaga (
  idVaga INT AUTO_INCREMENT PRIMARY KEY,
  numeroVaga INT NOT NULL,
  tipoVaga ENUM('normal', 'deficiente', 'idoso', 'gestante') NOT NULL
);



CREATE TABLE cliente_veiculo (
  fkCliente INT NOT NULL,
  fkVeiculo INT NOT NULL,
  PRIMARY KEY (fkCliente, fkVeiculo),
  FOREIGN KEY (fkCliente) REFERENCES cliente(idCliente),
  FOREIGN KEY (fkVeiculo) REFERENCES veiculo(idVeiculo)
);

CREATE table veiculo_vaga (
idVeiculo_vaga INT AUTO_INCREMENT PRIMARY KEY,
fkVeiculo int(11),
fkVaga int(11),
data_hora_entrada datetime,
data_hora_saida datetime,

FOREIGN KEY (fkVeiculo) REFERENCES veiculo(idVeiculo),
foreign key (fkVaga) references vaga(idVaga)
);

ALTER TABLE veiculo
MODIFY placa VARCHAR(8);

ALTER TABLE cliente
ADD COLUMN email VARCHAR(150);

insert into cliente (nomeCliente, email) values ('Eduarda Ferreira', 'eduarda@email.com');

insert into veiculo (placa, tipo) values ('EFX9D55', 'moto');

insert into veiculo_vaga ( fkVeiculo, fkVaga, data_hora_entrada) values (1, 5, '18h');



INSERT INTO cliente (idCliente, nomeCliente, email)
VALUES 
 (2, 'Ana Laura Alves', 'emilly44@nascimento.com'),
 (3, 'Bruna da Paz', 'milena48@hotmail.com'),
 (4, 'Davi Luiz Araújo', 'isisrocha@costela.com'),
 (5, 'Dr. Lucca Fogaça', 'sophiejesus@bol.com.br'),
 (6, 'Pietra Lima', 'andrepereira@uol.com.br'),
 (7, 'Ana Beatriz Costela', 'anada-rocha@bol.com.br'),
 (8, 'Sra. Olivia Fernandes', 'ian39@ig.com.br'),
 (9, 'Kaique Sales', 'ana-sophiaferreira@nogueira.net'),
 (10, 'Vitor Teixeira', 'pedro-lucasteixeira@yahoo.com.br'),
 (11, 'Enzo Pinto', 'isabellada-rocha@moreira.com'),
 (12, 'João Lucas Ramos', 'ggoncalves@uol.com.br'),
 (13, 'Igor Aragão', 'calebe85@gomes.com'),
 (14, 'Ana Peixoto', 'xaragao@costa.com'),
 (15, 'Marcela Moreira', 'henrique41@barbosa.br'),
 (16, 'Davi Luiz Oliveira', 'nogueiramaria-vitoria@freitas.org'),
 (17, 'Laís Caldeira', 'ana-beatrizferreira@uol.com.br'),
 (18, 'Ana Sophia Lopes', 'hfernandes@ig.com.br'),
 (19, 'Carlos Eduardo Oliveira', 'juliavieira@gmail.com'),
 (20, 'Bruna Freitas', 'diaskaique@santos.org'),
 (21, 'Eloah Lima', 'teixeiraguilherme@ig.com.br'),
 (22, 'Emanuelly da Rosa', 'leandro14@bol.com.br'),
 (23, 'Juliana Teixeira', 'moreiraemanuella@uol.com.br'),
 (24, 'Vitor Hugo da Cunha', 'caldeiradavi-lucas@bol.com.br'),
 (25, 'Fernando Rodrigues', 'marcos-vinicius15@bol.com.br'),
 (26, 'Dra. Isabelly Ferreira', 'pintopedro-miguel@uol.com.br'),
 (27, 'Marcos Vinicius Barbosa', 'jsilveira@ig.com.br'),
 (28, 'Mariana Melo', 'joao-vitornogueira@da.br'),
 (29, 'Samuel Moura', 'augusto55@martins.br'),
 (30, 'Pedro Henrique Rodrigues', 'marianenogueira@hotmail.com'),
 (31, 'Sr. Thales Ramos', 'luiz-fernandoda-luz@ramos.br'),
 (32, 'Lucca Moreira', 'isabellaaragao@correia.net'),
 (33, 'Srta. Ana Laura Pinto', 'fda-rocha@bol.com.br'),
 (34, 'Pedro Lucas Lima', 'helena85@hotmail.com'),
 (35, 'Enzo Fogaça', 'cauada-paz@aragao.org'),
 (36, 'Heitor Cavalcanti', 'dpeixoto@rocha.br'),
 (37, 'João Vitor Costela', 'pedro-miguel41@gmail.com'),
 (38, 'Renan Vieira', 'juliafreitas@gmail.com'),
 (39, 'Ana Sophia Moraes', 'piresamanda@viana.com'),
 (40, 'Sr. Thales Cardoso', 'rodriguesbenjamin@cunha.com');



INSERT INTO veiculo (idVeiculo, placa, tipo)
VALUES 
(2, 'HLN3296', 'moto'),
(3, 'MRO4891', 'moto'),
(4, 'MAR0628', 'carro'),
(5, 'DGZ9312', 'moto'),
(6, 'XEM5948', 'carro'),
(7, 'VOC3769', 'moto'),
(8, 'XAS0953', 'moto'),
(9, 'BHC5468', 'moto'),
(10, 'UDA9685', 'moto'),
(11, 'ZMI7224', 'carro'),
(12, 'FSG1586', 'moto'),
(13, 'PAK2548', 'carro'),
(14, 'MEO8376', 'carro'),
(15, 'LFL1872', 'carro'),
(16, 'QTX5058', 'moto'),
(17, 'HKS4162', 'moto'),
(18, 'JWT3800', 'carro'),
(19, 'AIK2882', 'moto'),
(20, 'YDL0253', 'carro'),
(21, 'OKP8661', 'moto'),
(22, 'KSY4801', 'moto'),
(23, 'GZO0044', 'moto'),
(24, 'MGB1212', 'carro'),
(25, 'OFV8654', 'carro'),
(26, 'WGM0133', 'carro'),
(27, 'AOX1584', 'carro'),
(28, 'YZO4319', 'carro'),
(29, 'EZX1611', 'carro'),
(30, 'FAE9584', 'carro'),
(31, 'IDQ4669', 'moto'),
(32, 'WPJ6114', 'carro'),
(33, 'YHO5613', 'moto'),
(34, 'RQE2317', 'moto'),
(35, 'FWS8130', 'moto'),
(36, 'MML7099', 'carro'),
(37, 'RJZ2261', 'carro'),
(38, 'JHK7899', 'moto'),
(39, 'SNK8658', 'moto'),
(40, 'QKF5151', 'moto'),
(41, 'ISO7792', 'moto'),
(42, 'SEA4178', 'carro'),
(43, 'RHX0946', 'moto'),
(44, 'MAT8039', 'moto'),
(45, 'LYS6242', 'carro'),
(46, 'MQY7818', 'carro'),
(47, 'NYS1118', 'moto'),
(48, 'MPV2188', 'moto'),
(49, 'QBL6914', 'carro'),
(50, 'SCT0368', 'moto'),
(51, 'NAQ6342', 'moto'),
(52, 'RWV2972', 'moto'),
(53, 'GKW8441', 'carro'),
(54, 'EOY6219', 'carro'),
(55, 'ACN2318', 'moto'),
(56, 'UXX1332', 'carro'),
(57, 'WPN4016', 'carro'),
(58, 'VGE4592', 'carro');


INSERT INTO cliente_veiculo ( fkCliente, fkVeiculo) 
VALUES ( 1, 44),
 ( 2, 57),
 ( 2, 29),
 ( 3, 27),
 ( 4, 3),
 ( 4, 46),
 ( 5, 4),
 ( 6, 38),
 ( 7, 6),
 ( 8, 36),
 ( 8, 47),
 ( 9, 40),
 ( 9, 41),
 ( 10, 42),
 ( 10, 39),
 ( 11, 52),
 ( 12, 9),
 ( 13, 21),
 ( 13, 10),
 ( 14, 20),
 ( 14, 30),
 ( 15, 17),
 ( 15, 34),
 ( 16, 53),
 ( 17, 12),
 ( 18, 1),
 ( 18, 23),
 ( 19, 11),
 ( 20, 25),
 ( 21, 56),
 ( 22, 43),
 ( 23, 2),
 ( 23, 26),
 ( 24, 5),
 ( 25, 24),
 (26, 18),
 ( 26, 19),
 ( 27, 50),
 ( 27, 16),
 ( 28, 13),
 ( 28, 45),
 ( 29, 31),
 ( 30, 33),
 ( 31, 49),
 ( 31, 22),
 ( 32, 48),
 ( 33, 28),
 ( 33, 58),
 ( 34, 15),
 ( 34, 51),
 ( 35, 14),
 ( 36, 32),
 ( 36, 54),
 ( 37, 7),
 ( 37, 55),
 ( 38, 8),
 ( 39, 35),
 ( 40, 37);



INSERT INTO vaga (idVaga, numeroVaga, tipoVaga) 
VALUES (1, 1, 'gestante'),
 (2, 2, 'idoso'),
 (3, 3, 'deficiente'),
 (4, 4, 'idoso'),
 (5, 5, 'deficiente'),
 (6, 6, 'deficiente'),
 (7, 7, 'gestante'),
 (8, 8, 'normal'),
 (9, 9, 'deficiente'),
 (10, 10, 'normal'),
 (11, 11, 'deficiente'),
 (12, 12, 'idoso'),
 (13, 13, 'deficiente'),
 (14, 14, 'deficiente'),
 (15, 15, 'idoso'),
 (16, 16, 'normal'),
 (17, 17, 'deficiente'),
 (18, 18, 'normal'),
 (19, 19, 'normal'),
 (20, 20, 'idoso');






INSERT INTO veiculo_vaga (idVeiculo_vaga, data_hora_entrada, data_hora_saida, fkveiculo, fkvaga) VALUES
(1, '2025-04-30 06:50:00', '2025-04-30 10:50:00', 1, 9),
(2, '2025-05-17 20:33:32', '2025-05-17 22:33:32', 2, 15),
(3, '2025-05-04 07:15:25', '2025-05-04 11:15:25', 3, 18),
(4, '2025-05-06 16:21:40', '2025-05-06 19:21:40', 3, 20),
(5, '2025-04-22 00:47:32', '2025-04-22 03:47:32', 4, 17),
(6, '2025-04-30 08:19:13', '2025-04-30 13:19:13', 4, 4),
(7, '2025-05-18 13:49:12', '2025-05-18 17:49:12', 5, 15),
(8, '2025-05-02 09:21:58', '2025-05-02 13:21:58', 5, 14),
(9, '2025-05-01 14:22:04', '2025-05-01 17:22:04', 6, 4),
(10, '2025-04-29 13:15:39', '2025-04-29 15:15:39', 7, 13),
(11, '2025-04-20 12:25:11', '2025-04-20 16:25:11', 8, 14),
(12, '2025-05-15 12:08:01', '2025-05-15 17:08:01', 9, 11),
(13, '2025-05-07 03:50:24', '2025-05-07 06:50:24', 9, 8),
(14, '2025-05-16 17:35:24', '2025-05-16 19:35:24', 10, 14),
(15, '2025-04-29 20:30:56', '2025-04-29 22:30:56', 10, 5),
(16, '2025-04-21 11:43:53', '2025-04-21 15:43:53', 11, 8),
(17, '2025-05-15 07:17:46', '2025-05-15 12:17:46', 11, 14),
(18, '2025-04-27 06:28:52', '2025-04-27 08:28:52', 12, 18),
(19, '2025-04-26 10:34:34', '2025-04-26 15:34:34', 13, 20),
(20, '2025-04-29 20:10:41', '2025-04-30 01:10:41', 13, 10),
(21, '2025-05-01 08:34:57', '2025-05-01 13:34:57', 14, 11),
(22, '2025-04-26 01:35:02', '2025-04-26 05:35:02', 15, 15),
(23, '2025-04-24 09:37:01', '2025-04-24 12:37:01', 15, 13),
(24, '2025-05-02 16:51:12', '2025-05-02 17:51:12', 16, 8),
(25, '2025-04-29 04:31:21', '2025-04-29 08:31:21', 17, 10),
(26, '2025-05-11 01:01:47', '2025-05-11 04:01:47', 17, 19),
(27, '2025-05-10 23:47:48', '2025-05-11 00:47:48', 18, 20),
(28, '2025-04-19 23:23:10', '2025-04-20 00:23:10', 18, 6),
(29, '2025-04-25 13:11:14', '2025-04-25 18:11:14', 19, 3),
(30, '2025-04-26 00:17:30', '2025-04-26 02:17:30', 20, 2),
(31, '2025-04-24 00:28:47', '2025-04-24 04:28:47', 20, 10),
(32, '2025-05-05 02:28:38', '2025-05-05 03:28:38', 21, 10),
(33, '2025-04-28 12:32:13', '2025-04-28 15:32:13', 22, 2),
(34, '2025-05-02 18:35:01', '2025-05-02 22:35:01', 23, 15),
(35, '2025-05-05 08:34:19', '2025-05-05 10:34:19', 24, 8),
(36, '2025-05-03 18:14:38', '2025-05-03 19:14:38', 25, 15),
(37, '2025-05-14 01:59:11', '2025-05-14 06:59:11', 26, 7),
(38, '2025-05-07 20:33:22', '2025-05-07 21:33:22', 27, 10),
(39, '2025-05-11 04:26:11', '2025-05-11 07:26:11', 28, 20),
(40, '2025-05-03 02:40:00', '2025-05-03 04:40:00', 29, 18),
(41, '2025-05-10 04:45:18', '2025-05-10 07:45:18', 30, 6),
(42, '2025-05-09 20:18:56', '2025-05-10 00:18:56', 30, 8),
(43, '2025-05-04 06:02:43', '2025-05-04 09:02:43', 31, 9),
(44, '2025-05-03 03:50:52', '2025-05-03 05:50:52', 31, 20),
(45, '2025-05-13 23:59:27', '2025-05-14 04:59:27', 32, 20),
(46, '2025-05-17 00:16:11', '2025-05-17 03:16:11', 33, 14),
(47, '2025-05-10 04:02:21', '2025-05-10 06:02:21', 33, 4),
(48, '2025-05-14 09:39:28', '2025-05-14 14:39:28', 34, 6),
(49, '2025-04-19 20:23:19', '2025-04-20 01:23:19', 35, 11),
(50, '2025-04-26 22:55:00', '2025-04-27 03:55:00', 36, 15),
(51, '2025-04-19 23:16:53', '2025-04-20 03:16:53', 36, 19),
(52, '2025-05-13 07:33:35', '2025-05-13 10:33:35', 37, 2),
(53, '2025-05-14 18:26:43', '2025-05-14 20:26:43', 38, 7),
(54, '2025-05-05 17:18:00', '2025-05-05 20:18:00', 38, 14),
(55, '2025-04-21 22:59:43', '2025-04-22 03:59:43', 39, 3),
(56, '2025-05-14 20:53:13', '2025-05-14 21:53:13', 39, 19),
(57, '2025-04-29 16:06:12', '2025-04-29 19:06:12', 40, 6),
(58, '2025-05-12 00:50:04', '2025-05-12 02:50:04', 40, 12),
(59, '2025-05-03 09:19:43', '2025-05-03 11:19:43', 41, 18),
(60, '2025-04-28 02:25:59', '2025-04-28 03:25:59', 42, 15),
(61, '2025-05-01 16:44:23', '2025-05-01 18:44:23', 43, 15),
(62, '2025-05-16 03:33:38', '2025-05-16 05:33:38', 43, 18),
(63, '2025-04-23 20:13:37', '2025-04-23 22:13:37', 44, 19),
(64, '2025-04-24 23:40:18', '2025-04-25 03:40:18', 45, 14),
(65, '2025-04-21 16:26:06', '2025-04-21 20:26:06', 45, 4),
(66, '2025-04-22 05:04:55', '2025-04-22 08:04:55', 46, 7),
(67, '2025-04-25 18:54:11', '2025-04-25 19:54:11', 47, 7),
(68, '2025-05-13 12:04:37', '2025-05-13 15:04:37', 48, 5),
(69, '2025-04-23 20:39:32', '2025-04-24 00:39:32', 48, 6),
(70, '2025-04-21 18:13:48', '2025-04-21 22:13:48', 49, 9),
(71, '2025-05-05 03:12:03', '2025-05-05 06:12:03', 49, 3),
(72, '2025-04-26 16:55:08', '2025-04-26 21:55:08', 50, 8),
(73, '2025-05-14 12:32:03', '2025-05-14 16:32:03', 50, 6),
(74, '2025-05-14 14:58:41', '2025-05-14 17:58:41', 51, 12),
(75, '2025-05-12 12:08:55', '2025-05-12 13:08:55', 52, 12),
(76, '2025-04-28 04:22:01', '2025-04-28 09:22:01', 52, 9),
(77, '2025-04-23 12:56:18', '2025-04-23 13:56:18', 53, 1),
(78, '2025-04-20 16:20:03', '2025-04-20 17:20:03', 53, 17),
(79, '2025-05-12 23:32:21', '2025-05-13 03:32:21', 54, 15),
(80, '2025-04-28 22:28:11', '2025-04-29 03:28:11', 55, 3),
(81, '2025-05-07 14:39:26', '2025-05-07 18:39:26', 55, 2),
(82, '2025-05-13 09:39:37', '2025-05-13 13:39:37', 56, 9),
(83, '2025-04-22 15:06:24', '2025-04-22 19:06:24', 57, 1),
(84, '2025-05-08 00:53:33', '2025-05-08 04:53:33', 58, 16);


select sum(idVeiculo) as 'totalVeiculos'from veiculo;

select vaga.tipoVaga, count(veiculo.idVeiculo) 
from veiculo_vaga 
inner join vaga on fkVaga = idVaga
inner join  veiculo on fkVeiculo = idVeiculo group by vaga.tipoVaga;


 