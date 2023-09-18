-- Selecionar o banco de dados --
USE db_escola;

-- Listar todas as tabelas --
SHOW TABLES;

-- Criar uma tabela --
CREATE TABLE IF NOT EXISTS tb_aluno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(11) NOT NULL,
    data_nascimento DATE NOT NULL
);

-- id, nome, email, telefone, linkedin, novato 
CREATE TABLE IF NOT EXISTS tb_professor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    novato BOOLEAN DEFAULT 1,
    nome VARCHAR(80) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(11) NOT NULL,
    linkedin VARCHAR(100)
);

-- Excluir uma tabela --
DROP TABLE tb_nome;

-- Alterar uma tabela --
ALTER TABLE tb_professor DROP COLUMN data_nascimento;
ALTER TABLE tb_professor ADD COLUMN formacao VARCHAR (20);


-- Comandos para consumir os dados --

-- Para inserir dados numa tabela --
INSERT INTO tb_lab (nome, cor, capacidade) 
VALUES ('Jack Ma', 'Roxa', '20');


INSERT INTO tb_aluno (nome, telefone, email, data_nascimento)
VALUES 
    ('Chiquim', '85988771212', 'chiquim@email.com', '1998-10-01'),
    ('José', '85988123456', 'ze@email.com', '1997-12-15'),
    ('Maria', '85999341212', 'maria@email.com', '2003-12-09'),
    ('Socorro', '85988779870', 'socorro@email.com', '2002-01-18'),
    ('Sebastião', '85989127432', 'tiao@email.com', '2001-10-10');


-- Para buscar "todos os dados de todos os labs"
SELECT * FROM tb_lab;

-- Para buscar "apenas alguns dados de todos os labs" --
SELECT nome, capacidade FROM tb_lab;

-- Para buscar "todos os dados de labs especificos" --
SELECT * FROM tb_lab WHERE capacidade=20;

-- Para buscar "todos os dados de labs especificos" --
SELECT nome FROM tb_lab WHERE capacidade=20;


SELECT nome FROM tb_aluno 
WHERE 
data_nascimento >= '2000-01-01'
AND data_nascimento <= '2002-12-31';


UPDATE tb_lab SET nome = 'Steve' WHERE id=2;

DELETE FROM tb_aluno WHERE id=3;



