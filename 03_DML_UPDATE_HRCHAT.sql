---- UPDATE AREA ----
SELECT * FROM area;

UPDATE area
SET nome = 'Desenvolvimento de Software'
WHERE cod_area = 1;

UPDATE area
SET nome = 'Gestão de Pessoas'
WHERE cod_area = 2;

UPDATE area
SET nome = 'Administração Geral'
WHERE cod_area = 3;

---- UPDATE RESPONSAVEL ----
SELECT * FROM responsavel;

UPDATE responsavel
SET nome = 'Mariana Oliveira',
    email = 'mariana.oliveira@nexora.com'
WHERE cod_responsavel = 1;

UPDATE responsavel
SET nome = 'Carlos Eduardo',
    telefone = 11997776666
WHERE cod_responsavel = 2;

UPDATE responsavel
SET nome = 'Fernanda Martins',
    email = 'fernanda.martins@vertice.com',
    telefone = 41995554444
WHERE cod_responsavel = 3;

---- UPDATE UNIDADE_EMPRESA ----
SELECT * FROM unidade_empresa;

UPDATE unidade_empresa
SET nome = 'Nexora Matriz São Paulo',
    descricao = 'Matriz responsável pelo desenvolvimento de soluções digitais'
WHERE cod_unidade_empresa = 1;

UPDATE unidade_empresa
SET nome = 'Data Core Campinas',
    email = 'contato@datacore.com'
WHERE cod_unidade_empresa = 2;

UPDATE unidade_empresa
SET nome = 'Vertice Curitiba Centro',
    descricao = 'Unidade de gestão administrativa e consultoria empresarial'
WHERE cod_unidade_empresa = 3;

---- UPDATE ESTADO ----
SELECT * FROM estado;

UPDATE estado SET nome = 'São Paulo - SP' WHERE nome = 'São Paulo';

UPDATE estado SET nome = 'Paraná - PR' WHERE nome = 'Paraná';

UPDATE estado SET nome = 'Minas Gerais - MG' WHERE nome = 'Minas Gerais';

---- UPDATE cidade ----
SELECT * FROM cidade;

UPDATE cidade SET nome = 'São Paulo - Capital' WHERE nome = 'São Paulo' AND cod_estado = 1;

UPDATE cidade SET nome = 'Campinas - SP' WHERE nome = 'Campinas';

UPDATE cidade SET nome = 'Curitiba - PR' WHERE nome = 'Curitiba';

---- UPDATE empresa ----
SELECT * FROM empresa;

UPDATE empresa
SET descricao = 'Empresa especializada em desenvolvimento de sistemas e aplicações corporativas'
WHERE nome = 'Nexora';

UPDATE empresa
SET descricao = 'Consultoria especializada em inteligência de dados e soluções analíticas'
WHERE nome = 'Data Core';

UPDATE empresa
SET nome = 'Vértice Consultoria'
WHERE nome = 'Vertice';

---- UPDATE TIPO_SKILL ----
SELECT * FROM tipo_skill;

UPDATE tipo_skill SET nome = 'Competências Técnicas' WHERE nome = 'Hard Skill';

UPDATE tipo_skill SET nome = 'Competências Comportamentais' WHERE nome = 'Soft Skill';

UPDATE tipo_skill SET nome = 'Habilidades Técnicas' WHERE cod_tipo_skill = 1;

---- UPDATE TIPO_SKILL ----
SELECT * FROM skill;

UPDATE skill
SET descricao = 'Conhecimento em programação Java e desenvolvimento orientado a objetos'
WHERE nome = 'Java';

UPDATE skill
SET descricao = 'Conhecimento em consultas, manipulação e gerenciamento de bancos de dados'
WHERE nome = 'SQL';

UPDATE skill
SET nome = 'Comunicação Eficaz',
    descricao = 'Capacidade de transmitir informações de maneira clara e objetiva'
WHERE nome = 'Comunicação';

---- UPDATE formacao_academica ----
SELECT * FROM formacao_academica;

UPDATE formacao_academica
SET nome = 'Engenharia de Computação'
WHERE nome = 'Ciência da Computação';

UPDATE formacao_academica
SET nivel = 'Graduação'
WHERE nome = 'Análise e Desenvolvimento de Sistemas';

UPDATE formacao_academica
SET nome = 'Gestão de Recursos Humanos'
WHERE nome = 'Gestão de Recursos Humanos';

---- UPDATE beneficio ----
SELECT * FROM beneficio;

UPDATE beneficio
SET valor = 800.00
WHERE nome = 'Vale-refeição';

UPDATE beneficio
SET valor = 250.00,
    descricao = 'Auxílio financeiro para despesas relacionadas ao trabalho remoto'
WHERE nome = 'Auxílio home office';

UPDATE beneficio
SET valor = 550.00
WHERE nome = 'Plano de saúde';

---- UPDATE experiencia ----
SELECT * FROM experiencia;

UPDATE experiencia
SET tempo_exp = 12,
    nome = 'Estágio em desenvolvimento de software'
WHERE nome = 'Estágio em tecnologia';

UPDATE experiencia
SET tempo_exp = 18
WHERE nome = 'Desenvolvimento de software';

UPDATE experiencia
SET tempo_exp = 30,
    nome = 'Análise e interpretação de dados'
WHERE nome = 'Análise de dados';

---- UPDATE curriculo ----
SELECT * FROM curriculo;

UPDATE curriculo
SET biografia = 'Estudante de tecnologia com conhecimentos em programação e desenvolvimento de sistemas'
WHERE nome = 'Ana Oliveira';

UPDATE curriculo
SET email = 'eduarda.alves.dev@email.com'
WHERE nome = 'Eduarda Alves';

UPDATE curriculo
SET biografia = 'Profissional com interesse em análise de dados, automação e inteligência de negócios'
WHERE nome = 'Bruno Santos';

---- UPDATE vaga ----
SELECT * FROM vaga;

UPDATE vaga
SET salario = 7000.00,
    descricao = 'Desenvolvimento, manutenção e integração de APIs utilizando tecnologias back-end'
WHERE nome = 'Desenvolvedor Back-end';

UPDATE vaga
SET salario = 4500.00,
    indice_comp_min = 70.00
WHERE nome = 'Analista de Dados Júnior';

UPDATE vaga
SET status = 'Pausada',
    data_fim = DATE '2026-12-15'
WHERE nome = 'Estagiário de TI';

---- UPDATE vaga_skill ----
SELECT * FROM vaga_skill;

UPDATE vaga_skill
SET cod_skill = 14
WHERE cod_skill = 11 AND cod_vaga = 18;

UPDATE vaga_skill
SET cod_skill = 15
WHERE cod_skill = 12 AND cod_vaga = 18;

UPDATE vaga_skill
SET cod_skill = 16
WHERE cod_skill = 13 AND cod_vaga = 18;

---- UPDATE curriculo_skill ----
SELECT * FROM curriculo_skill;

UPDATE curriculo_skill
SET cod_skill = 15
WHERE cod_skill = 11 AND cod_cv = 1;

UPDATE curriculo_skill
SET cod_skill = 16
WHERE cod_skill = 12 AND cod_cv = 1;

UPDATE curriculo_skill
SET cod_skill = 17
WHERE cod_skill = 13 AND cod_cv = 1;

---- UPDATE vaga_formacao ----
SELECT * FROM vaga_formacao;

UPDATE vaga_formacao
SET cod_form_acad = 7
WHERE cod_form_acad = 3 AND cod_vaga = 18;

UPDATE vaga_formacao
SET cod_form_acad = 8
WHERE cod_form_acad = 4 AND cod_vaga = 18;

UPDATE vaga_formacao
SET cod_form_acad = 9
WHERE cod_form_acad = 3 AND cod_vaga = 19;

---- UPDATE curriculo_formacao ----
SELECT * FROM curriculo_formacao;

UPDATE curriculo_formacao
SET cod_form_acad = 7
WHERE cod_form_acad = 3 AND cod_cv = 1;

UPDATE curriculo_formacao
SET cod_form_acad = 8
WHERE cod_form_acad = 4 AND cod_cv = 2;

UPDATE curriculo_formacao
SET cod_form_acad = 9
WHERE cod_form_acad = 6 AND cod_cv = 3;

---- UPDATE vaga_beneficio ----
SELECT * FROM vaga_beneficio;

UPDATE vaga_beneficio
SET cod_beneficio = 4
WHERE cod_beneficio = 1 AND cod_vaga = 18;

UPDATE vaga_beneficio
SET cod_beneficio = 5
WHERE cod_beneficio = 2 AND cod_vaga = 18;

UPDATE vaga_beneficio
SET cod_beneficio = 6
WHERE cod_beneficio = 3 AND cod_vaga = 18;

---- UPDATE curriculo_experiencia ----
SELECT * FROM curriculo_experiencia;

UPDATE curriculo_experiencia
SET cod_experiencia = 7
WHERE cod_experiencia = 1 AND cod_cv = 1;

UPDATE curriculo_experiencia
SET cod_experiencia = 8
WHERE cod_experiencia = 2 AND cod_cv = 2;

UPDATE curriculo_experiencia
SET cod_experiencia = 9
WHERE cod_experiencia = 3 AND cod_cv = 3;

---- UPDATE questionario ----
SELECT * FROM questionario;

UPDATE questionario
SET titulo = 'Avaliação Técnica - Desenvolvedor Back-end'
WHERE titulo = 'Questionário Desenvolvedor Back-end';

UPDATE questionario
SET titulo = 'Avaliação de Conhecimentos - Analista de Dados'
WHERE titulo = 'Questionário Analista de Dados';

UPDATE questionario
SET titulo = 'Avaliação Comportamental - Analista de Recrutamento'
WHERE titulo = 'Questionário Analista de Recrutamento';

---- UPDATE perguntas ----
SELECT * FROM perguntas;

UPDATE perguntas
SET texto_pergunta = 'Você possui conhecimentos em desenvolvimento de APIs?'
WHERE texto_pergunta = 'Você possui experiência com programação back-end?';

UPDATE perguntas
SET texto_pergunta = 'Como você avalia seu conhecimento em bancos de dados relacionais?'
WHERE texto_pergunta = 'Qual seu nível de conhecimento em SQL?';

UPDATE perguntas
SET texto_pergunta = 'Você possui experiência na criação de relatórios e dashboards?'
WHERE texto_pergunta = 'Você possui experiência com dashboards?';

---- UPDATE CANDIDATURA ----
SELECT * FROM candidatura;

UPDATE candidatura
SET indice_compatibilidade = 85.00
WHERE cod_vaga = 18 AND cod_cv = 1;

UPDATE candidatura
SET indice_compatibilidade = 95.00
WHERE cod_vaga = 18 AND cod_cv = 2;

UPDATE candidatura
SET indice_compatibilidade = 75.00
WHERE cod_vaga = 19 AND cod_cv = 1;
