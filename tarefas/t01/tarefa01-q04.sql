SELECT 
    d.sigla AS sigla_departamento,
    d.descricao AS departamento,
    f.nome AS gerente
FROM departamento d
LEFT JOIN funcionario f ON d.codGerente = f.codigo;