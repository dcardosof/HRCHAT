--- RESPOSTAS ---
DELETE FROM respostas
WHERE cod_candidatura = 20 OR cod_pergunta = 10;

--- CANDIDATURA ---
DELETE FROM candidatura
WHERE cod_candidatura = 20;

--- PERGUNTAS ---
DELETE FROM perguntas
WHERE cod_pergunta = 10;

--- QUESTIONARIO ---
DELETE FROM questionario
WHERE cod_vaga = 27;

--- VAGA_SKILL ---
DELETE FROM vaga_skill
WHERE cod_skill IN (
    SELECT cod_skill
    FROM skill
    WHERE cod_tipo_skill = 2
);

--- CURRICULO_SKILL ---
DELETE FROM curriculo_skill
WHERE cod_skill IN (
    SELECT cod_skill
    FROM skill
    WHERE cod_tipo_skill = 2
);

--- VAGA_FORMACAO ---
DELETE FROM vaga_formacao
WHERE cod_vaga = 25
AND cod_form_acad = 4;

--- CURRICULO_FORMACAO ---
DELETE FROM curriculo_formacao
WHERE cod_cv = 10;

--- VAGA_BENEFICIO ---
DELETE FROM vaga_beneficio
WHERE cod_vaga = 23
AND cod_beneficio = 3;

--- CURRICULO_EXPERIENCIA ---
DELETE FROM curriculo_experiencia
WHERE cod_cv = 10;

--- SKILL ---
DELETE FROM skill
WHERE cod_tipo_skill = 2;

--- TIPO_SKILL ---
DELETE FROM tipo_skill
WHERE cod_tipo_skill = 2;

--- CURRICULO ---
DELETE FROM curriculo
WHERE cod_cv = 10;

--- VAGA ---
DELETE FROM vaga
WHERE cod_vaga = 27;

--- UNIDADE_EMPRESA ---
DELETE FROM unidade_empresa
WHERE cod_unidade_empresa = 10;

--- EMPRESA ---
DELETE FROM empresa
WHERE cod_empresa = 10;

--- CIDADE ---
DELETE FROM cidade
WHERE cod_cidade = 3;

--- ESTADO ---
DELETE FROM estado
WHERE cod_estado = 6;

--- AREA ---
DELETE FROM area
WHERE cod_area = 10;

--- RESPONSAVEL ---
DELETE FROM responsavel
WHERE cod_responsavel = 4;

--- FORMACAO_ACADEMICA ---
DELETE FROM formacao_academica
WHERE cod_form_acad = 10;

--- BENEFICIO ---
DELETE FROM beneficio
WHERE cod_beneficio = 5;

--- EXPERIENCIA ---
DELETE FROM experiencia
WHERE cod_experiencia = 7;
