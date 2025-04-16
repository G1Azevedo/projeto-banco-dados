## JOINs

JOINs são utilizados para combinar registros de duas ou mais tabelas com base em uma condição de correspondência entre elas. São fundamentais para realizar consultas relacionando dados distribuídos em diferentes tabelas de um banco de dados.

### 🔹 INNER JOIN

Retorna apenas os registros que possuem correspondência entre as tabelas envolvidas. É o tipo de JOIN mais comum e elimina registros que não possuem relacionamento.

### 🔹 LEFT JOIN (ou LEFT OUTER JOIN)

Retorna todos os registros da tabela da esquerda e os registros correspondentes da tabela da direita. Quando não há correspondência, os campos da tabela da direita são preenchidos com valores nulos (NULL).

### 🔹 RIGHT JOIN (ou RIGHT OUTER JOIN)

Retorna todos os registros da tabela da direita e os registros correspondentes da tabela da esquerda. Quando não há correspondência, os campos da tabela da esquerda são preenchidos com valores nulos (NULL).

### 🔹 FULL JOIN (ou FULL OUTER JOIN)

Retorna todos os registros das duas tabelas, com correspondência sempre que possível. Quando não há correspondência em uma das tabelas, os campos da outra são preenchidos com valores nulos (NULL).

---

## Window Functions

As funções de janela (Window Functions) permitem realizar cálculos sobre um conjunto de linhas relacionadas à linha atual, mantendo todas as linhas no resultado. São muito utilizadas em análises avançadas de dados.

### 🔸 Características das Window Functions

- Não reduzem o número de linhas do resultado.
- São aplicadas com a cláusula `OVER`, que define a "janela" de análise.
- Permitem o uso de cláusulas como `PARTITION BY` (para dividir os dados em grupos) e `ORDER BY` (para definir a ordem dentro da partição).

### 🔸 Principais Funções de Janela

- `ROW_NUMBER()`: Numera as linhas dentro de cada partição, com uma sequência única.
- `RANK()`: Atribui um ranking às linhas, considerando empates (valores iguais recebem o mesmo ranking, com saltos).
- `DENSE_RANK()`: Similar ao `RANK`, mas sem saltos nos números em caso de empate.
- Funções agregadas como `SUM()`, `AVG()`, `MIN()`, `MAX()` também podem ser usadas como funções de janela, permitindo agregações por grupo sem perder a granularidade das linhas.

