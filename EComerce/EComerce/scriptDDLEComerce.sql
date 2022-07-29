CREATE DATABASE db_ecomerce_dotnet;

USE db_ecomerce_dotnet;

CREATE TABLE tb_usuarios (
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Usuario VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Documento VARCHAR(255) NULL,
);

CREATE TABLE tb_compras (
	FK_Usuario INT NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Produto) REFERENCES tb_produtos (Id),
	Dia INT,
);

CREATE TABLE tb_produtos (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Produto VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Valor FLOAT(50) NULL,
	Estoque INT,
	Categoria VARCHAR (100) NOT NULL,
	Imagem VARCHAR(100) NOT NULL,
);
