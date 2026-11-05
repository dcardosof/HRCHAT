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
    
    CONSTRAINT fk_unidade_empresa FOREIGN KEY (cod_empresa) REFERENCES empresa(cod_empresa),
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

CREATE TABLE curriculo (
    cod_cv NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    telefone NUMBER NOT NULL,
    data_de_nascimento DATE NOT NULL,
    cod_cidade NUMBER NOT NULL,
    biografia VARCHAR2(500) NOT NULL,
    
    CONSTRAINT fk_curriculo_cidade FOREIGN KEY (cod_cidade) REFERENCES cidade(cod_cidade)
);

CREATE TABLE experiencia (
    cod_experiencia NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    tempo_exp NUMBER NOT NULL,
    nome VARCHAR2(100) NOT NULL
    
);

CREATE TABLE vaga(
    cod_vaga NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_area NUMBER NOT NULL,
    cod_responsavel NUMBER NOT NULL,
    cod_unidade NUMBER NOT NULL,
    nome VARCHAR2(100) NOT NULL,
    descricao VARCHAR2(500) NOT NULL,
    salario NUMBER(10,2),
    experiencia CHAR(1) NOT NULL,
    nivel_profissional VARCHAR2(50),
    data_postagem DATE NOT NULL,
    indice_comp_min NUMBER NOT NULL,
    status VARCHAR2(100) NOT NULL,
    data_fim DATE NOT NULL,
    
    CONSTRAINT fk_vaga_area FOREIGN KEY (cod_area) REFERENCES area(cod_area),
    CONSTRAINT fk_vaga_responsavel FOREIGN KEY (cod_responsavel) REFERENCES responsavel(cod_responsavel),
    CONSTRAINT fk_vaga_unidade FOREIGN KEY (cod_unidade) REFERENCES unidade(cod_unidade)
);

CREATE TABLE beneficio (
    cod_beneficio NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(20) NOT NULL,
    descricao VARCHAR2(200),
    valor NUMBER(3,2) NOT NULL
);

CREATE TABLE candidatura (
    cod_candidatura NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_vaga NUMBER NOT NULL,
    cod_cv NUMBER NOT NULL,
    experiencia NUMBER(1) NOT NULL, -- 1 para VERDADEIRO, 0 para FALSO
    indice_compatibilidade NUMBER(5, 2) NOT NULL,
    data_candidatura DATE NOT NULL,
    status VARCHAR2(100) NOT NULL,
    
    CONSTRAINT fk_candidatura_vaga FOREIGN KEY (cod_vaga) REFERENCES vaga(cod_vaga),
    CONSTRAINT fk_candidatura_cv FOREIGN KEY (cod_cv) REFERENCES curriculo(cod_cv)
);




