-- 1: 
SELECT nome, ano FROM filmes;

-- 2:
SELECT nome, ano, duracao FROM filmes ORDER BY ano ASC;

-- 3: 
SELECT nome, ano, duracao FROM filmes WHERE nome = "De Volta Para o Futuro";

-- 4:
SELECT *  FROM filmes WHERE ano = 1997;

-- 5:
SELECT *  FROM filmes WHERE ano > 2000;

-- 6:
SELECT *  FROM filmes WHERE duracao > 100 and duracao < 150 order by duracao asc;

-- 7:
SELECT  ano, COUNT(*) AS Quantidade FROM filmes GROUP BY ano ORDER BY MAX(duracao) DESC;

-- 8:
SELECT * FROM Atores WHERE Genero = 'M';

-- 9:
SELECT * FROM Atores WHERE Genero = 'F' order by PrimeiroNome;

-- 10:
SELECT f.Nome AS Filme, g.Genero AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

-- 11:
SELECT f.Nome AS Filme, g.Genero AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Biografia';

-- 12:
SELECT f.Nome AS Filme, a.PrimeiroNome AS Nome, a.UltimoNome As Sobrenome, ef.papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON ef.IdFilme = f.id
INNER JOIN Atores a ON ef.IdAtor = a.Id;