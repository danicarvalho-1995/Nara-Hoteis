CREATE DATABASE nara_hoteis_db;

USE nara_hoteis_db;

---- CLIENTES ----
CREATE TABLE clientes (
    id_cliente INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade_origem VARCHAR(60) NOT NULL,
    estado_origem VARCHAR(2) NOT NULL,
    faixa_etaria VARCHAR(30) NULL,
    tipo_cliente VARCHAR(30) NOT NULL
);

---- CANAIS ----
CREATE TABLE canais_venda (
    id_canal INT NOT NULL PRIMARY KEY,
    nome_canal VARCHAR(100) NOT NULL,
    comissao_pct DECIMAL(3,2) NOT NULL
);

---- UNIDADES ----
CREATE TABLE unidades (
    id_unidade INT NOT NULL PRIMARY KEY,
    nome_unidade VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
    regiao VARCHAR(100),
    categoria_hotel VARCHAR(100),
    num_quartos_total INT NOT NULL
);

---- FUNCIONARIOS ----
CREATE TABLE funcionarios (
    id_funcionario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_unidade INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(60) NOT NULL,
    departamento VARCHAR(60) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL,
    FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade)
);

---- TIPO QUARTOS ----
CREATE TABLE tipo_quartos (
    id_tipo_quarto INT NOT NULL PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    capacidade_max INT NOT NULL,
    valor_diaria_base DECIMAL(10,2) NOT NULL
);

---- RESERVAS ----
CREATE TABLE reservas (
    id_reserva INT NOT NULL PRIMARY KEY,
    id_unidade INT NOT NULL,
    id_tipo_quarto INT NOT NULL,
    id_cliente INT NOT NULL,
    id_canal INT NULL,
    data_checkin DATE NOT NULL,
    data_checkout DATE NOT NULL,
    qtd_diarias INT NOT NULL,
    num_hospedes INT NOT NULL,
    avaliacao_hospede DECIMAL(4,2) NULL,
    status_reserva VARCHAR(30) NOT NULL,
    forma_pagamento VARCHAR(30) NOT NULL,
    avaliado_sim_nao VARCHAR(5) NOT NULL,

    FOREIGN KEY (id_unidade)
        REFERENCES unidades(id_unidade),

    FOREIGN KEY (id_tipo_quarto)
        REFERENCES tipo_quartos(id_tipo_quarto),

    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),

    FOREIGN KEY (id_canal)
        REFERENCES canais_venda(id_canal)
);

SET GLOBAL local_infile = 1;

---- CLIENTES ----
LOAD DATA INFILE "C:/Users/karoline.duffrayer/Downloads/clienteslimpo.csv"
INTO TABLE clientes
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_cliente, nome, cidade_origem, estado_origem, faixa_etaria, tipo_cliente);

---- CANAIS ----
LOAD DATA INFILE "C:/Users/karoline.duffrayer/Downloads/canaislimpo.csv"
INTO TABLE canais_venda
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_canal, nome_canal, comissao_pct);

---- UNIDADES ----
LOAD DATA INFILE "C:/Users/karoline.duffrayer/Downloads/unidadeslimpo.csv"
INTO TABLE unidades
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_unidade, nome_unidade, cidade, regiao, categoria_hotel, num_quartos_total);

---- FUNCIONARIOS ----
LOAD DATA INFILE "C:/Users/karoline.duffrayer/Downloads/funcionarioslimpo.csv"
INTO TABLE funcionarios
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_funcionario, id_unidade, nome, cargo, departamento, salario, data_admissao);

---- TIPO QUARTOS ----
LOAD DATA INFILE "C:/Users/karoline.duffrayer/Downloads/quartoslimpo.csv"
INTO TABLE tipo_quartos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_tipo_quarto, descricao, capacidade_max, valor_diaria_base);

---- RESERVAS ----
LOAD DATA INFILE "C:/Users/karoline.duffrayer/Downloads/reservaslimpo.csv"
INTO TABLE reservas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_reserva, id_unidade, id_tipo_quarto, id_cliente, id_canal, data_checkin, data_checkout, qtd_diarias, num_hospedes,avaliacao_hospede, status_reserva, forma_pagamento, avaliado_sim_nao);


SHOW WARNINGS;

SELECT * from canais_venda;