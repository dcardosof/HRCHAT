--- Exibe o código e o nome de todas as áreas cadastradas. ---
SELECT cod_area, nome
FROM area;

--- Exibe somente as vagas que estão com o status "Em Seleção". ---
SELECT nome, salario, status
FROM vaga
WHERE status = 'Em Seleção';

--- Exibe as vagas que exigem experiência e oferecem salário igual ou superior a R$ 4.000. ---
SELECT nome, salario, experiencia
FROM vaga
WHERE experiencia = 'S'
AND salario >= 4000;

--- Exibe vagas em seleção com salário a partir de R$ 5.000 ou vagas destinadas ao nível de estágio. ---
SELECT nome, salario, nivel_profissional, status
FROM vaga
WHERE (status = 'Em Seleção' AND salario >= 5000)
OR nivel_profissional = 'Estágio';

--- Agrupa as vagas pelo status e apresenta a quantidade de vagas em cada situação. ---
SELECT status, COUNT(*) AS quantidade_vagas
FROM vaga
GROUP BY status;

--- Exibe as vagas cujo salário é maior que a média salarial de todas as vagas cadastradas. ---
SELECT nome, salario
FROM vaga
WHERE salario > (
    SELECT AVG(salario)
    FROM vaga
);

--- Apresenta o menor salário, o maior salário, a quantidade de vagas e a média salarial cadastrada. ---
SELECT
    MIN(salario) AS menor_salario,
    MAX(salario) AS maior_salario,
    COUNT(*) AS total_vagas,
    AVG(salario) AS media_salarial
FROM vaga;

--- Relaciona as tabelas vaga, area e responsavel, apresentando o nome da vaga, sua área e o responsável por ela. ---
SELECT
    v.nome AS nome_vaga,
    a.nome AS nome_area,
    r.nome AS nome_responsavel
FROM vaga v
INNER JOIN area a
    ON v.cod_area = a.cod_area
INNER JOIN responsavel r
    ON v.cod_responsavel = r.cod_responsavel;
