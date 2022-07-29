CREATE DATABASE db_classificados_dotnet;

USE db_classificados_dotnet;

CREATE TABLE tb_usuarios (
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Usuario VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Pessoa VARCHAR(255) NULL,
);

CREATE TABLE tb_anuncios (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Contato VARCHAR(50) NOT NULL,
	Foto VARCHAR (100),
	Dia INT NOT NULL,
	FK_Usuario INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
);

