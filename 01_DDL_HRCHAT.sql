CREATE TABLE estado (
    cod_estado NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(50) NOT NULL
);

CREATE TABLE empresa (
    cod_empresa NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    descricao VARCHAR2(300)
);

CREATE TABLE area (
    cod_area NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL
);

CREATE TABLE responsavel (
    cod_responsavel NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    telefone NUMBER NOT NULL
);

CREATE TABLE tipo_skill (
    cod_tipo_skill NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(50) NOT NULL
);

CREATE TABLE cidade (
    cod_cidade NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(50) NOT NULL
);

CREATE TABLE unidade (
    cod_unidade NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_empresa NUMBER NOT NULL,
    cod_cidade NUMBER NOT NULL,
    
    nome VARCHAR2(100) NOT NULL,
    descricao VARCHAR2(300) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    telefone NUMBER NOT NULL,
    
    CONSTRAINT fk_unidade_empresa FOREIGN KEY (cod_empresa) REFERENCES emprsa(cod_empresa),
    CONSTRAINT fk_cidade FOREIGN KEY (cod_cidade) REFERENCES cidade(cod_cidade)
);

CREATE TABLE skill (
    cod_skill NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_tipo_skill NUMBER NOT NULL,
    nome VARCHAR2(300) NOT NULL,
    descricao VARCHAR2(150),
    
    CONSTRAINT fk_cod_tipo_skill FOREIGN KEY (cod_tipo_skill) REFERENCES tipo_skill(cod_tipo_skill)
);

CREATE TABLE formacao_academica (
    cod_form_acad NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_area NUMBER NOT NULL,
    nome VARCHAR2(300) NOT NULL,
    nivel VARCHAR2(50) NOT NULL,
    
    CONSTRAINT fk_cod_area FOREIGN KEY (cod_area) REFERENCES area(cod_area)
);