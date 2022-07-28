CREATE DATABASE db_redesocial_dotnet;

USE db_redesocial_dotnet;

CREATE TABLE tb_usuarios (
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Usuario VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Foto VARCHAR(255) NULL,
);

CREATE TABLE tb_inscritos (
	FK_Usuario INT NOT NULL,
	FK_Grupo INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id),
);

CREATE TABLE tb_postagens (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Foto VARCHAR(255) NULL,
	FK_Criador INT NOT NULL,
	FK_Grupo INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id),
	Dia INT NOT NULL,
);

CREATE TABLE tb_grupos (
	Id INT NOT NULL PRIMARY KEY,
	Grupo VARCHAR(50) NOT NULL,
	Descricao VARCHAR(50) NOT NULL,
	Foto VARCHAR(100) NULL,
	FK_Criador INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id),
	
);
