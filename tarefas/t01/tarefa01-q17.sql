SELECT p.codigo, p.descricao
FROM projeto p
JOIN departamento d ON p.codDepto = d.codigo
JOIN funcionario f ON d.codGerente = f.codigo
WHERE f.salario = (
    SELECT MAX(f2.salario)
    FROM departamento d2
    JOIN funcionario f2 ON d2.codGerente = f2.codigo
);
