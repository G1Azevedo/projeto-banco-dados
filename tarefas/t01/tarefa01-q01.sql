SELECT f.nome AS funcionario, d.descricao AS departamento, f.salario
FROM funcionario f
JOIN departamento d ON f.codDepto = d.codigo
ORDER BY d.descricao, f.salario DESC;