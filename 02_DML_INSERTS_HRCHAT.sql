-- =====================================================================
-- 1. ESTADO
-- =====================================================================
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
-- =====================================================================
-- 2. TABELA CIDADE
-- =====================================================================
INSERT INTO cidade (cod_estado, nome) VALUES
    (1, 'São Paulo'),
    (1, 'Campinas'),
    (1, 'Osasco'),
    (1, 'Guarulhos'),
    (2, 'Curitiba'),
    (2, 'Londrina'),
    (3, 'Belo Horizonte'),
    (3, 'Uberlândia'),
    (4, 'Rio de Janeiro'),
    (5, 'Florianópolis');

-- =====================================================================
-- 3. TABELA EMPRESA
-- =====================================================================
INSERT INTO empresa (nome, descricao) VALUES
    ('Nexora',           'Empresa de desenvolvimento de software e soluções digitais'),
    ('Data Core',        'Empresa especializada em análise de dados e inteligência de negócios'),
    ('Vertice',          'Empresa de consultoria administrativa e empresarial'),
    ('TechFlow',         'Consultoria e soluções em automação de processos'),
    ('CloudSys',         'Serviços de infraestrutura em nuvem corporativa'),
    ('InovaCorp',        'Aceleradora de startups de tecnologia'),
    ('SecureNet',        'Empresa focada em cibersegurança e auditoria'),
    ('WebNexus',         'Agência especializada em desenvolvimento web'),
    ('Alpha Tech',       'Sistemas ERP para grandes indústrias'),
    ('Beta Consultoria', 'Consultoria estratégica para recursos humanos');
    
-- =====================================================================
-- 4. TABELA AREA
-- =====================================================================
INSERT INTO area (nome) VALUES
    ('Tecnologia'),
    ('Recursos Humanos'),
    ('Administrativo'),
    ('Financeiro'),
    ('Marketing'),
    ('Vendas'),
    ('Operações'),
    ('Design'),
    ('Qualidade'),
    ('Suporte Técnico');
-- =====================================================================
-- 5. TABELA RESPONSAVEL
-- =====================================================================
INSERT INTO responsavel (nome, email, telefone) VALUES
    ('Mariana Souza',   'mariana.souza@nexora.com',   11990001111),
    ('Carlos Mendes',   'carlos.mendes@datacore.com', 11990002222),
    ('Fernanda Lima',   'fernanda.lima@vertice.com',  41990003333),
    ('Roberto Alves',   'roberto@techflow.com',       11988887777),
    ('Luciana Costa',   'luciana@cloudsys.com',       21988886666),
    ('Marcos Silva',    'marcos@inovacorp.com',       31988885555),
    ('Juliana Rocha',   'juliana@securenet.com',      41988884444),
    ('Tiago Santos',    'tiago@webnexus.com',         51988883333),
    ('Beatriz Gomes',   'beatriz@alphatech.com',      11988882222),
    ('Ricardo Moreira', 'ricardo@betaconsult.com',    19988881111);
    
-- =====================================================================
-- 6. TABELA TIPO_SKILL
-- =====================================================================
INSERT INTO tipo_skill (nome) VALUES
    ('Hard Skill'),
    ('Soft Skill');

-- =====================================================================
-- 7. TABELA UNIDADE_EMPRESA
-- =====================================================================
INSERT INTO unidade_empresa (cod_empresa, cod_cidade, nome, descricao, email, telefone) VALUES
    (1, 1,  'Nexora São Paulo',  'Unidade comercial e de tecnologia', 'sp@nexora.com',        '11987654321'),
    (2, 2,  'DataCore Campinas', 'Unidade de dados e analytics',      'campinas@datacore.com', '19987654321'),
    (3, 5,  'Vertice Curitiba',  'Unidade administrativa regional',   'curitiba@vertice.com',  '41987654321'),
    (1, 2,  'Nexora Campinas',   'Filial de suporte tecnológico',     'camp@nexora.com',       '19987651111'),
    (4, 1,  'TechFlow SP',       'Centro de Inovação',                'sp@techflow.com',       '11987652222'),
    (5, 9,  'CloudSys RJ',       'Base de infraestrutura',            'rj@cloudsys.com',       '21987653333'),
    (6, 7,  'InovaCorp BH',      'Centro de startups',                'bh@inovacorp.com',      '31987654444'),
    (7, 10, 'SecureNet Sul',     'Unidade de auditoria sul',          'sc@securenet.com',      '48987655555'),
    (8, 1,  'WebNexus SP',       'Agência digital',                   'sp@webnexus.com',       '11987656666'),
    (9, 2,  'Alpha Tech Camp',   'Operações ERP',                 'camp@alphatech.com',    '19987657777');

-- =====================================================================
-- 8. TABELA SKILL
-- =====================================================================
INSERT INTO skill (cod_tipo_skill, nome, descricao) VALUES
    (1, 'Java',               'Linguagem de programação orientada a objetos'),
    (1, 'SQL',                'Linguagem para consulta e manipulação de bancos de dados'),
    (1, 'Python',             'Linguagem de programação de propósito geral'),
    (2, 'Comunicação',        'Capacidade de transmitir informações com clareza'),
    (2, 'Organização',        'Capacidade de planejar e organizar tarefas'),
    (1, 'JavaScript',         'Linguagem para desenvolvimento web'),
    (2, 'Trabalho em Equipe', 'Habilidade de atuar bem em grupos'),
    (1, 'Inglês Avançado',    'Comunicação fluente em inglês'),
    (1, 'Metodologia Ágil',   'Experiência com Scrum e Kanban'),
    (1, 'Power BI',           'Criação de dashboards e análise visual');
    
-- =====================================================================
-- 9. TABELA FORMACAO_ACADEMICA
-- =====================================================================
INSERT INTO formacao_academica (cod_area, nome, nivel) VALUES
    (1, 'Ciência da Computação',                'Graduação'),
    (1, 'Análise e Desenvolvimento de Sistemas', 'Técnico'),
    (3, 'Administração',                        'Graduação'),
    (2, 'Gestão de Recursos Humanos',           'Técnico'),
    (1, 'Sistemas de Informação',               'Graduação'),
    (1, 'Engenharia de Software',               'Graduação'),
    (4, 'Ciências Contábeis',                   'Graduação'),
    (5, 'Marketing Digital',                    'Técnico'),
    (7, 'Logística',                            'Técnico'),
    (8, 'Design Gráfico',                       'Graduação');
-- =====================================================================
-- 10. TABELA BENEFICIO
-- =====================================================================
INSERT INTO beneficio (nome, descricao, valor) VALUES
    ('Vale-refeição',      'Benefício mensal para alimentação',   700.00),
    ('Auxílio home office','Ajuda de custo para trabalho remoto', 200.00),
    ('Plano de saúde',     'Assistência médica empresarial',      450.00),
    ('Vale-transporte',    'Auxílio para deslocamento',           300.00),
    ('Seguro de vida',     'Seguro de vida corporativo',           50.00),
    ('Gympass',            'Auxílio academia',                    100.00),
    ('Bolsa Educação',     'Auxílio para pós e certificações',    500.00),
    ('Day Off',            'Folga de aniversário',                  0.00),
    ('Plano odontológico', 'Assistência odontológica',             80.00),
    ('Auxílio creche',     'Benefício para filhos pequenos',      350.00);
    
-- =====================================================================
-- 11. TABELA EXPERIENCIA
-- =====================================================================
INSERT INTO experiencia (tempo_exp, nome) VALUES
    (6,  'Estágio em tecnologia'),
    (12, 'Desenvolvimento de software'),
    (24, 'Análise de dados'),
    (36, 'Recrutamento e seleção'),
    (18, 'Rotinas administrativas'),
    (48, 'Gestão de projetos'),
    (12, 'Suporte técnico nível 1'),
    (24, 'Marketing de conteúdo'),
    (36, 'Vendas corporativas'),
    (60, 'Gerência de operações');

-- ===================================================================== 
-- 12. TABELA CURRICULO
-- =====================================================================
INSERT INTO curriculo (cod_cidade, nome, email, telefone, data_de_nascimento, biografia) VALUES
    (1, 'Ana Oliveira',   'ana.oliveira@email.com',   '19981112222', DATE '2000-08-04', 'Estudante de tecnologia com interesse em desenvolvimento e dados'),
    (1, 'Eduarda Alves',  'eduarda.alves@email.com',  '11985556666', DATE '2002-07-15', 'Desenvolvedora júnior com interesse em back-end e bancos de dados'),
    (2, 'Bruno Santos',   'bruno.santos@email.com',   '11983334444', DATE '1999-01-21', 'Profissional em início de carreira com foco em dados e automação'),
    (1, 'Camila Rocha',   'camila.rocha@email.com',   '19944455555', DATE '2001-09-03', 'Estudante de administração com experiência em atendimento'),
    (5, 'Diego Martins',  'diego.martins@email.com',  '41982223333', DATE '1998-02-22', 'Profissional de RH com experiência em recrutamento e seleção'),
    (2, 'Felipe Souza',   'felipe@email.com',         '19981115555', DATE '2000-11-10', 'Desenvolvedor front-end focado em React e interfaces modernas'),
    (1, 'Amanda Costa',   'amanda@email.com',         '11981116666', DATE '1997-04-05', 'Especialista em recrutamento tech e headhunting'),
    (9, 'Lucas Mendes',   'lucas@email.com',          '21981117777', DATE '1995-12-12', 'Gerente de projetos ágeis certificado Scrum Master'),
    (5, 'Patricia Lima',  'patricia@email.com',       '41981118888', DATE '2001-01-30', 'Assistente administrativa com foco em controles internos'),
    (1, 'Thiago Silva',   'thiago@email.com',         '11981119999', DATE '1999-05-20', 'Analista de dados com especialidade em Python e Power BI');
    
-- =====================================================================
-- 13. TABELA VAGA
-- =====================================================================
INSERT INTO vaga (cod_area, cod_responsavel, cod_unidade_empresa, nome, descricao, salario, experiencia, nivel_profissional, data_postagem, indice_comp_min, status, data_fim) VALUES
    (1, 1, 1, 'Desenvolvedor Back-end',    'Desenvolvimento e manutenção de APIs e integrações',     6500.00, 'S', 'Júnior',   DATE '2026-10-01', 70.00, 'Em Seleção', DATE '2026-11-15'),
    (1, 2, 2, 'Analista de Dados Júnior',  'Análise de dados, criação de relatórios e dashboards',   4200.00, 'N', 'Júnior',   DATE '2026-10-03', 65.00, 'Em Seleção', DATE '2026-11-20'),
    (2, 1, 1, 'Analista de Recrutamento',  'Condução de processos seletivos e triagem de candidatos',3800.00, 'S', 'Pleno',    DATE '2026-10-05', 60.00, 'Finalizada',   DATE '2026-11-18'),
    (3, 3, 3, 'Assistente Administrativo', 'Apoio a rotinas administrativas e atendimento interno',  2800.00, 'N', 'Júnior',   DATE '2026-10-08', 55.00, 'Finalizada',   DATE '2026-11-25'),
    (1, 1, 1, 'Desenvolvedor Front-end',   'Criação de telas em React',                              6000.00, 'S', 'Júnior',   DATE '2026-10-10', 65.00, 'Em Seleção', DATE '2026-12-01'),
    (1, 2, 2, 'Engenheiro de Dados',       'ETL e manutenção de DW',                                 9500.00, 'S', 'Sênior',   DATE '2026-10-12', 85.00, 'Em Seleção', DATE '2026-12-10'),
    (4, 3, 3, 'Analista Financeiro',       'Controle orçamentário',                                  4500.00, 'S', 'Pleno',    DATE '2026-10-15', 70.00, 'Em Seleção', DATE '2026-11-30'),
    (1, 1, 1, 'Estagiário de TI',          'Suporte a sistemas internos',                            1800.00, 'N', 'Estágio',  DATE '2026-10-20', 50.00, 'Em Seleção', DATE '2026-11-20'),
    (2, 2, 2, 'Coordenador de RH',         'Gestão de folha e equipe',                               8000.00, 'S', 'Sênior', DATE '2026-10-22', 80.00, 'Em Seleção', DATE '2026-12-05'),
    (3, 3, 3, 'Recepcionista',             'Atendimento ao público presencial',                      2000.00, 'N', 'Júnior',   DATE '2026-10-25', 45.00, 'Finalizada',   DATE '2026-11-10');

-- =====================================================================
-- 14. TABELA VAGA_SKILL
-- =====================================================================
INSERT INTO vaga_skill (cod_skill, cod_vaga) VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (2, 2),
    (3, 2),
    (10, 2),
    (4, 3),
    (5, 3),
    (4, 4),
    (5, 4);
-- =====================================================================
-- 15. TABELA CURRICULO_SKILL
-- =====================================================================
INSERT INTO curriculo_skill (cod_skill, cod_cv) VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (1, 2),
    (2, 2),
    (3, 2),
    (2, 3),
    (3, 3),
    (4, 4),
    (4, 5);
    
-- =====================================================================
-- 16. TABELA VAGA_FORMACAO (Depende de FORMACAO_ACADEMICA e VAGA)
-- =====================================================================
INSERT INTO vaga_formacao (cod_form_acad, cod_vaga) VALUES
    (3, 1),
    (4, 1),
    (3, 2),
    (4, 2),
    (6, 3),
    (5, 4),
    (3, 5),
    (3, 6),
    (5, 7),
    (4, 8);

-- =====================================================================
-- 17. TABELA CURRICULO_FORMACAO
-- =====================================================================
INSERT INTO curriculo_formacao (cod_form_acad, cod_cv) VALUES
    (3, 1),
    (4, 2),
    (6, 3),
    (5, 4),
    (6, 5),
    (4, 6),
    (6, 7),
    (5, 8),
    (5, 9),
    (3, 10);

-- =====================================================================
-- 18. TABELA VAGA_BENEFICIO
-- =====================================================================
INSERT INTO vaga_beneficio (cod_beneficio, cod_vaga) VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (1, 2),
    (2, 2),
    (1, 3),
    (3, 3),
    (4, 4),
    (1, 5),
    (3, 6);
-- =====================================================================
-- 19. TABELA CURRICULO_EXPERIENCIA (Depende de EXPERIENCIA e CURRICULO)
-- =====================================================================
INSERT INTO curriculo_experiencia (cod_experiencia, cod_cv) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (5, 4),
    (4, 5),
    (2, 6),
    (4, 7),
    (6, 8),
    (5, 9),
    (3, 10);
    
-- =====================================================================
-- 20. TABELA QUESTIONARIO (Depende de VAGA)
-- =====================================================================
INSERT INTO questionario (cod_vaga, titulo) VALUES
    (1,  'Questionário Desenvolvedor Back-end'),
    (2,  'Questionário Analista de Dados'),
    (3,  'Questionário Analista de Recrutamento'),
    (4,  'Questionário Assistente Administrativo'),
    (5,  'Questionário Dev Front'),
    (6,  'Questionário Data Engineer'),
    (7,  'Questionário Finanças'),
    (8,  'Questionário Estágio TI'),
    (9,  'Questionário Coordenador'),
    (10, 'Questionário Recepção');

-- =====================================================================
-- 21. TABELA PERGUNTAS
-- =====================================================================
INSERT INTO perguntas (cod_questionario, texto_pergunta, tipo_pergunta) VALUES
    (1, 'Você possui experiência com programação back-end?', 'Múltipla Escolha'),
    (1, 'Qual seu nível de conhecimento em SQL?',            'Discursiva'),
    (2, 'Você possui conhecimento em SQL?',                  'Múltipla Escolha'),
    (2, 'Você possui experiência com dashboards?',           'Múltipla Escolha'),
    (3, 'Você possui experiência com processos seletivos?',  'Múltipla Escolha'),
    (3, 'Como você avalia sua comunicação?',                 'Discursiva'),
    (4, 'Você possui experiência com rotinas administrativas?', 'Discursiva'),
    (4, 'Possui facilidade com organização de documentos?',  'Múltipla Escolha'),
    (5, 'Conhece bibliotecas de componentes UI em React?',   'Múltipla Escolha'),
    (6, 'Já trabalhou com Spark e Hadoop?',                  'Discursiva');
    
-- =====================================================================
-- 22. TABELA CANDIDATURA (Depende de VAGA e CURRICULO)
-- =====================================================================
INSERT INTO candidatura (cod_vaga, cod_cv, experiencia, indice_compatibilidade, data_candidatura, status, instituicao_ensino, data_inicio, data_fim) VALUES
    (1, 1, 'S', 78.50, DATE '2026-10-20', 'Em análise',              'Universidade Paulista',   DATE '2022-02-01', DATE '2026-12-15'),
    (1, 2, 'S', 91.00, DATE '2026-10-20', 'Aprovado para entrevista','Universidade Paulista',   DATE '2022-02-01', DATE '2026-12-15'),
    (2, 1, 'N', 72.00, DATE '2026-10-20', 'Em análise',              'FATEC',                   DATE '2021-02-01', DATE '2024-12-10'),
    (2, 3, 'S', 88.00, DATE '2026-10-20', 'Aprovado para entrevista','FATEC Campinas',          DATE '2021-02-01', DATE '2024-12-15'),
    (3, 4, 'S', 94.00, DATE '2026-10-20', 'Aprovado para entrevista','Universidade Anhanguera', DATE '2018-02-01', DATE '2020-12-15'),
    (3, 1, 'N', 58.00, DATE '2026-10-20', 'Em análise',              'Universidade Paulista',   DATE '2022-02-01', DATE '2026-12-15'),
    (4, 5, 'S', 86.00, DATE '2026-10-20', 'Aprovado para entrevista','Universidade Positivo',   DATE '2020-02-01', DATE '2024-12-15'),
    (4, 3, 'S', 69.50, DATE '2026-10-20', 'Em análise',              'FATEC',                   DATE '2021-02-01', DATE '2024-12-10'),
    (2, 2, 'S', 80.00, DATE '2026-10-20', 'Em análise',              'FATEC Campinas',          DATE '2021-02-01', DATE '2024-12-15'),
    (1, 3, 'N', 66.00, DATE '2026-10-20', 'Em análise',              'FATEC Campinas',          DATE '2021-02-01', DATE '2024-12-15');
    
-- =====================================================================
-- 23. TABELA RESPOSTAS (Depende de CANDIDATURA e PERGUNTAS)
-- =====================================================================
INSERT INTO respostas (cod_candidatura, cod_pergunta, texto_resposta, pontuacao) VALUES
    (1,  3, 'Sim, em projetos acadêmicos e pessoais',    8.00),
    (2,  3, 'Sim, trabalho com APIs em Java',           10.00),
    (3,  5, 'Sim, no estágio',                           7.50),
    (4,  6, 'Sim, utilizo Power BI e Tableau',           9.00),
    (5, 7, 'Sim, experiência prévia como analista',     8.50),
    (6,  7, 'Pouca experiência',                         6.00),
    (7,  9, 'Sim, realizo controles semanais',           9.50),
    (8,  10, 'Tenho perfil bem organizado',               8.00),
    (9,  5, 'Conheço select básico',                     6.50),
    (10, 3, 'Apenas pequenos testes em aula',            5.00);

