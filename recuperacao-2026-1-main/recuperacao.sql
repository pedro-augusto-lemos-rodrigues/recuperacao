CREATE DATABASE livrariaRecuperacao20261;

USE livrariaRecuperacao20261;

CREATE TABLE autor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE genero (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE livro (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(50),
    fkAutor INT,
    fkGenero INT,
    precoCompra DOUBLE,
    precoVenda DOUBLE,
    estoque VARCHAR(50),
   CONSTRAINT fk_livro_autor FOREIGN KEY (fkAutor) REFERENCES autor(id),
   CONSTRAINT fk_livro_genero FOREIGN KEY (fkGenero) REFERENCES genero(id)
);



select * from autor;

select * from genero;

select * from livro;

INSERT INTO autor (nome) VALUES
	('H. P. Lovecraft'),
	('Geraldo'),
	('Sérgio'),
	('Walldsnney');

INSERT INTO genero (nome) VALUES 
	('horror'), 
    ('romance'), 
    ('poesia'), 
    ('fantasia');

INSERT INTO livro (titulo, fkAutor, fkGenero, precoCompra, precoVenda, estoque) VALUES
	('A cor que caiu do espaço', 1, 1, 65.99, 95.99, 48),
	('1001 Noites', 2, 2, 125.00, 145.00, 55),
	('Chapeuzinho Vermelho', 4, 4, 89.20, 100.00, 57),
	('Mogli, o menino lobo', 3, 4, 23.00, 46.45, 99),
	('Jurassic Park', 2, 4, 100.00, 120.00, 66),
	('Matemática básica 1', 1, 3, 55.00, 77.00, 200),
	('Garrafas voadoras do espaço', 2, 4, 45.00, 49.99, 30),
	('Matemática básica 2', 1, 3, 55.00, 87.00, 250),
	('Don Quixote', 3, 2, 87.00, 97.00, 72),
	('Metarmofose', 4, 1, 30.00, 33.00, 55);





SELECT 
    livro.estoque,
    genero.nome AS nomeGenero
FROM livro
	JOIN genero ON genero.id = livro.fkGenero;
    
    
    
SELECT
    livro.estoque AS estoque,
    genero.nome AS nomeGenero
FROM livro
	JOIN genero ON genero.id = livro.fkGenero
    ORDER BY estoque;



SELECT 
    livro.precoVenda,
    autor.nome AS nomeAutor
FROM livro
	JOIN autor ON autor.id = livro.fkAutor
    ORDER BY precoVenda;
        






















/*

CREATE DATABASE livraria;

USE livraria;

CREATE TABLE endereco(
idEndereco INT PRIMARY KEY AUTO_INCREMENT,
rua VARCHAR(50),
bairro VARCHAR(50),
cidade VARCHAR(50),
estado VARCHAR(50),
complemento VARCHAR(50)
);

CREATE TABLE livraria(
idLivraria INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),

fkEndereco INT,
CONSTRAINT fkEndereco,
	REFERENCES idEndereco
		FORING KEY idEndereco (fkEndereco)
);


CREATE TABLE funcionario(
idFUncionario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
cargo VARCHAR(50),

fkEndereco INT,
CONSTRAINT fkEndereco,
	REFERENCES idEndereco
		FORING KEY idEndereco (fkEndereco)
        
        
fkGerente INT,
CONSTRAINT fkGerente,
	REFERENCES ifFuncionario
		FORING KEY idFuncionario (fkGerente)
        
        
fkLivraria INT,
CONSTRAINT fkLivraria,
	REFERENCES idLivraria
		FORING KEY idLivraria (fkLivraria)
);

CREATE TABLE autor(
idAutor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
dtCriacao DATE
);

CREATE TABLE genero(
idGenero INT PRIMARY KEY AUTO_INCREMENT,
genero VARCHAR(50)
);

CREATE TABLE livro(
idLivro INT,
titulo VARCHAR(50),
precoCompra DECIMAL(5.2),
precoVenda DECIMAL (5.2),
estoque VARCHAR(50),

fkAutor INT,
CONSTRAINT fkAutor,
	REFERENCES idLivraria
		FORING KEY idLivraria (fkAutor)


fkGenero INT,
CONSTRAINT fkGenero,
	REFERENCES idLivraria
		FORING KEY idLivraria (fkGenero)
        
        
fkLivraria INT,
CONSTRAINT fkLivraria,
	REFERENCES idLivraria
		FORING KEY idLivraria (fkLivraria)
        
);

*/