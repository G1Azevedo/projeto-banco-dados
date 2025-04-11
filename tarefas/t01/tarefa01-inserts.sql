-- Inserindo departamentos
INSERT INTO departamento (descricao) VALUES 
('TI'), ('RH'), ('Financeiro'), ('Marketing'), ('Produção');

-- Inserindo funcionários
INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES
('João Silva', 'M', '1980-05-15', 5000.00, 1),
('Maria Souza', 'F', '1985-08-20', 4500.00, 2),
('Carlos Oliveira', 'M', '1990-03-10', 4000.00, 3),
('Ana Pereira', 'F', '1988-11-25', 4800.00, 4),
('Pedro Costa', 'M', '1992-07-30', 4200.00, 5);

-- Atualizando gerentes dos departamentos
UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 3 WHERE codigo = 3;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 4;
UPDATE departamento SET cod_gerente = 5 WHERE codigo = 5;

-- Inserindo projetos
INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
('Sistema ERP', 'Implementação de sistema integrado', 1, 1, '2023-01-10', '2023-12-15'),
('Treinamentos', 'Programa de capacitação', 2, 2, '2023-02-20', '2023-11-30'),
('Controle Orçamentário', 'Sistema de controle financeiro', 3, 3, '2023-03-05', '2023-10-20'),
('Campanha Publicitária', 'Lançamento novo produto', 4, 4, '2023-04-15', '2023-09-30'),
('Automação Industrial', 'Modernização da linha de produção', 5, 5, '2023-05-01', '2023-12-31');

-- Inserindo atividades
INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Análise de Requisitos', 'Levantamento de necessidades', 1, '2023-01-10', '2023-02-28'),
('Recrutamento', 'Seleção de instrutores', 2, '2023-02-20', '2023-03-15'),
('Desenvolvimento', 'Programação do sistema', 3, '2023-03-05', '2023-08-30'),
('Design', 'Criação de materiais visuais', 4, '2023-04-15', '2023-06-30'),
('Instalação', 'Montagem de equipamentos', 5, '2023-05-01', '2023-07-31');

-- Relacionando atividades a projetos
INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);