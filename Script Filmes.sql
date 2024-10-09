CREATE DATABASE Filmes;
USE Filmes;

CREATE TABLE Atores(
    Id INT AUTO_INCREMENT NOT NULL,
    PrimeiroNome VARCHAR(20) NULL,
    UltimoNome VARCHAR(20) NULL,
    Genero VARCHAR(1) NULL,
    CONSTRAINT PK_actor PRIMARY KEY (Id)
);


CREATE TABLE Filmes(
    Id INT AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(50) NULL,
    Ano INT NULL,
    Duracao INT NULL,
    CONSTRAINT PK_movie PRIMARY KEY (Id)
);

CREATE TABLE Generos(
    Id INT AUTO_INCREMENT NOT NULL,
    Genero VARCHAR(20) NULL,
    CONSTRAINT PK_genres PRIMARY KEY (Id)
);

CREATE TABLE ElencoFilme(
    Id INT AUTO_INCREMENT NOT NULL,
    IdAtor INT NOT NULL,
    IdFilme INT NULL,
    Papel VARCHAR(30) NULL,
    CONSTRAINT PK_ElencoFilme PRIMARY KEY (Id),
    CONSTRAINT FK_ElencoFilme_Atores FOREIGN KEY (IdAtor) REFERENCES Atores(Id),
    CONSTRAINT FK_ElencoFilme_Filmes FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);


CREATE TABLE FilmesGenero(
    Id INT AUTO_INCREMENT NOT NULL,
    IdGenero INT NULL,
    IdFilme INT NULL,
    CONSTRAINT PK_FilmesGenero PRIMARY KEY (Id),
    CONSTRAINT FK_FilmesGenero_Filmes FOREIGN KEY (IdFilme) REFERENCES Filmes(Id),
    CONSTRAINT FK_FilmesGenero_Generos FOREIGN KEY (IdGenero) REFERENCES Generos(Id)
);


INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('James', 'Stewart', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Deborah', 'Kerr', 'F');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Marlon', 'Brando', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Vivien', 'Leigh', 'F');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Humphrey', 'Bogart', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Ingrid', 'Bergman', 'F');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Peter', 'OToole', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Robert', 'DeNiro', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Harriso', 'Ford', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Stephen', 'Baldwin', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Jack', 'Nicholson', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Mark', 'Wahlberg', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Woody', 'Allen', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Claire', 'Danes', 'F');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Tim', 'Robbins', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Kevin', 'Spacey', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Kate', 'Winslet', 'F');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Robin', 'Williams', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Jon', 'Voight', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Ewan', 'McGrr', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Christian', 'Bale', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Maggie', 'Gyllenhaal', 'F');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Dev', 'Patel', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Surney', 'Weaver', 'F');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('David', 'Aston', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Ali', 'Astin', 'F');


INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Um Corpo que Cai', 1958, 128);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Os Inocentes', 1961, 100);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Lawrence da Arábia', 1962, 216);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('O Franco Atirador', 1978, 183);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Amadeus', 1984, 160);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Blade Runner', 1982, 117);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('De Olhos Bem Fechados', 1999, 159);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Os Suspeitos', 1995, 106);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Chinatown', 1974, 130);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Boogie Nights - Prazer Sem Limites', 1997, 155);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Noivo Neurótico, Noiva Nervosa', 1977, 93);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Princesa Mononoke', 1997, 134);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Um Sonho de Liberdade', 1994, 142);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Beleza Americana', 1999, 122);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Titanic', 1997, 194);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Gênio Indomável', 1997, 126);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Amargo pesadelo', 1972, 109);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Trainspotting - Sem Limites', 1996, 94);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('O Grande Truque', 2006, 130);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Donnie Darko', 2001, 113);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Quem Quer Ser um Milionário?', 2008, 120);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Aliens, O Resgate', 1986, 137);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Uma Vida sem Limites', 2004, 118);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Avatar', 2009, 162);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Coração Valente', 1995, 178);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Os Sete Samurais', 1954, 207);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('A Viagem de Chihiro', 2001, 125);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('De Volta para o Futuro', 1985, 116);

INSERT INTO Generos (Genero) VALUES ('Ação');
INSERT INTO Generos (Genero) VALUES ('Romance');
INSERT INTO Generos (Genero) VALUES ('Drama');
INSERT INTO Generos (Genero) VALUES ('Suspense');
INSERT INTO Generos (Genero) VALUES ('Aventura');
INSERT INTO Generos (Genero) VALUES ('Animação');
INSERT INTO Generos (Genero) VALUES ('Biografia');
INSERT INTO Generos (Genero) VALUES ('Comédia');
INSERT INTO Generos (Genero) VALUES ('Crime');
INSERT INTO Generos (Genero) VALUES ('Horror');
INSERT INTO Generos (Genero) VALUES ('Musical');
INSERT INTO Generos (Genero) VALUES ('Mistério');
INSERT INTO Generos (Genero) VALUES ('Guerra');


INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (1, 1,'John Scottie Ferguson');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (2, 2,'Miss Giddens');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (3, 3,'T.E. Lawrence');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (4, 4,'Michael');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (6, 6,'Rick Deckard');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (7, 8,'McManus');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (9, 10,'Eddie Adams');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (10, 11,'Alvy Singer');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (11, 12,'San');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (12, 13,'Andy Dufresne');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (13, 14,'Lester Burnham');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (14, 15,'Rose DeWitt Bukater');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (15, 16,'Sean Maguire');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (16, 17,'Ed');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (17, 18,'Renton');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (19, 20,'Elizabeth Darko');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (20, 21,'Older Jamal');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (21, 22,'Ripley');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (13, 23,'Bobby Darin');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (8, 9,'J.J. Gittes');
INSERT ElencoFilme (IdAtor, IdFilme, Papel) VALUES (18, 19,'Alfred Borden');


INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (1, 22);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (2, 17);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (2, 3);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (3, 12);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (5, 11);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (6, 8);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (6, 13);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (7, 26);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (7, 28);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (7, 18);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (7, 21);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (8, 2);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (9, 23);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (10, 7);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (10, 27);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (10, 1);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (11, 14);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (12, 6);
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (13, 4);