SELECT 
    f.codigo,
    f.nome,
    f.salario,
    d.descricao AS departamento
FROM funcionario f
LEFT JOIN departamento d ON f.codDepto = d.codigo
WHERE f.codigo NOT IN (
    SELECT codGerente 
    FROM departamento 
    WHERE codGerente IS NOT NULL
)
ORDER BY f.nome;