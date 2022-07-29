SELECT * FROM tb_usuarios 
SELECT * FROM tb_anuncios

INSERT INTO tb_usuarios
VALUES
(1, 'Samira', 'ixoo@gmail.com', '52862', 'PF'),
(2, 'Maju', 'maju@gmail.com', '631152', 'PF');


INSERT INTO tb_anuncios
VALUES
( 'Monitor LED HDMI', 'Otimo custo beneficio', '(11) 5258-6255', 'Url_Monitor', '20220814', 1),
( 'Headphone Philco','o bluetooth 5,0 mas rapido e economico','(11) 1454-6444','Url_Fone','20220512', 2);


SELECT * FROM tb_usuarios
WHERE Pessoa = 'PF'

SELECT * FROM tb_anuncios
WHERE Descricao LIKE '%M%';

SELECT a.FK_Usuario, u.Nome, u.Id
FROM tb_usuarios AS u 
RIGHT JOIN tb_anuncios AS a
	ON u.Id = a.FK_Usuario;

SELECT COUNT(*) AS ItensCadastrados FROM tb_anuncios;