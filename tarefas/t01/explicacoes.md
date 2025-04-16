## JOINs

JOINs são utilizados para combinar registros de duas ou mais tabelas com base em uma condição de correspondência entre elas. São fundamentais para realizar consultas relacionando dados distribuídos em diferentes tabelas de um banco de dados.

### INNER JOIN

Pense em dois grupos: um de alunos e outro de cursos. O INNER JOIN mostraria apenas os alunos que estão **matriculados em algum curso**. Quem não estiver em curso nenhum, ou cursos sem alunos, fica de fora.

### LEFT JOIN (ou LEFT OUTER JOIN)

Imagine uma lista de convidados de um casamento (tabela da esquerda) e uma lista de presentes recebidos (tabela da direita). Um LEFT JOIN mostraria **todos os convidados**, mesmo que alguns não tenham dado presente. Nesse caso, os campos relacionados ao presente aparecem em branco (NULL).

### RIGHT JOIN (ou RIGHT OUTER JOIN)

Agora, pense na situação oposta: você quer listar **todos os presentes recebidos**, mesmo que não saiba quem os enviou. O RIGHT JOIN mostraria todos os presentes (tabela da direita), e, se o nome do convidado estiver ausente, esse campo ficará em branco.

### FULL JOIN (ou FULL OUTER JOIN)

Você quer ver **todos os convidados e todos os presentes**, mesmo que alguns não se correspondam. Isso inclui convidados que não deram presente **e** presentes que vieram de pessoas não convidadas oficialmente. O FULL JOIN mostra tudo, com os campos vazios (NULL) onde não há relação.

---

## Window Functions

As funções de janela (Window Functions) permitem realizar cálculos sobre um conjunto de linhas relacionadas à linha atual, mantendo todas as linhas no resultado. São muito úteis para análises que comparam ou ranqueiam dados sem perder a visão completa.

### Características das Window Functions

- Não eliminam linhas do resultado, apenas adicionam informações extras com base em grupos ou ordens específicas.
- Podem ser usadas para criar rankings, médias móveis, somatórios acumulados, etc.

### Exemplos Lúdicos

- `ROW_NUMBER()`: Imagine uma fila de clientes em uma cafeteria. Cada pessoa na fila recebe um número de atendimento, na ordem em que chegou.

- `RANK()`: Pense em uma competição de culinária. Duas pessoas tiram nota 10 e ficam empatadas no primeiro lugar. O próximo concorrente será o terceiro colocado, porque o segundo lugar foi "pulado".

- `DENSE_RANK()`: Usando o mesmo exemplo da competição de culinária, se duas pessoas empatarem em primeiro, a próxima será **segunda colocada**. Ou seja, não há "saltos" no ranking.

- `AVG()` com janela: Imagine que cada funcionário recebe bônus com base na **média salarial** de seu setor. A função calcula essa média sem tirar ninguém da lista, apenas adicionando a informação à linha de cada funcionário.

