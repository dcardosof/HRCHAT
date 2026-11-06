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
    nome VARCHAR2(200) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    telefone VARCHAR2(20) NOT NULL,
    
    CONSTRAINT chk_email_valido CHECK (email LIKE '%@%')
);

CREATE TABLE tipo_skill (
    cod_tipo_skill NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(50) NOT NULL
);

CREATE TABLE cidade (
    cod_cidade NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_estado NUMBER NOT NULL,
    nome VARCHAR2(50) NOT NULL,
    
    CONSTRAINT fk_cidade_estado FOREIGN KEY (cod_estado) REFERENCES estado(cod_estado)
);

CREATE TABLE unidade_empresa (
    cod_unidade_empresa NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_empresa NUMBER NOT NULL,
    cod_cidade NUMBER NOT NULL,
    nome VARCHAR2(100) NOT NULL,
    descricao VARCHAR2(300) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    telefone VARCHAR2(20) NOT NULL,
    
    CONSTRAINT chk_email_valido2 CHECK (email LIKE '%@%'),
    CONSTRAINT fk_unidade_empresa FOREIGN KEY (cod_empresa) REFERENCES empresa(cod_empresa),
    CONSTRAINT fk_unidade_cidade FOREIGN KEY (cod_cidade) REFERENCES cidade(cod_cidade)
);

CREATE TABLE skill (
    cod_skill NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_tipo_skill NUMBER NOT NULL,
    nome VARCHAR2(300) NOT NULL,
    descricao VARCHAR2(100),
    
    CONSTRAINT fk_skill_tipo FOREIGN KEY (cod_tipo_skill) REFERENCES tipo_skill(cod_tipo_skill)
);

CREATE TABLE formacao_academica (
    cod_form_acad NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_area NUMBER NOT NULL,
    nome VARCHAR2(300) NOT NULL,
    nivel VARCHAR2(50) NOT NULL,
    
    CONSTRAINT chk_formacao_nivel CHECK (nivel IN ('Técnico', 'Graduação', 'Pós-Graduação', 'Mestrado', 'Doutorado')),
    CONSTRAINT fk_formacao_area FOREIGN KEY (cod_area) REFERENCES area(cod_area)
);

CREATE TABLE beneficio (
    cod_beneficio NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    descricao VARCHAR2(300),
    valor NUMBER(12,2) NOT NULL
    
    CONSTRAINT chk_beneficio_valor CHECK (valor >= 0)
);

CREATE TABLE experiencia (
    cod_experiencia NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    tempo_exp NUMBER NOT NULL,
    nome VARCHAR2(200) NOT NULL,
    
    CONSTRAINT chk_tempo_exp_positivo CHECK (tempo_exp > 0)
);

CREATE TABLE curriculo (
    cod_cv NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_cidade NUMBER NOT NULL,
    nome VARCHAR2(200) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    telefone VARCHAR2(20) NOT NULL,
    data_de_nascimento DATE NOT NULL,
    biografia VARCHAR2(1500) NOT NULL,
    
    CONSTRAINT chk_email_cv_valido CHECK (email LIKE '%@%'),
    CONSTRAINT fk_curriculo_cidade FOREIGN KEY (cod_cidade) REFERENCES cidade(cod_cidade)
);

CREATE TABLE vaga(
    cod_vaga NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_area NUMBER NOT NULL,
    cod_unidade_empresa NUMBER NOT NULL,
    cod_responsavel NUMBER NOT NULL,
    nome VARCHAR2(200) NOT NULL,
    descricao VARCHAR2(500) NOT NULL,
    salario NUMBER(12,2),
    experiencia CHAR(1) NOT NULL, -- "S" para SIM e "N" para NÃO.
    nivel_profissional VARCHAR2(50),
    data_postagem DATE NOT NULL,
    indice_comp_min NUMBER(5,2) NOT NULL,
    status VARCHAR2(50) NOT NULL,
    data_fim DATE NOT NULL,
  
    CONSTRAINT chk_vaga_nivel_profsher CHECK (nivel_profissional IN ('Estágio', 'Junior', 'PlenoAño', 'Senior', 'Especialista')),
    CONSTRAINT chk_vaga_experiencia CHECK (experiencia IN ('S', 'N')),
    CONSTRAINT chk_vaga_salario CHECK (salario >= 0),
    CONSTRAINT chk_vaga_indice CHECK (indice_comp_min BETWEEN 0 AND 100),
    CONSTRAINT chk_vaga_datas CHECK (data_fim >= data_postagem),
    CONSTRAINT chk_vaga_status CHECK (status IN ('Aberta', 'Em Seleção', 'Pausada', 'Finalizada', 'Cancelada')),
    CONSTRAINT fk_vaga_area FOREIGN KEY (cod_area) REFERENCES area(cod_area),
    CONSTRAINT fk_vaga_responsavel FOREIGN KEY (cod_responsavel) REFERENCES responsavel(cod_responsavel),
    CONSTRAINT fk_vaga_unidade FOREIGN KEY (cod_unidade_empresa) REFERENCES unidade_empresa(cod_unidade_empresa)
);

CREATE TABLE vaga_skill(
    cod_skill NUMBER NOT NULL,
    cod_vaga NUMBER NOT NULL,
    
    CONSTRAINT pk_vaga_skill PRIMARY KEY (cod_skill, cod_vaga),
    CONSTRAINT fk_skill_vaga FOREIGN KEY (cod_skill) REFERENCES skill(cod_skill),
    CONSTRAINT fk_vaga_skill FOREIGN KEY (cod_vaga) REFERENCES vaga(cod_vaga)
);

CREATE TABLE curriculo_skill(
    cod_skill NUMBER NOT NULL,
    cod_cv NUMBER NOT NULL,
    
    CONSTRAINT pk_curriculo_skill PRIMARY KEY (cod_skill, cod_cv),
    CONSTRAINT fk_skill_curriculo FOREIGN KEY (cod_skill) REFERENCES skill(cod_skill),
    CONSTRAINT fk_curriculo_skill FOREIGN KEY (cod_cv) REFERENCES curriculo(cod_cv)
);

CREATE TABLE vaga_formacao(
    cod_form_acad NUMBER NOT NULL,
    cod_vaga NUMBER NOT NULL,
    
    CONSTRAINT pk_vaga_formacao PRIMARY KEY (cod_form_acad, cod_vaga),
    CONSTRAINT fk_formacao_vaga FOREIGN KEY (cod_form_acad) REFERENCES formacao_academica(cod_form_acad),
    CONSTRAINT fk_vaga_formacao FOREIGN KEY (cod_vaga) REFERENCES vaga(cod_vaga)
);

CREATE TABLE curriculo_formacao(
    cod_form_acad NUMBER NOT NULL,
    cod_cv NUMBER NOT NULL,
    
    CONSTRAINT pk_curriculo_formacao PRIMARY KEY (cod_form_acad, cod_cv),
    CONSTRAINT fk_formacao_curriculo FOREIGN KEY (cod_form_acad) REFERENCES formacao_academica(cod_form_acad),
    CONSTRAINT fk_curriculo_formacao FOREIGN KEY (cod_cv) REFERENCES curriculo(cod_cv)
);

CREATE TABLE vaga_beneficio(
    cod_beneficio NUMBER NOT NULL,
    cod_vaga NUMBER NOT NULL,
    
    CONSTRAINT pk_vaga_beneficio PRIMARY KEY (cod_beneficio, cod_vaga),
    CONSTRAINT fk_beneficio_vaga FOREIGN KEY (cod_beneficio) REFERENCES beneficio(cod_beneficio),
    CONSTRAINT fk_vaga_beneficio FOREIGN KEY (cod_vaga) REFERENCES vaga(cod_vaga)
);

CREATE TABLE curriculo_experiencia(
    cod_experiencia NUMBER NOT NULL,
    cod_cv NUMBER NOT NULL,
    
    CONSTRAINT pk_curriculo_experiencia PRIMARY KEY (cod_experiencia, cod_cv),
    CONSTRAINT fk_experiencia_curriculo FOREIGN KEY (cod_experiencia) REFERENCES experiencia(cod_experiencia),
    CONSTRAINT fk_curriculo_experiencia FOREIGN KEY (cod_cv) REFERENCES curriculo(cod_cv)
);

CREATE TABLE questionario(
    cod_questionario NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_vaga NUMBER NOT NULL,
    titulo VARCHAR2(200) NOT NULL,

    CONSTRAINT fk_questionario_vaga FOREIGN KEY (cod_vaga) REFERENCES vaga(cod_vaga)
);

CREATE TABLE perguntas(
    cod_pergunta NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_questionario NUMBER NOT NULL,
    texto_pergunta VARCHAR2(1000) NOT NULL,
    tipo_pergunta VARCHAR2(50) NOT NULL,
    
    CONSTRAINT chk_tipo_pergunta CHECK (tipo_pergunta IN ('Objetiva', 'Discursiva', 'Múltipla Escolha')),
    CONSTRAINT fk_pergunta_questionario FOREIGN KEY (cod_questionario) REFERENCES questionario(cod_questionario)
);

CREATE TABLE candidatura(
    cod_candidatura NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cod_vaga NUMBER NOT NULL,
    cod_cv NUMBER NOT NULL,
    experiencia CHAR(1) NOT NULL, -- "S" para SIM e "N" para NÃO.
    indice_compatibilidade NUMBER(5,2) NOT NULL,
    data_candidatura DATE NOT NULL,
    status VARCHAR2(100) NOT NULL,
    instituicao_ensino VARCHAR2(50) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    
    CONSTRAINT chk_experiencia CHECK (experiencia IN ('S', 'N')),
    CONSTRAINT chk_cand_indice CHECK (indice_compatibilidade BETWEEN 0 AND 100),
    CONSTRAINT chk_cand_datas CHECK (data_fim >= data_inicio),
    CONSTRAINT fk_candidatura_vaga FOREIGN KEY (cod_vaga) REFERENCES vaga(cod_vaga),
    CONSTRAINT fk_candidatura_cv FOREIGN KEY (cod_cv) REFERENCES curriculo(cod_cv)
);

CREATE TABLE respostas(
    cod_candidatura NUMBER NOT NULL,
    cod_pergunta NUMBER NOT NULL,
    texto_resposta VARCHAR2(200),
    pontuacao NUMBER(4,2),
    
    CONSTRAINT pk_repostas_candidatura PRIMARY KEY (cod_candidatura, cod_pergunta),
    CONSTRAINT chk_respostas_pontuacao CHECK (pontuacao >= 0),
    CONSTRAINT fk_candidatura_repostas FOREIGN KEY (cod_candidatura) REFERENCES candidatura(cod_candidatura),
    CONSTRAINT fk_perguntas_repostas FOREIGN KEY (cod_pergunta) REFERENCES perguntas(cod_pergunta)
);
