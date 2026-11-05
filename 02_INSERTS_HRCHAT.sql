INSERT INTO estado (nome) VALUES
    ('São Paulo'),
    ('Paraná'),
    ('Minas Gerais'),
    ('Rio de Janeiro'),
    ('Santa Catarina'),
    ('Rio Grande do Sul'),
    ('Bahia'),
    ('Pernambuco'),
    ('Goiás'),
    ('Espírito Santo');

-- 02. CIDADE
INSERT INTO cidade (cod_estado, nome) VALUES
    (1, 'São Paulo'),
    (1, 'Campinas'),
    (2, 'Curitiba'),
    (3, 'Belo Horizonte'),
    (4, 'Rio de Janeiro'),
    (5, 'Florianópolis'),
    (6, 'Porto Alegre'),
    (7, 'Salvador'),
    (8, 'Recife'),
    (9, 'Goiânia');

-- 03. EMPRESA
INSERT INTO empresa (nome, descricao) VALUES
    ('Nexora', 'Empresa de desenvolvimento de software e soluções digitais'),
    ('Data Core', 'Empresa especializada em análise de dados e inteligência de negócios'),
    ('Vertice', 'Empresa de consultoria administrativa e empresarial'),
    ('CloudWay', 'Empresa especializada em computação em nuvem'),
    ('People First', 'Consultoria especializada em gestão de pessoas'),
    ('CyberShield', 'Empresa de segurança da informação'),
    ('InovaTech', 'Empresa de inovação e transformação digital'),
    ('FinData', 'Empresa de tecnologia para o setor financeiro'),
    ('MarketUp', 'Empresa de marketing e soluções digitais'),]
    ('LogiSmart', 'Empresa de tecnologia aplicada à logística');

-- 04. UNIDADE_EMPRESA
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES
    (1, 1, 'Nexora São Paulo', 'Unidade comercial e de tecnologia', 'sp@nexora.com', '11987654321'),
    (2, 2, 'Data Core Campinas', 'Unidade de dados e analytics', 'campinas@datacore.com', '19987654321'),
    (3, 3, 'Vertice Curitiba', 'Unidade administrativa regional', 'curitiba@vertice.com', '41987654321'),
    (4, 4, 'CloudWay Belo Horizonte', 'Unidade de infraestrutura em nuvem', 'bh@cloudway.com', '31987654321'),
    (5, 5, 'People First Rio', 'Unidade de recrutamento e desenvolvimento', 'rio@peoplefirst.com', '21987654321'),
    (6, 6, 'CyberShield Floripa', 'Centro de segurança digital', 'floripa@cybershield.com', '48987654321'),
    (7, 7, 'InovaTech Porto Alegre', 'Hub de inovação', 'poa@inovatech.com', '51987654321'),
    (8, 8, 'FinData Salvador', 'Unidade de produtos financeiros', 'salvador@findata.com', '71987654321'),
    (9, 9, 'MarketUp Recife', 'Unidade de marketing digital', 'recife@marketup.com', '81987654321'),
    (10, 10, 'LogiSmart Goiânia', 'Unidade de tecnologia logística', 'goiania@logismart.com', '62987654321');

-- 05. AREA
INSERT INTO area (nome) VALUES
    ('Tecnologia'),
    ('Recursos Humanos'),
    ('Administrativo'),
    ('Dados'),
    ('Financeiro'),
    ('Marketing'),
    ('Segurança da Informação'),
    ('Logística'),
    ('Design'),
    ('Comercial');

-- 06. RESPONSAVEL
INSERT INTO responsavel (nome, email, telefone) VALUES
    ('Mariana Souza', 'mariana.souza@nexora.com', '11990001111'),
    ('Carlos Mendes', 'carlos.mendes@datacore.com', '19990002222'),
    ('Fernanda Lima', 'fernanda.lima@vertice.com', '41990003333'),
    ('Rafael Costa', 'rafael.costa@cloudway.com', '31990004444'),
    ('Juliana Alves', 'juliana.alves@peoplefirst.com', '21990005555'),
    ('Bruno Rocha', 'bruno.rocha@cybershield.com', '48990006666'),
    ('Patricia Nunes', 'patricia.nunes@inovatech.com', '51990007777'),
    ('Marcelo Freitas', 'marcelo.freitas@findata.com', '71990008888'),
    ('Aline Campos', 'aline.campos@marketup.com', '81990009999'),
    ('Diego Martins', 'diego.martins@logismart.com', '62990001010');

-- 07. TIPO_SKILL
INSERT INTO tipo_skill (nome) VALUES
    ('Hard Skill'),
    ('Soft Skill');

-- 08. SKILL
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES
    (1, 'Java', 'Linguagem de programação orientada a objetos'),
    (1, 'SQL', 'Linguagem para consulta e manipulação de bancos de dados'),
    (1, 'Python', 'Linguagem de programação de propósito geral'),
    (2, 'Comunicação', 'Capacidade de transmitir informações com clareza'),
    (2, 'Organização', 'Capacidade de planejar e organizar tarefas'),
    (1, 'Power BI', 'Ferramenta para construção de dashboards'),
    (1, 'AWS', 'Plataforma de serviços de computação em nuvem'),
    (1, 'Figma', 'Ferramenta de prototipação e design de interfaces'),
    (1, 'Scrum', 'Metodologia ágil para gestão de projetos'),
    (1, 'Inglês', 'Comunicação em língua inglesa');

-- 09. FORMACAO_ACADEMICA
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES
    (1, 'Ciência da Computação', 'Graduação'),
    (1, 'Análise e Desenvolvimento de Sistemas', 'Tecnólogo'),
    (3, 'Administração','Graduação'),
    (2, 'Gestão de Recursos Humanos', 'Tecnólogo'),
    (4, 'Ciência de Dados', 'Graduação'),
    (5, 'Contabilidade', 'Graduação'),
    (6, 'Marketing', 'Graduação'),
    (7, 'Segurança da Informação', 'Tecnólogo'),
    (9, 'Design Digital', 'Graduação'),
    (8, 'Logística', 'Tecnólogo');

-- 10. BENEFICIO
INSERT INTO beneficio (nome, descricao, valor) VALUES
    ('Vale-refeição', 'Benefício mensal para alimentação', 700),
    ('Auxílio home office', 'Ajuda de custo para trabalho remoto', 200),
    ('Plano de saúde', 'Assistência médica empresarial', 450),
    ('Vale-transporte', 'Auxílio para deslocamento', 300),
    ('Plano odontológico', 'Assistência odontológica', 120),
    ('Gympass', 'Benefício para atividades físicas', 150),
    ('Seguro de vida', 'Cobertura de seguro de vida', 90),
    ('Auxílio educação', 'Apoio financeiro para cursos', 500),
    ('Vale-cultura', 'Benefício para atividades culturais', 100),
    ('Participação nos lucros', 'Programa anual de participação nos resultados', 1200);

-- 11. EXPERIENCIA
INSERT INTO experiencia (tempo_exp, nome) VALUES
    (12, 'Desenvolvimento de software'),
    (24, 'Análise de dados'),
    (36, 'Recrutamento e seleção'),
    (18, 'Rotinas administrativas'),
    (6, 'Estágio em tecnologia'),
    (30, 'Segurança da informação'),
    (20, 'Marketing digital'),
    (15, 'Design de interfaces'),
    (40, 'Gestão financeira'),
    (28, 'Logística e operações');

-- 12. CURRICULO
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES
    (1, 'Ana Oliveira', 'ana.oliveira@email.com', '11982223333', TO_DATE('03/09/2001','DD/MM/YYYY'), 'Estudante de tecnologia com interesse em desenvolvimento e dados'),
    (3, 'Eduarda Alves', 'eduarda.alves@email.com', '41984445555', TO_DATE('15/07/2002','DD/MM/YYYY'), 'Desenvolvedora júnior com interesse em back-end e bancos de dados'),
    (2, 'Bruno Santos', 'bruno.santos@email.com', '19983334444', TO_DATE('21/01/1999','DD/MM/YYYY'), 'Profissional em início de carreira com foco em dados e automação'),
    (4, 'Camila Rocha', 'camila.rocha@email.com', '31985556666', TO_DATE('12/05/2000','DD/MM/YYYY'), 'Profissional de administração com experiência em atendimento'),
    (5, 'Diego Martins', 'diego.martins@email.com', '21986667777', TO_DATE('30/11/1997','DD/MM/YYYY'), 'Profissional de RH com experiência em recrutamento e seleção'),
    (6, 'Gabriel Souza', 'gabriel.souza@email.com', '48987778888', TO_DATE('08/03/1998','DD/MM/YYYY'), 'Analista com interesse em segurança da informação'),
    (7, 'Helena Costa', 'helena.costa@email.com', '51988889999', TO_DATE('19/09/2001','DD/MM/YYYY'), 'Profissional criativa com experiência em marketing digital'),
    (8, 'Igor Lima', 'igor.lima@email.com', '71981112222', TO_DATE('25/02/1996','DD/MM/YYYY'), 'Designer de interfaces focado em experiência do usuário'),
    (9, 'Julia Freitas', 'julia.freitas@email.com', '81982221111', TO_DATE('14/06/1995','DD/MM/YYYY'), 'Profissional da área financeira com foco em análise'),
    (10, 'Lucas Ribeiro', 'lucas.ribeiro@email.com', '62983332222', TO_DATE('10/12/1999','DD/MM/YYYY'), 'Profissional de logística com interesse em tecnologia');

-- 13. VAGA
INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) VALUES
    (1, 1, 1, 'Desenvolvedor Back-end', 'Desenvolvimento e manutenção de APIs e integrações', 6500, 1, 'Júnior', TO_DATE('01/10/2026','DD/MM/YYYY'), 70, 'Em andamento', TO_DATE('15/11/2026','DD/MM/YYYY')),
    (4, 2, 2, 'Analista de Dados Júnior', 'Análise de dados, relatórios e dashboards', 4200, 0, 'Júnior', TO_DATE('03/10/2026','DD/MM/YYYY'), 65, 'Em andamento', TO_DATE('20/11/2026','DD/MM/YYYY')),
    (2, 3, 3, 'Analista de Recrutamento', 'Condução de processos seletivos e triagem de candidatos', 3800, 1, 'Pleno', TO_DATE('05/10/2026','DD/MM/YYYY'), 60, 'Finalizado', TO_DATE('18/11/2026','DD/MM/YYYY')),
    (3, 4, 4, 'Assistente Administrativo', 'Apoio a rotinas administrativas e atendimento interno', 2800, 0, 'Júnior', TO_DATE('08/10/2026','DD/MM/YYYY'), 55, 'Finalizado', TO_DATE('25/11/2026','DD/MM/YYYY')),
    (7, 6, 6, 'Analista de Segurança', 'Monitoramento de riscos e incidentes de segurança', 7200, 1, 'Pleno', TO_DATE('10/10/2026','DD/MM/YYYY'), 75, 'Em andamento', TO_DATE('30/11/2026','DD/MM/YYYY')),
    (6, 9, 9, 'Analista de Marketing Digital', 'Planejamento de campanhas e análise de resultados', 4500, 1, 'Pleno', TO_DATE('12/10/2026','DD/MM/YYYY'), 68, 'Em andamento', TO_DATE('05/12/2026','DD/MM/YYYY')),
    (9, 7, 7, 'UX Designer', 'Criação de interfaces e protótipos digitais', 5800, 1, 'Pleno', TO_DATE('14/10/2026','DD/MM/YYYY'), 72, 'Em andamento', TO_DATE('10/12/2026','DD/MM/YYYY')),
    (5, 8, 8, 'Analista Financeiro', 'Análise financeira e elaboração de relatórios', 5200, 1, 'Pleno', TO_DATE('16/10/2026','DD/MM/YYYY'), 70, 'Em andamento', TO_DATE('15/12/2026','DD/MM/YYYY')),
    (8, 10, 10, 'Analista de Logística', 'Planejamento e acompanhamento de operações logísticas', 4800, 1, 'Pleno', TO_DATE('18/10/2026','DD/MM/YYYY'), 67, 'Em andamento', TO_DATE('20/12/2026','DD/MM/YYYY')),
    (10, 5, 5, 'Executivo Comercial', 'Prospecção de clientes e negociação de contratos', 6000, 1, 'Sênior', TO_DATE('20/10/2026','DD/MM/YYYY'), 80, 'Pausado', TO_DATE('22/12/2026','DD/MM/YYYY'));

-- 14. VAGA_SKILL
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES
    (1, 1),
    (1, 2),
    (2, 2),
    (2, 6),
    (3, 4),
    (4, 5),
    (5, 7),
    (6, 4),
    (7, 8),
    (8, 2);

-- 15. CURRICULO_SKILL
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (3, 2),
    (4, 5),
    (5, 4),
    (6, 7),
    (7, 4),
    (8, 8),
    (9, 2);

-- 16. VAGA_FORMACAO
INSERT INTO vaga_formacao (cod_vaga, cod_form_acad) VALUES
    (1, 1),
    (2, 5),
    (3, 4),
    (4, 3),
    (5, 8),
    (6, 7),
    (7, 9),
    (8, 6),
    (9, 10),
    (10, 3);

-- 17. VAGA_BENEFICIO
INSERT INTO vaga_beneficio (cod_vaga, cod_beneficio) VALUES
    (1, 1),
    (1, 3),
    (2, 1),
    (3, 4),
    (4, 4),
    (5, 3),
    (6, 2),
    (7, 6),
    (8, 10),
    (9, 7);

-- 18. curriculo_experiencia
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES
    (1, 5),
    (2, 1),
    (3, 2),
    (4, 4),
    (5, 3),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

-- 17. CURRICULO_FORMACAO
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv, instituicao_ensino, data_inicio, data_fim, status) VALUES
    (1, 1, 'Universidade Paulista', TO_DATE('01/02/2022','DD/MM/YYYY'), TO_DATE('15/12/2026','DD/MM/YYYY'), 'Cursando'),
    (2, 2, 'FATEC', TO_DATE('01/02/2021','DD/MM/YYYY'), TO_DATE('10/12/2024','DD/MM/YYYY'), 'Concluído'),
    (5, 3, 'Universidade Estadual de Campinas', TO_DATE('01/02/2020','DD/MM/YYYY'), TO_DATE('15/12/2024','DD/MM/YYYY'), 'Concluído'),
    (3, 4, 'Universidade Federal de Minas Gerais', TO_DATE('01/02/2018','DD/MM/YYYY'), TO_DATE('15/12/2022','DD/MM/YYYY'), 'Concluído'),
    (4, 5, 'Universidade Estácio de Sá', TO_DATE('01/02/2019','DD/MM/YYYY'), TO_DATE('15/12/2021','DD/MM/YYYY'), 'Concluído'),
    (8, 6, 'SENAC', TO_DATE('01/02/2021','DD/MM/YYYY'), TO_DATE('15/12/2023','DD/MM/YYYY'), 'Concluído'),
    (7, 7, 'PUC-RS', TO_DATE('01/02/2020','DD/MM/YYYY'), TO_DATE('15/12/2024','DD/MM/YYYY'), 'Concluído'),
    (9, 8, 'Universidade Federal da Bahia', TO_DATE('01/02/2017','DD/MM/YYYY'), TO_DATE('15/12/2021','DD/MM/YYYY'), 'Concluído'),
    (6, 9, 'Universidade Federal de Pernambuco', TO_DATE('01/02/2016','DD/MM/YYYY'), TO_DATE('15/12/2020','DD/MM/YYYY'), 'Concluído'),
    (10, 10, 'Instituto Federal de Goiás', TO_DATE('01/02/2019','DD/MM/YYYY'), TO_DATE('15/12/2022','DD/MM/YYYY'), 'Concluído');

-- 20. QUESTIONARIO
INSERT INTO questionario (cod_vaga, titulo) VALUES
    (1, 'Questionário Desenvolvedor Back-end'),
    (2, 'Questionário Analista de Dados'),
    (3, 'Questionário Analista de Recrutamento'),
    (4, 'Questionário Assistente Administrativo'),
    (5, 'Questionário Analista de Segurança'),
    (6, 'Questionário Marketing Digital'),
    (7, 'Questionário UX Designer'),
    (8, 'Questionário Analista Financeiro'),
    (9, 'Questionário Analista de Logística'),
    (10, 'Questionário Executivo Comercial');

-- 21. PERGUNTAS
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES
    (1, 'Você possui experiência com programação back-end?', 'Seleção'),
    (2, 'Qual seu nível de conhecimento em SQL?', 'Texto'),
    (3, 'Você possui experiência com processos seletivos?', 'Seleção'),
    (4, 'Você possui experiência com rotinas administrativas?', 'Seleção'),
    (5, 'Você possui experiência com segurança da informação?', 'Seleção'),
    (6, 'Você já trabalhou com campanhas digitais?', 'Seleção'),
    (7, 'Qual seu nível de conhecimento em Figma?', 'Texto'),
    (8, 'Você possui experiência com análise financeira?', 'Seleção'),
    (9, 'Você possui experiência com operações logísticas?', 'Seleção'),
    (10, 'Você possui experiência com negociação comercial?', 'Seleção');

-- 22. CANDIDATURA
INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status) VALUES
    (1, 1, 1, 78.5, TO_DATE('20/10/2026','DD/MM/YYYY'), 'Em análise'),
    (1, 2, 1, 91, TO_DATE('21/10/2026','DD/MM/YYYY'), 'Aprovado para entrevista'),
    (2, 3, 1, 88, TO_DATE('22/10/2026','DD/MM/YYYY'), 'Aprovado para entrevista'),
    (3, 5, 1, 94, TO_DATE('23/10/2026','DD/MM/YYYY'), 'Aprovado para entrevista'),
    (4, 4, 0, 58, TO_DATE('24/10/2026','DD/MM/YYYY'), 'Em análise'),
    (5, 6, 1, 86, TO_DATE('25/10/2026','DD/MM/YYYY'), 'Aprovado para entrevista'),
    (6, 7, 1, 74, TO_DATE('26/10/2026','DD/MM/YYYY'), 'Em análise'),
    (7, 8, 1, 82, TO_DATE('27/10/2026','DD/MM/YYYY'), 'Aprovado para entrevista'),
    (8, 9, 1, 69.5, TO_DATE('28/10/2026','DD/MM/YYYY'), 'Em análise'),
    (9, 10, 1, 76, TO_DATE('29/10/2026','DD/MM/YYYY'), 'Em análise');

-- 23. RESPOSTAS
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES
    (1, 1, 'Sim, em projetos acadêmicos e pessoais', 8),
    (2, 1, 'Sim, trabalho com APIs em Java', 10),
    (3, 2, 'Avançado', 9),
    (4, 3, 'Sim, possuo experiência com recrutamento', 10),
    (5, 4, 'Tenho experiência básica', 6),
    (6, 5, 'Sim, com análise de vulnerabilidades', 9),
    (7, 6, 'Sim, participei de campanhas em redes sociais', 8),
    (8, 7, 'Avançado', 9),
    (9, 8, 'Sim, com relatórios e indicadores financeiros', 8),
    (10, 9, 'Sim, em controle de estoque e transportes', 8);
