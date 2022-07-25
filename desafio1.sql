DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.Usuario(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    data_assinatura DATE NOT NULL,
    criado_em TIMESTAMP DEFAULT NOW(),
) engine=InnoDB;

CREATE TABLE SpotifyClone.Plano(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    valor_plano DECIMAL(3, 2) NOT NULL,
    criado_em TIMESTAMP DEFAULT NOW(),
) engine=InnoDB;

CREATE TABLE SpotifyClone.Artista(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(100) NOT NULL,
    criado_em TIMESTAMP DEFAULT NOW(),
) engine=InnoDB;

CREATE TABLE SpotifyClone.Seguindo_Artistas(
    artista_id INT NOT NULL,
    usuario_nome_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (artista_id, usuario_nome_id),
    criado_em TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (artista_id) REFERENCES Artista (artista_id),
    FOREIGN KEY (usuario_nome_id) REFERENCES Usuario (usuario_id)
) engine=InnoDB;

CREATE TABLE SpotifyClone.Album(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    ano_lancamento DATE NOT NULL,
    criado_em TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (artista_id) REFERENCES Artista (artista_id)
) engine=InnoDB;

CREATE TABLE SpotifyClone.Cancoes(
    musica_id INT PRIMARY KEY AUTO_INCREMENT,
    musica VARCHAR(100) NOT NULL,
    duracao_segundos INT NOT NULL,
    album_id INT NOT NULL,
    criado_em TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (album_id) REFERENCES Album (album_id)
) engine=InnoDB;

CREATE TABLE SpotifyClone.Reproducoes(
    historico_id INT PRIMARY KEY AUTO_INCREMENT,
    musica_id INT NOT NULL,
    usuario_nome_id INT NOT NULL,
    data_reproducao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    criado_em TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (album_id) REFERENCES Album (album_id)
) engine=InnoDB;

INSERT INTO Usuario (nome, idade, data_assinatura) VALUES
('Thati', 23, 2019-10-20), ('Cintia', 35, 2017-12-30), ('Bill', 20, 2019-06-05), ('Roger', 45, 2020-05-13), ('Norman', 58, 2017-02-17), ('Patrick', 33, 2017-01-06), ('Vivian', 26, 2018-01-05), ('Carol', 19, 2018-02-14), ('Angelina', 42, 2018-04-29),('Paul', 46, 2017-01-17);

INSERT INTO Plano (tipo, valor_plano) VALUES ('gratuito', 0.00), ('familiar', 7.99), ('universitário', 5.99), ('pessoal', 6.99);

INSERT INTO Artista (artista) VALUES ('Walter Phoenix'), ('Peter Strong'), ('Lance Day'), ('Freedie Shannon'), ('Tyler Isle'), ('Fog');

INSERT INTO Seguindo_Artistas (artista_id, usuario_nome_id) VALUES (1, 1), (4, 1), (3, 1), (1, 2), (3, 2), (2, 3), (1, 3), (4, 4), (5, 5),(6, 5), (6, 6), (3, 6), (1, 6), (2, 7), (5, 7), (1, 8), (5, 8), (6, 9), (4, 9),(3, 9), (2, 10), (6, 10);

INSERT INTO Album (album, artista_id, ano_lancamento) VALUES ('Envious', 1, 1990), ('Exuberant', 1, 1993), ('Hallowed Steam', 2, 1995), (Incandescent, 3, 1998), ('Temporary Culture', 4, 2001), ('Library of liberty', 4, 2003), ('Chained Down', 5, 2007), ('Cabinet of fools', 5, 2012), ('No guarantees', 5, 2015), ('Apparatus', 6, 2015);

INSERT INTO Cancoes (musica, duracao_segundos, album_id) VALUES ("Soul For Us", 200, 1), ("Reflections Of Magic", 163, 1), ("Dance With Her Own", 116, 1), ("Troubles Of My Inner Fire" , 203, 2), ("Time Fireworks", 152, 2), ("Magic Circus", 105, 3), ("Honey, So Do I", 207, 3), ("Sweetie, Let's Go Wild", 139, 3), ("She Knows" , 244, 3),("Fantasy For Me", 100, 4), ("Celebration Of More", 146, 4), ("Rock His Everything", 223, 4), ("Home Forever", 231, 4), ("Diamond Power", 241, 4), ("Let's Be Silly", 132, 4), ("Thang Of Thunder", 240, 5), ("Words Of Her Life", 185, 5), ("Without My Streets", 176, 5), ("Need Of The Evening", 190, 6),("History Of My Roses", 222, 6), ("Without My Love" , 111, 6), ("Walking And Game" , 123, 6), ("Young And Father", 197, 6), ("Finding My Traditions", 179, 7), ("Walking And Man", 229, 7), ("Hard And Time", 135, 7), ("Honey, I'm A Lone Wolf", 150, 7), ("She Thinks I Won't Stay Tonight", 166, 8), ("He Heard You're Bad For Me", 154, 8),("He Hopes We Can't Stay", 210, 8), ("Know I Know", 117, 8), ("He's Walking Away", 159, 9), ("He's Trouble", 138, 9), ("I Heard I Want To Bo Alone", 120, 9), ("I Ride Alone", 151, 9), ("Honey", 79, 10), ("You Cheated On Me", 95, 10), ("Wouldn't It Be Nice", 213, 10), ("Baby", 136, 10),("You Make Me Feel So..", 83, 10);

INSERT INTO Reproducoes (musica_id, usuario_nome_id) VALUES (36	1),
(25, 1), (23, 1), (14, 1), (15, 1), (34, 2), (24, 2),(21, 2), (39, 2), (6, 3),(3, 3), (26, 3),(2, 4), (35, 4), (27, 4), (7, 5), (12, 5), (14, 5), (1, 5), (38, 6), (29, 6), (30, 6), (22, 6), (5, 7), (4, 7), (11, 7), (39, 8), (40, 8), (32, 8), (33, 8), (16, 9), (17, 9), (8, 9), (9, 9), (20, 10), (21, 10), (12, 10), (13, 10);




