USE db_marketplace_dotnet

SELECT * FROM tb_usuarios
SELECT * FROM tb_categoria
SELECT * FROM tb_produtos
SELECT * FROM tb_compra

INSERT INTO tb_usuarios
VALUES
(1,'Rafael Candeias','rcandeias','52865','URL_Rafael','Gratuito'),
(2,'David Leandro','davidLeandro','27546','URL_David','Basic'),
(3,'Maria Julia','majuu','635892','URL_Maju','Premium');

INSERT INTO tb_categoria
VALUES
('Bebidas'),
('Frutas'),
('Limpeza');

INSERT INTO tb_produtos
VALUES
('Itaipava','600ml','Url_Itaipava',3,1),
('Pitaia','kg','Url_Pitaia',1,2),
('Veja Multiuso','Promoção','Url_Veja',2,3);

INSERT INTO tb_compra
VALUES
(3, 2, '2022-03-25 10:10'),
(2, 1, '2018-05-14 10:10'),
(1, 3, '2020-07-30 10:10');

SELECT * FROM tb_usuarios
WHERE Tipo LIKE 'Gratuito'

SELECT * FROM tb_produtos
WHERE Titulo LIKE 'Itaipava'


SELECT u.Nome,p.Titulo,p.FK_Categoria
FROM tb_usuarios AS u 
LEFT JOIN tb_produtos AS p
	ON p.FK_Criador = p.FK_Categoria;

SELECT AVG(FK_Usuario) As Media FROM tb_compra;
SELECT COUNT(FK_Criador) AS Usuarioscomprodutoscadastrados FROM tb_produtos;