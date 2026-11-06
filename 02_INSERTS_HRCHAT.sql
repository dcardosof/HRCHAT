-- =====================================================================
-- 1. TABELA ESTADO (Tabela Pai)
-- =====================================================================
INSERT INTO estado (nome) VALUES ('São Paulo');
INSERT INTO estado (nome) VALUES ('Paraná');
INSERT INTO estado (nome) VALUES ('Minas Gerais');
INSERT INTO estado (nome) VALUES ('Rio de Janeiro');
INSERT INTO estado (nome) VALUES ('Santa Catarina');
INSERT INTO estado (nome) VALUES ('Rio Grande do Sul');
INSERT INTO estado (nome) VALUES ('Bahia');
INSERT INTO estado (nome) VALUES ('Pernambuco');
INSERT INTO estado (nome) VALUES ('Goiás');
INSERT INTO estado (nome) VALUES ('Espírito Santo');
SELECT * FROM estado;
ALTER TABLE estado MODIFY cod_estado GENERATED ALWAYS AS IDENTITY (START WITH 1);
ALTER TABLE empresa MODIFY cod_empresa GENERATED ALWAYS AS IDENTITY (START WITH 1);
ALTER TABLE cidade MODIFY cod_cidade GENERATED ALWAYS AS IDENTITY (START WITH 11)
-- =====================================================================
-- 2. TABELA CIDADE (Depende de ESTADO)
-- =====================================================================
INSERT INTO cidade (cod_estado, nome) VALUES (1, 'São Paulo');
INSERT INTO cidade (cod_estado, nome) VALUES (1, 'Campinas');
INSERT INTO cidade (cod_estado, nome) VALUES (1, 'Osasco');
INSERT INTO cidade (cod_estado, nome) VALUES (1, 'Guarulhos');
INSERT INTO cidade (cod_estado, nome) VALUES (2, 'Curitiba');
INSERT INTO cidade (cod_estado, nome) VALUES (2, 'Londrina');
INSERT INTO cidade (cod_estado, nome) VALUES (3, 'Belo Horizonte');
INSERT INTO cidade (cod_estado, nome) VALUES (3, 'Uberlândia');
INSERT INTO cidade (cod_estado, nome) VALUES (4, 'Rio de Janeiro');
INSERT INTO cidade (cod_estado, nome) VALUES (5, 'Florianópolis');

TRUNCATE TABLE estado
-- =====================================================================
-- 3. TABELA EMPRESA (Tabela Pai)
-- =====================================================================
INSERT INTO empresa (nome, descricao) VALUES ('Nexora', 'Empresa de desenvolvimento de software e soluções digitais');
INSERT INTO empresa (nome, descricao) VALUES ('Data Core', 'Empresa especializada em análise de dados e inteligência de negócios');
INSERT INTO empresa (nome, descricao) VALUES ('Vertice', 'Empresa de consultoria administrativa e empresarial');
INSERT INTO empresa (nome, descricao) VALUES ('TechFlow', 'Consultoria e soluções em automação de processos');
INSERT INTO empresa (nome, descricao) VALUES ('CloudSys', 'Serviços de infraestrutura em nuvem corporativa');
INSERT INTO empresa (nome, descricao) VALUES ('InovaCorp', 'Aceleradora de startups de tecnologia');
INSERT INTO empresa (nome, descricao) VALUES ('SecureNet', 'Empresa focada em cibersegurança e auditoria');
INSERT INTO empresa (nome, descricao) VALUES ('WebNexus', 'Agência especializada em desenvolvimento web');
INSERT INTO empresa (nome, descricao) VALUES ('Alpha Tech', 'Sistemas ERP para grandes indústrias');
INSERT INTO empresa (nome, descricao) VALUES ('Beta Consultoria', 'Consultoria estratégica para recursos humanos');

-- =====================================================================
-- 4. TABELA AREA (Tabela Pai)
-- =====================================================================
INSERT INTO area (nome) VALUES ('Tecnologia');
INSERT INTO area (nome) VALUES ('Recursos Humanos');
INSERT INTO area (nome) VALUES ('Administrativo');
INSERT INTO area (nome) VALUES ('Financeiro');
INSERT INTO area (nome) VALUES ('Marketing');
INSERT INTO area (nome) VALUES ('Vendas');
INSERT INTO area (nome) VALUES ('Operações');
INSERT INTO area (nome) VALUES ('Design');
INSERT INTO area (nome) VALUES ('Qualidade');
INSERT INTO area (nome) VALUES ('Suporte Técnico');

-- =====================================================================
-- 5. TABELA RESPONSAVEL (Tabela Pai)
-- =====================================================================
INSERT INTO responsavel (nome, email, telefone) VALUES ('Mariana Souza', 'mariana.souza@nexora.com', 11990001111);
INSERT INTO responsavel (nome, email, telefone) VALUES ('Carlos Mendes', 'carlos.mendes@datacore.com', 11990002222);
INSERT INTO responsavel (nome, email, telefone) VALUES ('Fernanda Lima', 'fernanda.lima@vertice.com', 41990003333);
INSERT INTO responsavel (nome, email, telefone) VALUES ('Roberto Alves', 'roberto@techflow.com', 11988887777);
INSERT INTO responsavel (nome, email, telefone) VALUES ('Luciana Costa', 'luciana@cloudsys.com', 21988886666);
INSERT INTO responsavel (nome, email, telefone) VALUES ('Marcos Silva', 'marcos@inovacorp.com', 31988885555);
INSERT INTO responsavel (nome, email, telefone) VALUES ('Juliana Rocha', 'juliana@securenet.com', 41988884444);
INSERT INTO responsavel (nome, email, telefone) VALUES ('Tiago Santos', 'tiago@webnexus.com', 51988883333);
INSERT INTO responsavel (nome, email, telefone) VALUES ('Beatriz Gomes', 'beatriz@alphatech.com', 11988882222);
INSERT INTO responsavel (nome, email, telefone) VALUES ('Ricardo Moreira', 'ricardo@betaconsult.com', 19988881111);

-- =====================================================================
-- 6. TABELA TIPO_SKILL (Tabela Pai)
-- =====================================================================
INSERT INTO tipo_skill (nome) VALUES ('Hard Skill');
INSERT INTO tipo_skill (nome) VALUES ('Soft Skill');
INSERT INTO tipo_skill (nome) VALUES ('Idioma');
INSERT INTO tipo_skill (nome) VALUES ('Certificação');
INSERT INTO tipo_skill (nome) VALUES ('Metodologia');
INSERT INTO tipo_skill (nome) VALUES ('Ferramenta');
INSERT INTO tipo_skill (nome) VALUES ('Comportamental');
INSERT INTO tipo_skill (nome) VALUES ('Técnica');
INSERT INTO tipo_skill (nome) VALUES ('Liderança');
INSERT INTO tipo_skill (nome) VALUES ('Analítica');

-- =====================================================================
-- 7. TABELA UNIDADE_EMPRESA (Depende de EMPRESA e CIDADE)
-- =====================================================================
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES (1, 1, 'Nexora São Paulo', 'Unidade comercial e de tecnologia', 'sp@nexora.com', '11987654321');
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES (2, 2, 'DataCore Campinas', 'Unidade de dados e analytics', 'campinas@datacore.com', '19987654321');
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES (3, 5, 'Vertice Curitiba', 'Unidade administrativa regional', 'curitiba@vertice.com', '41987654321');
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES (1, 2, 'Nexora Campinas', 'Filial de suporte tecnológico', 'camp@nexora.com', '19987651111');
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES (4, 1, 'TechFlow SP', 'Centro de Inovação', 'sp@techflow.com', '11987652222');
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES (5, 9, 'CloudSys RJ', 'Base de infraestrutura', 'rj@cloudsys.com', '21987653333');
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES (6, 7, 'InovaCorp BH', 'Centro de startups', 'bh@inovacorp.com', '31987654444');
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES (7, 10, 'SecureNet Sul', 'Unidade de auditoria sul', 'sc@securenet.com', '48987655555');
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES (8, 1, 'WebNexus SP', 'Agência digital', 'sp@webnexus.com', '11987656666');
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES (9, 2, 'Alpha Tech Camp', 'Operações ERP', 'camp@alphatech.com', '19987657777');

-- =====================================================================
-- 8. TABELA SKILL (Depende de TIPO_SKILL)
-- =====================================================================
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES (1, 'Java', 'Linguagem de programação orientada a objetos');
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES (1, 'SQL', 'Linguagem para consulta e manipulação de bancos de dados');
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES (1, 'Python', 'Linguagem de programação de propósito geral');
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES (2, 'Comunicação', 'Capacidade de transmitir informações com clareza');
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES (2, 'Organização', 'Capacidade de planejar e organizar tarefas');
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES (1, 'JavaScript', 'Linguagem para desenvolvimento web');
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES (2, 'Trabalho em Equipe', 'Habilidade de atuar bem em grupos');
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES (3, 'Inglês Avançado', 'Comunicação fluente em inglês');
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES (5, 'Metodologia Ágil', 'Experiência com Scrum e Kanban');
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES (6, 'Power BI', 'Criação de dashboards e análise visual');

-- =====================================================================
-- 9. TABELA FORMACAO_ACADEMICA (Depende de AREA)
-- =====================================================================
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES (1, 'Ciência da Computação', 'Graduação');
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES (1, 'Análise e Desenvolvimento de Sistemas', 'Tecnólogo');
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES (3, 'Administração', 'Graduação');
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES (2, 'Gestão de Recursos Humanos', 'Tecnólogo');
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES (1, 'Sistemas de Informação', 'Graduação');
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES (1, 'Engenharia de Software', 'Graduação');
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES (4, 'Ciências Contábeis', 'Graduação');
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES (5, 'Marketing Digital', 'Tecnólogo');
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES (7, 'Logística', 'Tecnólogo');
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES (8, 'Design Gráfico', 'Graduação');

-- =====================================================================
-- 10. TABELA BENEFICIO (Tabela Pai)
-- =====================================================================
INSERT INTO beneficio (nome, descricao, valor) VALUES ('Vale-refeição', 'Benefício mensal para alimentação', 700.00);
INSERT INTO beneficio (nome, descricao, valor) VALUES ('Auxílio home office', 'Ajuda de custo para trabalho remoto', 200.00);
INSERT INTO beneficio (nome, descricao, valor) VALUES ('Plano de saúde', 'Assistência médica empresarial', 450.00);
INSERT INTO beneficio (nome, descricao, valor) VALUES ('Vale-transporte', 'Auxílio para deslocamento', 300.00);
INSERT INTO beneficio (nome, descricao, valor) VALUES ('Seguro de vida', 'Seguro de vida corporativo', 50.00);
INSERT INTO beneficio (nome, descricao, valor) VALUES ('Gympass', 'Auxílio academia', 100.00);
INSERT INTO beneficio (nome, descricao, valor) VALUES ('Bolsa Educação', 'Auxílio para pós e certificações', 500.00);
INSERT INTO beneficio (nome, descricao, valor) VALUES ('Day Off', 'Folga de aniversário', 0.00);
INSERT INTO beneficio (nome, descricao, valor) VALUES ('Plano odontológico', 'Assistência odontológica', 80.00);
INSERT INTO beneficio (nome, descricao, valor) VALUES ('Auxílio creche', 'Benefício para filhos pequenos', 350.00);

-- =====================================================================
-- 11. TABELA EXPERIENCIA (Tabela Pai)
-- =====================================================================
INSERT INTO experiencia (tempo_exp, nome) VALUES (6, 'Estágio em tecnologia');
INSERT INTO experiencia (tempo_exp, nome) VALUES (12, 'Desenvolvimento de software');
INSERT INTO experiencia (tempo_exp, nome) VALUES (24, 'Análise de dados');
INSERT INTO experiencia (tempo_exp, nome) VALUES (36, 'Recrutamento e seleção');
INSERT INTO experiencia (tempo_exp, nome) VALUES (18, 'Rotinas administrativas');
INSERT INTO experiencia (tempo_exp, nome) VALUES (48, 'Gestão de projetos');
INSERT INTO experiencia (tempo_exp, nome) VALUES (12, 'Suporte técnico nível 1');
INSERT INTO experiencia (tempo_exp, nome) VALUES (24, 'Marketing de conteúdo');
INSERT INTO experiencia (tempo_exp, nome) VALUES (36, 'Vendas corporativas');
INSERT INTO experiencia (tempo_exp, nome) VALUES (60, 'Gerência de operações');


-- ===================================================================== 
-- 12. TABELA CURRICULO (Depende de CIDADE)
-- =====================================================================
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES (1, 'Ana Oliveira', 'ana.oliveira@email.com', '19981112222', TO_DATE('2000-08-04', 'YYYY-MM-DD'), 'Estudante de tecnologia com interesse em desenvolvimento e dados');
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES (1, 'Eduarda Alves', 'eduarda.alves@email.com', '11985556666', TO_DATE('2002-07-15', 'YYYY-MM-DD'), 'Desenvolvedora júnior com interesse em back-end e bancos de dados');
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES (2, 'Bruno Santos', 'bruno.santos@email.com', '11983334444', TO_DATE('1999-01-21', 'YYYY-MM-DD'), 'Profissional em início de carreira com foco em dados e automação');
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES (1, 'Camila Rocha', 'camila.rocha@email.com', '19944455555', TO_DATE('2001-09-03', 'YYYY-MM-DD'), 'Estudante de administração com experiência em atendimento');
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES (5, 'Diego Martins', 'diego.martins@email.com', '41982223333', TO_DATE('1998-02-22', 'YYYY-MM-DD'), 'Profissional de RH com experiência em recrutamento e seleção');
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES (2, 'Felipe Souza', 'felipe@email.com', '19981115555', TO_DATE('2000-11-10', 'YYYY-MM-DD'), 'Desenvolvedor front-end focado em React e interfaces modernas');
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES (1, 'Amanda Costa', 'amanda@email.com', '11981116666', TO_DATE('1997-04-05', 'YYYY-MM-DD'), 'Especialista em recrutamento tech e headhunting');
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES (9, 'Lucas Mendes', 'lucas@email.com', '21981117777', TO_DATE('1995-12-12', 'YYYY-MM-DD'), 'Gerente de projetos ágeis certificado Scrum Master');
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES (5, 'Patricia Lima', 'patricia@email.com', '41981118888', TO_DATE('2001-01-30', 'YYYY-MM-DD'), 'Assistente administrativa com foco em controles internos');
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES (1, 'Thiago Silva', 'thiago@email.com', '11981119999', TO_DATE('1999-05-20', 'YYYY-MM-DD'), 'Analista de dados com especialidade em Python e Power BI');

-- =====================================================================
-- 13. TABELA VAGA (Depende de AREA, RESPONSAVEL, UNIDADE_EMPRESA)
-- =====================================================================
SELECT * FROM unidade_empresa;
TRUNCATE TABLE unidade_empresa;
ALTER TABLE unidade_empresa MODIFY cod_unidade_empresa GENERATED ALWAYS AS IDENTITY (START WITH 1);

INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade_empresa, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) 
VALUES (1, 1, 1, 'Desenvolvedor Back-end', 'Desenvolvimento e manutenção de APIs e integrações', 6500.00, 'S', 'Júnior', TO_DATE('2026-10-01', 'YYYY-MM-DD'), 70.00, 'Em andamento', TO_DATE('2026-11-15', 'YYYY-MM-DD'));

INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade_empresa, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) 
VALUES (1, 2, 2, 'Analista de Dados Júnior', 'Análise de dados, criação de relatórios e dashboards', 4200.00, 'N', 'Júnior', TO_DATE('2026-10-03', 'YYYY-MM-DD'), 65.00, 'Em andamento', TO_DATE('2026-11-20', 'YYYY-MM-DD'));

INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade_empresa, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) 
VALUES (2, 1, 1, 'Analista de Recrutamento', 'Condução de processos seletivos e triagem de candidatos', 3800.00, 'S', 'Pleno', TO_DATE('2026-10-05', 'YYYY-MM-DD'), 60.00, 'Finalizado', TO_DATE('2026-11-18', 'YYYY-MM-DD'));

INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade_empresa, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) 
VALUES (3, 3, 3, 'Assistente Administrativo', 'Apoio a rotinas administrativas e atendimento interno', 2800.00, 'N', 'Júnior', TO_DATE('2026-10-08', 'YYYY-MM-DD'), 55.00, 'Finalizado', TO_DATE('2026-11-25', 'YYYY-MM-DD'));

INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade_empresa, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) 
VALUES (1, 1, 1, 'Desenvolvedor Front-end', 'Criação de telas em React', 6000.00, 'S', 'Júnior', TO_DATE('2026-10-10', 'YYYY-MM-DD'), 65.00, 'Em andamento', TO_DATE('2026-12-01', 'YYYY-MM-DD'));

INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade_empresa, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) 
VALUES (1, 2, 2, 'Engenheiro de Dados', 'ETL e manutenção de DW', 9500.00, 'S', 'Sênior', TO_DATE('2026-10-12', 'YYYY-MM-DD'), 85.00, 'Em andamento', TO_DATE('2026-12-10', 'YYYY-MM-DD'));

INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade_empresa, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) 
VALUES (4, 3, 3, 'Analista Financeiro', 'Controle orçamentário', 4500.00, 'S', 'Pleno', TO_DATE('2026-10-15', 'YYYY-MM-DD'), 70.00, 'Em andamento', TO_DATE('2026-11-30', 'YYYY-MM-DD'));

INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade_empresa, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) 
VALUES (1, 1, 1, 'Estagiário de TI', 'Suporte a sistemas internos', 1800.00, 'N', 'Estágio', TO_DATE('2026-10-20', 'YYYY-MM-DD'), 50.00, 'Em andamento', TO_DATE('2026-11-20', 'YYYY-MM-DD'));

INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade_empresa, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) 
VALUES (2, 2, 2, 'Coordenador de RH', 'Gestão de folha e equipe', 8000.00, 'S', 'Gerência', TO_DATE('2026-10-22', 'YYYY-MM-DD'), 80.00, 'Em andamento', TO_DATE('2026-12-05', 'YYYY-MM-DD'));

INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade_empresa, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) 
VALUES (3, 3, 3, 'Recepcionista', 'Atendimento ao público presencial', 2000.00, 'N', 'Júnior', TO_DATE('2026-10-25', 'YYYY-MM-DD'), 45.00, 'Finalizado', TO_DATE('2026-11-10', 'YYYY-MM-DD'));

TRUNCATE TABLE vaga
ALTER TABLE vaga MODIFY cod_vaga GENERATED ALWAYS AS IDENTITY (START WITH 1)
SELECT * FROM vaga;

-- =====================================================================
-- 14. TABELA VAGA_SKILL (Depende de SKILL e VAGA)
-- =====================================================================
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES (1, 1);
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES (2, 1);
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES (3, 1);
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES (2, 2);
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES (3, 2);
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES (10, 2);
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES (4, 3);
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES (5, 3);
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES (4, 4);
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES (5, 4);

SELECT * FROM vaga;

-- =====================================================================
-- 15. TABELA CURRICULO_SKILL (Depende de SKILL e CURRICULO)
-- =====================================================================
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES (1, 1);
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES (2, 1);
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES (3, 1);
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES (1, 2);
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES (2, 2);
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES (3, 2);
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES (2, 3);
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES (3, 3);
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES (4, 4);
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES (4, 5);

SELECT * FROM curriculo;
TRUNCATE TABLE curriculo
ALTER TABLE curriculo MODIFY cod_cv GENERATED ALWAYS AS IDENTITY (START WITH 1)
-- =====================================================================
-- 16. TABELA VAGA_FORMACAO (Depende de FORMACAO_ACADEMICA e VAGA)
-- =====================================================================
INSERT INTO vaga_formacao (cod_form_acad, cod_vaga) VALUES (1, 1);
INSERT INTO vaga_formacao (cod_form_acad, cod_vaga) VALUES (2, 1);
INSERT INTO vaga_formacao (cod_form_acad, cod_vaga) VALUES (1, 2);
INSERT INTO vaga_formacao (cod_form_acad, cod_vaga) VALUES (2, 2);
INSERT INTO vaga_formacao (cod_form_acad, cod_vaga) VALUES (4, 3);
INSERT INTO vaga_formacao (cod_form_acad, cod_vaga) VALUES (3, 4);
INSERT INTO vaga_formacao (cod_form_acad, cod_vaga) VALUES (1, 5);
INSERT INTO vaga_formacao (cod_form_acad, cod_vaga) VALUES (1, 6);
INSERT INTO vaga_formacao (cod_form_acad, cod_vaga) VALUES (3, 7);
INSERT INTO vaga_formacao (cod_form_acad, cod_vaga) VALUES (2, 8);

-- =====================================================================
-- 17. TABELA CURRICULO_FORMACAO (Depende de FORMACAO_ACADEMICA e CURRICULO)
-- =====================================================================
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv) VALUES (1, 1);
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv) VALUES (2, 2);
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv) VALUES (4, 3);
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv) VALUES (3, 4);
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv) VALUES (4, 5);
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv) VALUES (2, 6);
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv) VALUES (4, 7);
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv) VALUES (3, 8);
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv) VALUES (3, 9);
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv) VALUES (1, 10);

-- =====================================================================
-- 18. TABELA VAGA_BENEFICIO (Depende de BENEFICIO e VAGA)
-- =====================================================================
INSERT INTO vaga_beneficio (cod_beneficio, cod_vaga) VALUES (1, 1);
INSERT INTO vaga_beneficio (cod_beneficio, cod_vaga) VALUES (2, 1);
INSERT INTO vaga_beneficio (cod_beneficio, cod_vaga) VALUES (3, 1);
INSERT INTO vaga_beneficio (cod_beneficio, cod_vaga) VALUES (1, 2);
INSERT INTO vaga_beneficio (cod_beneficio, cod_vaga) VALUES (2, 2);
INSERT INTO vaga_beneficio (cod_beneficio, cod_vaga) VALUES (1, 3);
INSERT INTO vaga_beneficio (cod_beneficio, cod_vaga) VALUES (3, 3);
INSERT INTO vaga_beneficio (cod_beneficio, cod_vaga) VALUES (4, 4);
INSERT INTO vaga_beneficio (cod_beneficio, cod_vaga) VALUES (1, 5);
INSERT INTO vaga_beneficio (cod_beneficio, cod_vaga) VALUES (3, 6);

-- =====================================================================
-- 19. TABELA CURRICULO_EXPERIENCIA (Depende de EXPERIENCIA e CURRICULO)
-- =====================================================================
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES (1, 1);
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES (2, 2);
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES (3, 3);
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES (5, 4);
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES (4, 5);
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES (2, 6);
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES (4, 7);
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES (6, 8);
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES (5, 9);
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES (3, 10);

-- =====================================================================
-- 20. TABELA QUESTIONARIO (Depende de VAGA)
-- =====================================================================
INSERT INTO questionario (cod_vaga, titulo) VALUES (1, 'Questionário Desenvolvedor Back-end');
INSERT INTO questionario (cod_vaga, titulo) VALUES (2, 'Questionário Analista de Dados');
INSERT INTO questionario (cod_vaga, titulo) VALUES (3, 'Questionário Analista de Recrutamento');
INSERT INTO questionario (cod_vaga, titulo) VALUES (4, 'Questionário Assistente Administrativo');
INSERT INTO questionario (cod_vaga, titulo) VALUES (5, 'Questionário Dev Front');
INSERT INTO questionario (cod_vaga, titulo) VALUES (6, 'Questionário Data Engineer');
INSERT INTO questionario (cod_vaga, titulo) VALUES (7, 'Questionário Finanças');
INSERT INTO questionario (cod_vaga, titulo) VALUES (8, 'Questionário Estágio TI');
INSERT INTO questionario (cod_vaga, titulo) VALUES (9, 'Questionário Coordenador');
INSERT INTO questionario (cod_vaga, titulo) VALUES (10, 'Questionário Recepção');

-- =====================================================================
-- 21. TABELA PERGUNTAS (Depende de QUESTIONARIO)
-- =====================================================================
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES (1, 'Você possui experiência com programação back-end?', 'Seleção');
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES (1, 'Qual seu nível de conhecimento em SQL?', 'Texto');
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES (2, 'Você possui conhecimento em SQL?', 'Seleção');
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES (2, 'Você possui experiência com dashboards?', 'Seleção');
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES (3, 'Você possui experiência com processos seletivos?', 'Seleção');
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES (3, 'Como você avalia sua comunicação?', 'Texto');
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES (4, 'Você possui experiência com rotinas administrativas?', 'Texto');
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES (4, 'Possui facilidade com organização de documentos?', 'Seleção');
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES (5, 'Conhece bibliotecas de componentes UI em React?', 'Seleção');
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES (6, 'Já trabalhou com Spark e Hadoop?', 'Texto');

SELECT * FROM questionario;
TRUNCATE TABLE questionario
ALTER TABLE questionario MODIFY cod_questionario GENERATED ALWAYS AS IDENTITY (START WITH 1)

-- =====================================================================
-- 22. TABELA CANDIDATURA (Depende de VAGA e CURRICULO)
-- =====================================================================
INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status, instituicao_ensino, data_inicio, data_fim) 
VALUES (1, 1, 'S', 78.50, TO_DATE('2026-10-20', 'YYYY-MM-DD'), 'Em análise', 'Universidade Paulista', TO_DATE('2022-02-01', 'YYYY-MM-DD'), TO_DATE('2026-12-15', 'YYYY-MM-DD'));

INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status, instituicao_ensino, data_inicio, data_fim) 
VALUES (1, 2, 'S', 91.00, TO_DATE('2026-10-20', 'YYYY-MM-DD'), 'Aprovado para entrevista', 'Universidade Paulista', TO_DATE('2022-02-01', 'YYYY-MM-DD'), TO_DATE('2026-12-15', 'YYYY-MM-DD'));

INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status, instituicao_ensino, data_inicio, data_fim) 
VALUES (2, 1, 'N', 72.00, TO_DATE('2026-10-20', 'YYYY-MM-DD'), 'Em análise', 'FATEC', TO_DATE('2021-02-01', 'YYYY-MM-DD'), TO_DATE('2024-12-10', 'YYYY-MM-DD'));

INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status, instituicao_ensino, data_inicio, data_fim) 
VALUES (2, 3, 'S', 88.00, TO_DATE('2026-10-20', 'YYYY-MM-DD'), 'Aprovado para entrevista', 'FATEC Campinas', TO_DATE('2021-02-01', 'YYYY-MM-DD'), TO_DATE('2024-12-15', 'YYYY-MM-DD'));

INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status, instituicao_ensino, data_inicio, data_fim) 
VALUES (3, 4, 'S', 94.00, TO_DATE('2026-10-20', 'YYYY-MM-DD'), 'Aprovado para entrevista', 'Universidade Anhanguera', TO_DATE('2018-02-01', 'YYYY-MM-DD'), TO_DATE('2020-12-15', 'YYYY-MM-DD'));

INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status, instituicao_ensino, data_inicio, data_fim) 
VALUES (3, 1, 'N', 58.00, TO_DATE('2026-10-20', 'YYYY-MM-DD'), 'Em análise', 'Universidade Paulista', TO_DATE('2022-02-01', 'YYYY-MM-DD'), TO_DATE('2026-12-15', 'YYYY-MM-DD'));

INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status, instituicao_ensino, data_inicio, data_fim) 
VALUES (4, 5, 'S', 86.00, TO_DATE('2026-10-20', 'YYYY-MM-DD'), 'Aprovado para entrevista', 'Universidade Positivo', TO_DATE('2020-02-01', 'YYYY-MM-DD'), TO_DATE('2024-12-15', 'YYYY-MM-DD'));

INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status, instituicao_ensino, data_inicio, data_fim) 
VALUES (4, 3, 'S', 69.50, TO_DATE('2026-10-20', 'YYYY-MM-DD'), 'Em análise', 'FATEC', TO_DATE('2021-02-01', 'YYYY-MM-DD'), TO_DATE('2024-12-10', 'YYYY-MM-DD'));

INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status, instituicao_ensino, data_inicio, data_fim) 
VALUES (2, 2, 'S', 80.00, TO_DATE('2026-10-20', 'YYYY-MM-DD'), 'Em análise', 'FATEC Campinas', TO_DATE('2021-02-01', 'YYYY-MM-DD'), TO_DATE('2024-12-15', 'YYYY-MM-DD'));

INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status, instituicao_ensino, data_inicio, data_fim) 
VALUES (1, 3, 'N', 66.00, TO_DATE('2026-10-20', 'YYYY-MM-DD'), 'Em análise', 'FATEC Campinas', TO_DATE('2021-02-01', 'YYYY-MM-DD'), TO_DATE('2024-12-15', 'YYYY-MM-DD'));

-- =====================================================================
-- 23. TABELA RESPOSTAS (Depende de CANDIDATURA e PERGUNTAS)
-- =====================================================================
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES (1, 1, 'Sim, em projetos acadêmicos e pessoais', 8.00);
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES (2, 1, 'Sim, trabalho com APIs em Java', 10.00);
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES (3, 3, 'Sim, no estágio', 7.50);
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES (4, 4, 'Sim, utilizo Power BI e Tableau', 9.00);
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES (5, 5, 'Sim, experiência prévia como analista', 8.50);
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES (6, 5, 'Pouca experiência', 6.00);
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES (7, 7, 'Sim, realizo controles semanais', 9.50);
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES (8, 8, 'Tenho perfil bem organizado', 8.00);
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES (9, 3, 'Conheço select básico', 6.50);
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES (10, 1, 'Apenas pequenos testes em aula', 5.00);

SELECT * FROM candidatura;
SELECT * FROM perguntas;
TRUNCATE TABLE candidatura
ALTER TABLE candidatura MODIFY cod_candidatura GENERATED ALWAYS AS IDENTITY (START WITH 1)
TRUNCATE TABLE perguntas
ALTER TABLE perguntas MODIFY cod_pergunta GENERATED ALWAYS AS IDENTITY (START WITH 1)


-- Confirma todas as inserções no banco de dados

COMMIT;



SELECT * FROM curriculo;

