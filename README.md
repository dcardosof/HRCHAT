# HRCHAT — Banco de Dados para Plataforma de Recrutamento

O **HRCHAT** é um projeto acadêmico de Banco de Dados desenvolvido para representar a estrutura de uma plataforma de recrutamento e seleção baseada em interação por chatbot.

A proposta do sistema é aproximar candidatos e empresas, permitindo que o processo de candidatura seja realizado de maneira mais simples e estruturada. Durante a candidatura, o candidato interage com um chatbot que apresenta perguntas previamente definidas e registra suas respostas no banco de dados.

A partir das informações cadastradas no currículo, dos requisitos definidos para cada vaga e das respostas fornecidas durante o processo, o sistema permite registrar um **índice de compatibilidade entre candidato e oportunidade**.

## Objetivos do projeto

O projeto foi desenvolvido com foco na modelagem e implementação de um banco de dados relacional capaz de armazenar e relacionar informações referentes a:

- empresas e suas unidades;
- vagas de emprego;
- responsáveis pelas vagas;
- candidatos e currículos;
- habilidades (skills);
- formações acadêmicas;
- experiências profissionais;
- benefícios;
- questionários e perguntas;
- candidaturas;
- respostas dos candidatos;
- índice de compatibilidade entre candidato e vaga.

## Tecnologias utilizadas

- **Oracle Database**
- **SQL**
- **BRModelo**
- **Git e GitHub**
- **Microsoft Excel** para o processo de normalização

## Modelagem do banco de dados

O desenvolvimento do banco passou pelas etapas de modelagem conceitual, lógica e física.

O processo de normalização foi realizado a partir de uma estrutura inicialmente desnormalizada, aplicando:

- **Primeira Forma Normal (1FN)** — eliminação de grupos multivalorados;
- **Segunda Forma Normal (2FN)** — eliminação de dependências parciais;
- **Terceira Forma Normal (3FN)** — eliminação de dependências transitivas.

A estrutura final foi utilizada como base para a implementação do banco no Oracle Database.

## Implementação no Oracle

O banco foi implementado utilizando tipos e recursos do Oracle, como:

- `NUMBER`
- `VARCHAR2`
- `CHAR`
- `DATE`
- `PRIMARY KEY`
- `FOREIGN KEY`
- `NOT NULL`
- `CHECK`
- `IDENTITY`

O projeto possui **23 tabelas relacionadas**, responsáveis por representar as diferentes entidades e associações do processo de recrutamento.

## Scripts SQL

Os scripts utilizados na implementação estão disponíveis na pasta [`sql`](./sql).

A ordem recomendada de execução é:

1. `01_DDL_HRCHAT.sql` — criação das tabelas e restrições;
2. `02_INSERTS_HRCHAT.sql` — carga inicial de dados;
3. `03_UPDATES_HRCHAT.sql` — exemplos de atualização;
4. `04_DELETES_HRCHAT.sql` — exemplos de exclusão;
5. `05_SELECTS_HRCHAT.sql` — consultas realizadas no banco.

As consultas desenvolvidas incluem:

- consulta simples;
- filtros com `WHERE`;
- condições com `AND` e `OR`;
- agrupamento com `GROUP BY`;
- subconsultas;
- funções `MIN`, `MAX`, `COUNT` e `AVG`;
- relacionamentos entre tabelas utilizando `INNER JOIN`.

## Estrutura do repositório

```text
HRCHAT/
├── README.md
├── sql/
│   ├── 01_DDL_HRCHAT.sql
│   ├── 02_INSERTS_HRCHAT.sql
│   ├── 03_UPDATES_HRCHAT.sql
│   ├── 04_DELETES_HRCHAT.sql
│   └── 05_SELECTS_HRCHAT.sql
├── docs/
│   ├── HRCHAT_Documentacao_Final.pdf
│   └── HRCHAT_Apresentacao_Final.pdf
├── normalizacao/
│   ├── HRCHAT_Normalizacao_Dados.xlsx
│   └── HRCHAT_Normalizacao_Dados.pdf
└── modelos/
    ├── modelo_conceitual.png
    └── modelo_logico.png
```

## Principais relacionamentos

Entre os principais relacionamentos existentes no banco estão:

- uma **empresa** pode possuir diversas unidades;
- uma **unidade** pertence a uma empresa e está localizada em uma cidade;
- uma **vaga** pertence a uma área, unidade e responsável;
- uma vaga pode possuir diversas **skills**, **formações acadêmicas** e **benefícios**;
- um **currículo** pode possuir diversas skills, formações e experiências;
- uma **candidatura** relaciona um currículo a uma vaga;
- questionários e perguntas permitem registrar as respostas fornecidas durante a candidatura.

## Consultas implementadas

O projeto contém consultas SQL utilizadas para demonstrar diferentes formas de recuperação e análise dos dados, como:

```sql
SELECT
    v.nome AS nome_vaga,
    a.nome AS nome_area,
    r.nome AS nome_responsavel
FROM vaga v
INNER JOIN area a
    ON v.cod_area = a.cod_area
INNER JOIN responsavel r
    ON v.cod_responsavel = r.cod_responsavel;
```

A consulta acima relaciona as tabelas `VAGA`, `AREA` e `RESPONSAVEL`, permitindo visualizar cada oportunidade juntamente com sua área de atuação e responsável.

## Documentação

A documentação acadêmica completa, bem como a apresentação final do projeto, encontram-se na pasta [`docs`](./docs).

O processo completo de normalização pode ser consultado na pasta [`normalizacao`](./normalizacao).

## Autores

**Daisy Cardoso Freitas**  
GitHub: [@dcardosof](https://github.com/dcardosof)

**Kaiky Ramos Maia**  
GitHub: [@kawiky](https://github.com/kawiky)

---

Projeto desenvolvido para a disciplina de **Banco de Dados** do curso de **Ciência da Computação — Universidade Cruzeiro do Sul**, 2026.
