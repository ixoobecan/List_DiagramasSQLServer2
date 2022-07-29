USE db_ecomerce_dotnet;

SELECT * FROM tb_produtos;
SELECT * FROM tb_usuarios;
SELECT * FROM tb_compras;

INSERT INTO tb_produtos
VALUES
('Phone Bluetooth Itone', 'A perfeita imitação para sua viagem de metro', 95.0, 100, 'Fones', 'Url_Fones'),
('Banheira com Suporte', 'Com Redutor Smile Aqua Green - Safety 1st', 778.9, 50, 'Bebes', 'Url_Banheira'),
('Smartphone Samsung Galaxy', 'A13 128GB Azul 4G - Octa-Core 4GB RAM 6,6” Câm Quádrupla + Selfie 8MP', 1180.0, 100, 'Smartphone', 'Url_GalaxyA13');

INSERT INTO tb_usuarios
VALUES
(1,'Samira', 'ixoo','5245651445656','123.456.789.10'),
(2,'Maju França','maju','123455215288','123.456.789.10');


INSERT INTO tb_compras
VALUES
(1, 3, 20220624),
(2, 3, 20180504),
(2, 1, 20200530);

SELECT * FROM tb_produtos
WHERE Id BETWEEN 1 and 3;

SELECT * FROM tb_usuarios
WHERE Usuario LIKE 'maju';

SELECT p.Id, p.Produto, u.Nome, u.Id
FROM tb_usuarios AS u 
INNER JOIN tb_produtos AS p
	ON u.Id = p.Id;

SELECT AVG(Valor) As MediadeValor FROM tb_produtos;
SELECT SUM(Estoque) AS SomaProdutosemEstoque FROM tb_produtos;
SELECT COUNT(Estoque) AS ItensCadastrados FROM tb_produtos;