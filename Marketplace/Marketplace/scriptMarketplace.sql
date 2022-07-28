CREATE DATABASE db_marketplace_dotnet;

USE db_marketplace_dotnet;

CREATE TABLE tb_usuarios (
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Usuario VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Foto VARCHAR(255) NULL,
	Tipo VARCHAR(50) NOT NULL,
);

CREATE TABLE tb_categoria (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Categoria VARCHAR(255) NOT NULL,
);

CREATE TABLE tb_produtos (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Foto VARCHAR(255) NULL,
	FK_Criador INT NOT NULL,
	FK_Categoria INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Categoria) REFERENCES tb_categoria (Id),
);

CREATE TABLE tb_compra (
    FK_Usuario INT NOT NULL, 
	FK_Produtos INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Produtos) REFERENCES tb_produtos (Id),
	Dia VARCHAR(50),
);

    