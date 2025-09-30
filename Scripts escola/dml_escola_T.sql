--Usar um banco já criado
USE db_escola_T;

--INSERIR UM REGISTRO NA TABELA ESCOLA
INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni', 'Estrada das Lágrimas, 579 - São José');

SELECT * FROM tb_escola;

--INSERIR UM REGISTRO NA TABELA TURMA
INSERT INTO tb_turma (serie, periodo, numero_sala, nome_turma)
VALUES(2, 'Tarde', 16, 'SEDUC');

SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA
INSERT INTO tb_prova (materia, nome_professor, duracao, nota, data_prova)
VALUES
('ed.Fisica','Ana Claudia','8:30:00', 9, '2025/09/26' ),
('Sociologia','Adair','14:20:00', 8, '2025/09/29' ),
('Matematica','Rogeria','1:50:00', 7, '2025/09/25' );

SELECT * FROM tb_prova;

--INSERIR UM REGISTRO NA TABELA ALUNO
INSERT INTO tb_aluno(nome,cpf, matricula,data_nasc,id_escoal)
VALUES('Noah','64600775828','Noah23','2002/05/23', 1);

INSERT INTO tb_aluno(nome,cpf, matricula,data_nasc,id_escoal)
VALUES
('Ian','51309131830','Ian26','2007/09/26', 1),
('Renan','52776366841','Renan11','2007/05/11', 1),
('Leandro','51388827832','Leandro13','2007/06/13', 1),
('Julio','78698511830','Julio26','2004/04/26', 1);

SELECT * FROM tb_aluno;

--APAGAR UM REGISTRO PELO SEU UNDENTIFICADO
DELETE tb_aluno
WHERE id = 6;

--ATUALIZAR UM REGISTROPELO SEU IDENTIFICADOR
UPDATE tb_aluno
SET matricula = 'Julio26'
WHERE id = 14;


--INSERIR UM REGISTRO NA TABELA TURMA E PROVA
INSERT INTO tb_turma_prova(id_turma,id_turma)

SELECT * FROM tb_turma_prova