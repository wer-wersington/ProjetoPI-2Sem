
USE CATALOGOFILMS;
/*
-- INSERT TABELA DE FILME ----------------------------------------------------------------------------------------------------------------------------

INSERT INTO TB_FILME (NM_FILME, DS_SINOPSE, HR_DURACAO, DT_LANCAMENTO, VL_AVALIACAO, NR_CLASSIFICACAO_INDICATIVA)
	VALUES ("Crespuculo", "eu FOI", '01:00:00', '2010-06-18', 4.9, 18);


-- INSERT TABELA DE ATOR ----------------------------------------------------------------------------------------------------------------------------
    
INSERT INTO TB_ATOR (NM_ATOR, NR_IDADE)
	VALUES 	("John kennedy", 24),
			("Carlos", 33);
        
        
-- INSERT TABELA DE FILME ATOR ----------------------------------------------------------------------------------------------------------------------------		
	
INSERT INTO TB_FILME_ATOR (ID_FILME, ID_ATOR)
	VALUES 	(3, 2),
			(1, 2);
            

-- INSERT TABELA DE GENERO ----------------------------------------------------------------------------------------------------------------------------

INSERT INTO TB_GENERO (NM_GENERO)
	VALUES 	("Romance"),
			("Ação");
 
 
 -- INSERT TABELA DE GENERO FILME ----------------------------------------------------------------------------------------------------------------------------
            
INSERT INTO TB_GENERO_FILME (ID_FILME, ID_GENERO)
	VALUES 	(1, 1),
			(3, 2);
            

-- INSERT TABELA DE USUARIO ----------------------------------------------------------------------------------------------------------------------------
            
INSERT INTO TB_USUARIO (NM_USUARIO, DS_EMAIL, DS_SENHA)
	VALUES 	("Caio da Silva", "CAIO@GG.COM", "12"),
			("Gabriel Brownie", "brownie@gg.com", "123");
            
*/
-- INSERT TABELA DE COMENTARIO ----------------------------------------------------------------------------------------------------------------------------
            
INSERT INTO TB_COMENTARIO (ID_FILME, ID_USUARIO, DS_COMENTARIO, DT_COMENTARIO)
	VALUES 	(3, 1, "Nossa que filme bacana", '2006-01-13'),
			(1, 2, "Nossa que filme chatão", '1998-04-23');
            

-- INSERT TABELA DE FAVORITO ----------------------------------------------------------------------------------------------------------------------------
            
INSERT INTO TB_FAVORITO (ID_FILME, ID_USUARIO)
	VALUES 	(1, 1),
			(3, 2);


-- SELECTS GERAIS ----------------------------------------------------------------------------------------------------------------------------

SELECT * FROM TB_FILME; 
SELECT * FROM TB_ATOR;
SELECT * FROM TB_GENERO;
SELECT * FROM TB_USUARIO;
SELECT * FROM TB_FAVORITO; 


-- SELECT TABELA DE FILME COM ATORES ----------------------------------------------------------------------------------------------------------------------------

SELECT 	NM_FILME, NM_ATOR, TB_FILME.ID_FILME
        FROM
		TB_FILME_ATOR
		INNER JOIN TB_FILME ON TB_FILME.ID_FILME = TB_FILME_ATOR.ID_FILME
		INNER JOIN TB_ATOR ON TB_ATOR.ID_ATOR = TB_FILME_ATOR.ID_ATOR
        
        ORDER BY TB_FILME.ID_FILME;


-- SELECT TABELA DE COMENTARIO E USUARIO ----------------------------------------------------------------------------------------------------------------------------        

SELECT 	NM_FILME, NM_USUARIO, DS_COMENTARIO
		FROM TB_COMENTARIO 
		INNER JOIN TB_FILME ON TB_FILME.ID_FILME = TB_COMENTARIO.ID_FILME
        INNER JOIN TB_USUARIO ON TB_USUARIO.ID_USUARIO = TB_COMENTARIO.ID_USUARIO;
        

-- SELECT LISTAR TODOS OS FILMES ----------------------------------------------------------------------------------------------------------------------------

SELECT NM_FILME, ANO_LANCAMENTO
FROM TB_FILME;

-- SELECT LISTAR POR GENERO ----------------------------------------------------------------------------------------------------------------------------

SELECT NM_FILME, DS_GENERO, ANO_LANCAMENTO
FROM TB_FILME
INNER JOIN TB_GENERO ON TB_FILME.ID_GENERO = TB_GENERO.ID_GENERO
ORDER BY DS_GENERO;

-- SELECT LISTAR DETALHES DO FILME (OBS: TABELA DE FILME, ATORES, USUARIO E COMENTARIO) ----------------------------------------------------------------------------------------------------------------------------

SELECT NM_FILME, NM_ATOR, NM_USUARIO, DS_COMENTARIO
FROM TB_FILME
INNER JOIN TB_FILME_ATOR ON TB_FILME.ID_FILME = TB_FILME_ATOR.ID_FILME
INNER JOIN TB_ATOR ON TB_FILME_ATOR.ID_ATOR = TB_ATOR.ID_ATOR
INNER JOIN TB_COMENTARIO ON TB_FILME.ID_FILME = TB_COMENTARIO.ID_FILME
INNER JOIN TB_USUARIO ON TB_COMENTARIO.ID_USUARIO = TB_USUARIO.ID_USUARIO
WHERE TB_FILME.ID_FILME = []; -- Aqui [ ] substitui pelo id do filme, se tiver errado apaga saporra aqui e já era

-- SELECT LISTAR FAVORITOS -------------------------------------------------------------------------------------------------------------------------------------------------
SELECT NM_FILME, NM_USUARIO
FROM TB_FAVORITOS
INNER JOIN TB_FILME ON TB_FAVORITOS.ID_FILME = TB_FILME.ID_FILME
INNER JOIN TB_USUARIO ON TB_FAVORITOS.ID_USUARIO = TB_USUARIO.ID_USUARIO
ORDER BY NM_USUARIO;

-- SELECT LISTAR ATORES ----------------------------------------------------------------------------------------------------------------------------

SELECT NM_ATOR
FROM TB_ATOR;

