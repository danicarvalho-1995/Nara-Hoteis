CREATE DATABASE narahoteis_db;

USE narahoteis_db;

---- CLIENTES ----
CREATE TABLE clientes (
    id_cliente INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade_origem VARCHAR(60) NOT NULL,
    faixa_etaria VARCHAR(30) NULL,
    tipo_cliente VARCHAR(30) NOT NULL,
    uf_correta VARCHAR(2) NOT NULL
);
---- CANAIS ----
CREATE TABLE canais(
id_canal INT NOT NULL PRIMARY KEY,
nome_canal VARCHAR(100) NOT NULL,
comissao_pct DECIMAL(3,2) NOT NULL
);
---- UNIDADES ----
CREATE TABLE unidades(
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
---- QUARTOS ----
CREATE TABLE quartos(
id_tipo_quarto INT NOT NULL PRIMARY KEY,
descricao VARCHAR(100) NOT NULL,
capacidade_max INT NOT NULL,
valor_diaria_base DECIMAL(4,1) NOT NULL
);

--- RESERVAS ----

CREATE TABLE reservas(
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
    FOREIGN KEY (id_unidade) 
    REFERENCES unidades(id_unidade),
    FOREIGN KEY (id_tipo_quarto) 
    REFERENCES quartos(id_tipo_quarto),
    FOREIGN KEY (id_cliente) 
    REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_canal) 
    REFERENCES canais(id_canal)
);

USE narahoteis_db;

SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE "C:/Users/SVS/Documents/Duffrayer, Karol/CURSOS/SENAC/UC2/NARA HOTEIS/clientes_limpo.csv"
INTO TABLE clientes
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_cliente,nome,cidade_origem,estado_origem,faixa_etaria,tipo_cliente,estado_esperado, @inconsistencia_cidade_estado);


LOAD DATA LOCAL INFILE "C:/Users/SVS/Documents/Duffrayer, Karol/CURSOS/SENAC/UC2/NARA HOTEIS/canais_limpo.csv"
INTO TABLE canais
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_canal,nome_canal,comissao_pct);


LOAD DATA INFILE "C:/Users/SVS/Documents/Duffrayer, Karol/CURSOS/SENAC/UC2/NARA HOTEIS/reservas_limpo.csv"
INTO TABLE reservas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_reserva,id_unidade,id_tipo_quarto, id_cliente, id_canal,data_checkin,data_checkout,qtd_diarias,num_hospedes,avaliacao_hospede,status_reserva,forma_pagamento);

