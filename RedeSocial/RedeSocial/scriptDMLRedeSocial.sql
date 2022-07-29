USE db_redesocial_dotnet;

SELECT * FROM tb_usuarios;
SELECT * FROM tb_grupos;
SELECT * FROM tb_postagens;
SELECT * FROM tb_inscritos;

INSERT INTO tb_usuarios
VALUES
(1,'Samira','ixoo','524852','Url_Sami');

INSERT INTO tb_grupos
VALUES(2,'Harry Potter', 'Otimo livro para crianças', 'Url_Harry', 1);

INSERT INTO tb_postagens
VALUES('Rony O garoto amigo', 'O melhor amigo de Harry Potter...', 'Url_Ron', 1, 2, 2022-03-25);

INSERT INTO tb_inscritos
VALUES(1, 2);

SELECT * FROM tb_usuarios
WHERE Usuario IN ('ixoo');


SELECT u.Id, p.Id
   FROM tb_usuarios AS u 
   FULL JOIN tb_postagens AS p
	ON u.Id = p.Id;
	

SELECT COUNT(*) AS Quantidadepostagens FROM tb_postagens;