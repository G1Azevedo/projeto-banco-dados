CREATE VIEW vw_atividade_responsavel AS
SELECT 
    a.codigo AS codAtividade,
    a.descricao AS descricaoAtividade,
    p.codigo AS codProjeto,
    p.nome AS nomeProjeto,
    f.codigo AS codResponsavel,
    f.nome AS nomeResponsavel
FROM atividade a
JOIN projeto p ON a.codProjeto = p.codigo
JOIN funcionario f ON p.codResponsavel = f.codigo;

CREATE VIEW vw_contagem_atividades AS
SELECT 
    codResponsavel,
    nomeResponsavel,
    COUNT(*) AS totalAtividades
FROM vw_atividade_responsavel
GROUP BY codResponsavel, nomeResponsavel;

SELECT 
    nomeResponsavel AS nomeFuncionario,
    totalAtividades
FROM vw_contagem_atividades;
