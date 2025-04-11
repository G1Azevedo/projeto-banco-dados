# Explicações sobre JOINs e Window Functions

## NATURAL JOIN

O `NATURAL JOIN` é uma junção automática baseada em todas as colunas com o **mesmo nome** nas duas tabelas. Ele elimina a necessidade de especificar a condição do `JOIN`, mas pode causar problemas se existirem colunas com nomes iguais que não deveriam ser comparadas.

### Exemplo:

```sql
SELECT *
FROM funcionario
NATURAL JOIN departamento;
Neste exemplo, o PostgreSQL identifica que ambas as tabelas têm a coluna cod_depto e realiza a junção automaticamente com base nela.

CROSS JOIN
O CROSS JOIN retorna o produto cartesiano de duas tabelas, ou seja, cada linha da primeira tabela será combinada com todas as linhas da segunda. Ele é útil quando se quer gerar todas as combinações possíveis entre os dados de duas tabelas.

Exemplo:
sql
Copiar
Editar
SELECT f.nome AS funcionario, p.nome AS projeto
FROM funcionario f
CROSS JOIN projeto p;
Se houver 5 funcionários e 3 projetos, o resultado terá 15 linhas (5 x 3).

Window Functions no PostgreSQL
As funções de janela (Window Functions) realizam cálculos sobre um conjunto de linhas relacionadas à linha atual, mantendo a granularidade da consulta (ou seja, sem agrupar os dados como no GROUP BY). São muito úteis para análises, rankings, totais acumulados e comparações entre linhas.

Estrutura básica:
sql
Copiar
Editar
função(...) OVER (
  [PARTITION BY coluna1]
  [ORDER BY coluna2]
)
PARTITION BY: divide os dados em grupos (como um GROUP BY, mas sem agrupar).

ORDER BY: define a ordem para o cálculo da função de janela.

Exemplos de uso
1. Ranking de funcionários por salário em cada departamento:
sql
Copiar
Editar
SELECT
  nome,
  cod_depto,
  salario,
  RANK() OVER (PARTITION BY cod_depto ORDER BY salario DESC) AS rank_salario
FROM funcionario;
Este exemplo atribui um ranking aos salários dos funcionários dentro de cada departamento, do maior para o menor.

2. Soma acumulada de salários (sem PARTITION):
sql
Copiar
Editar
SELECT
  nome,
  salario,
  SUM(salario) OVER (ORDER BY salario) AS soma_acumulada
FROM funcionario;
3. Comparando com a linha anterior (LAG()):
sql
Copiar
Editar
SELECT
  nome,
  salario,
  LAG(salario) OVER (ORDER BY salario) AS salario_anterior
FROM funcionario;
Outras funções de janela comuns:
ROW_NUMBER(): atribui um número sequencial a cada linha.

RANK(): atribui ranking com saltos em caso de empates.

DENSE_RANK(): atribui ranking sem pular números.

SUM(), AVG(), MAX(), MIN(): funcionam como funções de janela.

LAG() / LEAD(): acessam valores da linha anterior ou próxima.

As Window Functions são ferramentas poderosas para análise de dados no PostgreSQL, permitindo consultas avançadas com alta performance e sem necessidade de subconsultas complexas.