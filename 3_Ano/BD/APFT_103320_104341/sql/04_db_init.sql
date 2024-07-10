--inser��es Servi�os de Bordo
INSERT INTO train.Servico_de_bordo (id_servico, descricao, preco, FK_Tripulacao)
VALUES ('SB001', 'Refei��o completa', 25, 'TR001');

INSERT INTO train.Servico_de_bordo (id_servico, descricao, preco, FK_Tripulacao)
VALUES ('SB002', 'Lanche simples', 10, 'TR002');

INSERT INTO train.Servico_de_bordo (id_servico, descricao, preco, FK_Tripulacao)
VALUES ('SB003', 'Bebidas variadas', 5, 'TR003');


--inser��es tripulacao
INSERT INTO train.Tripulacao (id_tripulacao, nome, licenca_maquinista)
VALUES ('TR001', 'Jo�o Silva', 'LM001');

INSERT INTO train.Tripulacao (id_tripulacao, nome, licenca_maquinista)
VALUES ('TR002', 'Francisco Rodrigues', 'LM002');

INSERT INTO train.Tripulacao (id_tripulacao, nome, licenca_maquinista)
VALUES ('TR003', 'Paulo Gomes', 'LM001');



--inser��es tipo_comboio_tripulacao
INSERT INTO train.tipo_comboio_tripulacao(id_tripulacao, tipo_comboio)
VALUES ('TR001', 'intercidades');

INSERT INTO train.tipo_comboio_tripulacao(id_tripulacao, tipo_comboio)
VALUES ('TR002', 'regional');

INSERT INTO train.tipo_comboio_tripulacao(id_tripulacao, tipo_comboio)
VALUES ('TR003', 'Urbano');

--inser��es Bagagem
INSERT INTO train.Bagagem(id_bagagem, quantidade,FK_Passageiro)
VALUES ('BG001', 15, 'PS001');

INSERT INTO train.Bagagem(id_bagagem, quantidade,FK_Passageiro)
VALUES ('BG002', 3, 'PS002');

INSERT INTO train.Bagagem(id_bagagem, quantidade,FK_Passageiro)
VALUES ('BG003', 7, 'PS003');

--inser��es Trata
INSERT INTO train.Trata (id_tripulacao, id_bagagem)
VALUES ('TR001', 'BG001');

INSERT INTO train.Trata (id_tripulacao, id_bagagem)
VALUES ('TR002', 'BG002');

INSERT INTO train.Trata (id_tripulacao, id_bagagem)
VALUES ('TR003', 'BG003');

--inser��es Passageiro
INSERT INTO train.Passageiro (id_passageiro, nome)
VALUES ('PS001', 'Micael Almeida');

INSERT INTO train.Passageiro (id_passageiro, nome)
VALUES ('PS002', 'Roberto Firmino');

INSERT INTO train.Passageiro (id_passageiro, nome)
VALUES ('PS003', 'Carolina Ribeiro');


--inser��es Classe_passageiro
INSERT INTO train.Classe_passageiro (id_passageiro, classe)
VALUES ('PS001', 'Primeira Classe');

INSERT INTO train.Classe_passageiro (id_passageiro, classe)
VALUES ('PS002', 'Executiva');

INSERT INTO train.Classe_passageiro (id_passageiro, classe)
VALUES ('PS003', 'Economica');

INSERT INTO train.Classe_passageiro (id_passageiro, classe)
VALUES ('PS004', 'Primeira Classe');

--inser��es Cliente
INSERT INTO train.Cliente (id_passageiro, cc)
VALUES ('PS002', '987654321');

INSERT INTO train.Cliente (id_passageiro, cc)
VALUES ('PS003', '555555555');

--inser��es Cliente_Corporativo
INSERT INTO train.Cliente_corporativo(id_passageiro, nif, contrato)
VALUES('PS001', '714052361', 'Contrato A');

--inser��es Bilhete
INSERT INTO train.Bilhete (id_bilhete, id_rota, preco, FK_Passageiro)
VALUES ('BT001', 'RT001', 150, 'PS001');

INSERT INTO train.Bilhete (id_bilhete, id_rota, preco, FK_Passageiro)
VALUES ('BT002', 'RT002', 20, 'PS002');

INSERT INTO train.Bilhete (id_bilhete, id_rota, preco, FK_Passageiro)
VALUES ('BT003', 'RT003', 5, 'PS003');

INSERT INTO train.Bilhete (id_bilhete, id_rota, preco, FK_Passageiro)
VALUES ('BT004', 'RT004', 60, 'PS004');

--inser��es Comboio
INSERT INTO train.Comboio (id_comboio, capacidade, data_fabrico)
VALUES ('CB001', 200, '2022-01-15');

INSERT INTO train.Comboio (id_comboio, capacidade, data_fabrico)
VALUES ('CB002', 150, '2021-07-05');

INSERT INTO train.Comboio (id_comboio, capacidade, data_fabrico)
VALUES ('CB003', 180, '2023-03-10');

INSERT INTO train.Comboio (id_comboio, capacidade, data_fabrico)
VALUES ('CB004', 180, '2019-01-30');

INSERT INTO train.Comboio (id_comboio, capacidade, data_fabrico)
VALUES ('CB005', 180, '2012-04-22');

INSERT INTO train.Comboio (id_comboio, capacidade, data_fabrico)
VALUES ('CB006', 150, '2008-02-02');

--inser��es Modelo_Comboio
INSERT INTO train.Modelo_Comboio (id_comboio, modelo)
VALUES ('CB001', 'SC-44');

INSERT INTO train.Modelo_Comboio (id_comboio, modelo)
VALUES ('CB002', 'ET44AC');

INSERT INTO train.Modelo_Comboio (id_comboio, modelo)
VALUES ('CB003', 'SD70ACe-T4');

INSERT INTO train.Modelo_Comboio (id_comboio, modelo)
VALUES ('CB004', 'SD70ACe-T4');

INSERT INTO train.Modelo_Comboio (id_comboio, modelo)
VALUES ('CB005', 'SD70ACe-T4');

INSERT INTO train.Modelo_Comboio (id_comboio, modelo)
VALUES ('CB006', 'ET44AC');

--inser��es Manutencao
INSERT INTO train.Manuntencao (id_manuntencao, descricao, data_manuntencao, FK_Comboio)
VALUES ('MNT001', 'Verifica��o de sistemas el�tricos', '2022-03-05', 'CB001');

INSERT INTO train.Manuntencao (id_manuntencao, descricao, data_manuntencao, FK_Comboio)
VALUES ('MNT002', 'Substitui��o de pe�as desgastadas', '2021-10-20', 'CB003');

INSERT INTO train.Manuntencao (id_manuntencao, descricao, data_manuntencao, FK_Comboio)
VALUES ('MNT003', 'Limpeza e higieniza��o', '2023-02-15', 'CB002');

--inser��es Vagao
INSERT INTO train.Vagao (id_vagao, descricao, capacidade, FK_Comboio)
VALUES ('VG001', 'Vag�o de passageiros', 50, 'CB001');

INSERT INTO train.Vagao (id_vagao, descricao, capacidade, FK_Comboio)
VALUES ('VG002', 'Vag�o de carga', 100, NULL);

INSERT INTO train.Vagao (id_vagao, descricao, capacidade, FK_Comboio)
VALUES ('VG003', 'Vag�o-restaurante', 30, 'CB002');

INSERT INTO train.Vagao (id_vagao, descricao, capacidade, FK_Comboio)
VALUES ('VG004', 'Vag�o de passageiros', 60, 'CB003');

--inser��es Modelo Vagao
INSERT INTO train.Modelo_vagao (id_vagao, modelo)
VALUES ('VG001', 'Passenger');

INSERT INTO train.Modelo_vagao (id_vagao, modelo)
VALUES ('VG002', 'Schnabel');

INSERT INTO train.Modelo_vagao (id_vagao, modelo)
VALUES ('VG003', 'Dining');

INSERT INTO train.Modelo_vagao (id_vagao, modelo)
VALUES ('VG004', 'Lounge');

--inser��es Tem
INSERT INTO train.Tem (id_servico, id_tripulacao, id_passageiro, id_comboio)
VALUES ('SB001', 'TR001', 'PS001', 'CB001');

INSERT INTO train.Tem (id_servico, id_tripulacao, id_passageiro, id_comboio)
VALUES ('SB002', 'TR002', 'PS002', 'CB002');

INSERT INTO train.Tem (id_servico, id_tripulacao, id_passageiro, id_comboio)
VALUES ('SB003', 'TR003', 'PS003', 'CB003');


--inser��es estacao
INSERT INTO train.Estacao (id_estacao, nome, localizacao, horario_abertura, horario_fecho, FK_Comboio, FK_Rota)
VALUES ('ES001', 'Esta��o Doutor Jos� Fernandes', 'Aljustrel', '08:00:00', '18:00:00', 'CB003', 'RT003');

INSERT INTO train.Estacao (id_estacao, nome, localizacao, horario_abertura, horario_fecho, FK_Comboio, FK_Rota)
VALUES ('ES002', 'Esta��o Engenheiro Saraiva e Melo', 'Leiria', '07:30:00', '19:30:00', 'CB001', 'RT002');

INSERT INTO train.Estacao (id_estacao, nome, localizacao, horario_abertura, horario_fecho, FK_Comboio, FK_Rota)
VALUES ('ES003', 'Esta��o do Norte', 'Minho', '09:00:00', '17:00:00', 'CB002', 'RT001');


--inser��es Rota
INSERT INTO train.Rota (id_rota, horario_partida, horario_chegada, estacao_partida, estacao_chegada, FK_Comboio)
VALUES ('RT001', '08:30:00', '11:00:00', 'Porto', 'Lisboa', 'CB002');

INSERT INTO train.Rota (id_rota, horario_partida, horario_chegada, estacao_partida, estacao_chegada, FK_Comboio)
VALUES ('RT002', '07:45:00', '10:30:00', 'Aveiro', 'Pombal', 'CB001');

INSERT INTO train.Rota (id_rota, horario_partida, horario_chegada, estacao_partida, estacao_chegada, FK_Comboio)
VALUES ('RT003', '09:15:00', '12:30:00', 'Odemira', 'Set�bal', 'CB003');

INSERT INTO train.Rota (id_rota, horario_partida, horario_chegada, estacao_partida, estacao_chegada, FK_Comboio)
VALUES ('RT004', '09:15:00', NULL, 'Odemira', 'Aveiro', 'CB004');

--inser��es classe bilhete  (meter um trigger aqui?)
INSERT INTO train.Classe_Bilhete (id_bilhete, classe)
VALUES ('BT001', 'Primeira Classe');

INSERT INTO train.Classe_Bilhete (id_bilhete, classe)
VALUES ('BT002', 'Executiva');

INSERT INTO train.Classe_Bilhete (id_bilhete, classe)
VALUES ('BT003', 'Economica');

INSERT INTO train.Classe_Bilhete (id_bilhete, classe)
VALUES ('BT004', 'Primeira Classe');



















