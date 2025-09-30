USE db_escola_T;

--Lista os 3 primeiros aluno(em ordem DECRESENTE)
SELECT TOP 3 matricula FROM tb_aluno;

--lista as matriculas dos alunos em ordem cresente
SELECT matricula 
FROM tb_aluno
ORDER BY nome ASC;

--Lista os id's dos 3 primeiros aluno que foram recem 
SELECT TOP 3 matricula
FROM tb_aluno
ORDER BY id DESC;

--lista todos os alunos
SELECT nome,cpf
FROM tb_aluno
WHERE nome = 'Leandro';

--lista o nome da escola Torloni
SELECT nome
FROM tb_escola
WHERE nome = 'Torloni';

--lista as turmas que tem o nome
SELECT nome_turma
FROM tb_turma
WHERE nome_turma = 'SEDUC';	


--Exiba somente
SELECT TOP 2 *
FROM tb_aluno
ORDER BY id DESC;

--Mostre quantos alunos existe na base
SELECT COUNT(matricula) AS qtd_alunos FROM tb_aluno;

--Mostre os alunos mais novos
SELECT MAX(data_nasc) AS idade_mais_novo FROM tb_aluno;

--Mostre os aluno mais velhos
SELECT MIN(data_nasc) AS idade_mais_velha FROM tb_aluno;

--Exiba a idade mais velha e a idade mais nova em uma unica
SELECT MIN(data_nasc) AS idade_mais_velha SELECT MAX(data_nasc) AS idade_mais_novo FROM tb_aluno;

SELECT TOP 1 nome, data_nasc
FROM tb_aluno
ORDER BY data_nasc;

--
SELECT AVG(nota) AS media_nota FROM tb_prova;

--exiba a soma do id's de turma
SELECT SUM(id) FROM tb_aluno;

SELECT * FROM tb_aluno;
--Mostre os nomes dos aluno mais novos
SELECT MAX(data_nasc) AS idade_mais_novo , nome
FROM tb_aluno
GROUP BY nome
ORDER BY idade_mais_novo DESC;

--Exibir quantas turmas tem no periodo da tarde
SELECT COUNT(id)
FROM tb_turma
WHERE periodo = 'Tarde';