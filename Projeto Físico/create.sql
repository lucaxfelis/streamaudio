CREATE TABLE Dispositivo (
    id INT(11) PRIMARY KEY, 
    marca VARCHAR(400) NOT NULL, 
    modelo VARCHAR(400) NOT NULL, 
    imei  VARCHAR(400) NOT NULL, 
    id_usuario INT(11)
);

CREATE TABLE Artista (
    id INT(11) PRIMARY KEY, 
    nome VARCHAR(400) NOT NULL,
    id_usuario INT(11)
);

CREATE TABLE Podcaster (
    id INT(11) PRIMARY KEY, 
    nome  VARCHAR(400) NOT NULL,
    id_usuario INT(11)
);

CREATE TABLE Biblioteca (
    id INT(11) PRIMARY KEY, 
    nome  VARCHAR(400) NOT NULL,
    id_usuario INT(11)
);

CREATE TABLE Album (
    id INT(11) PRIMARY KEY, 
    nome  VARCHAR(400) NOT NULL,
    ano_lancamento  VARCHAR(400) NOT NULL,
    duracao  VARCHAR(400) NOT NULL,
    faixas  VARCHAR(400) NOT NULL,,
    id_artista INT(11),
    id_album INT(11)
);

CREATE TABLE Musica (
    id INT(11) PRIMARY KEY, 
    faixa  VARCHAR(400) NOT NULL,
    nome  VARCHAR(400) NOT NULL,
    genero1  VARCHAR(400) NOT NULL,
    genero2  VARCHAR(400) NOT NULL,
    id_album INT(11)
);

CREATE TABLE Podcast (
    id INT(11) PRIMARY KEY, 
    nome  VARCHAR(400) NOT NULL,
    duracao  VARCHAR(400) NOT NULL,
    data_lancamento  VARCHAR(400) NOT NULL,
    tema1  VARCHAR(400) NOT NULL
    tema2  VARCHAR(400) NOT NULL,
    tema3  VARCHAR(400) NOT NULL,,
    id_podcaster INT(11)
);

CREATE TABLE Playlist (
    id INT(11) PRIMARY KEY, 
    nome  VARCHAR(400) NOT NULL
)

CREATE TABLE Autor (
    id INT(11) PRIMARY KEY, 
    autor  VARCHAR(400) NOT NULL,
    id_playlist INT(11)
)

CREATE TABLE Desconto (
    id INT(11) PRIMARY KEY, 
    porcentagem  VARCHAR(400) NOT NULL
)

CREATE TABLE Audiobook (
    id INT(11) PRIMARY KEY, 
    autor  VARCHAR(400) NOT NULL,
    tema  VARCHAR(400) NOT NULL
);

CREATE TABLE Comprar (
    id INT(11) PRIMARY KEY,
    id_usuario  INT (11) NOT NULL,
    id_audiobook  INT (11) NOT NULL,
    id_desconto  INT (11) NOT NULL
);

CREATE TABLE BibliotecaUsuario (
    id INT(11) PRIMARY KEY,
    id_usuario  ID (11) NOT NULL,
    id_biblioteca  ID (11) NOT NULL,
);


CREATE TABLE Usuario (
    id INT(11) PRIMARY KEY,
    email  VARCHAR(400) NOT NULL,
    nome  VARCHAR(400) NOT NULL,
    senha  VARCHAR(400) NOT NULL,
    forma_pagamento  VARCHAR(400) NOT NULL,
    promocao  VARCHAR(400) NOT NULL,
    tipo_plano  VARCHAR(400) NOT NULL
);


CREATE TABLE Seguindo (
    id INT(11) PRIMARY KEY,
    id_usuario INT(11),
    id_seguidor INT(11)
);


CREATE TABLE AdicionaPodcaster (
    id INT(11) PRIMARY KEY,
    id_biblioteca INT(11),
    id_podcaster INT(11)
);


CREATE TABLE AdicionaArtista (
    id INT(11) PRIMARY KEY,
    id_biblioteca INT(11),
    id_artista INT(11)
);

CREATE TABLE AdicionaAlbum (
    id INT(11) PRIMARY KEY,
    id_biblioteca INT(11),
    id_album INT(11)
);

CREATE TABLE PlaylistPodcaster (
    id INT(11) PRIMARY KEY,
    id_usuario INT(11),
    id_playlist INT(11),
    id_podcaster INT(11)
);

CREATE TABLE PlaylistMusica (
    id INT(11) PRIMARY KEY,
    id_usuario INT(11),
    id_playlist INT(11),
    id_musica INT(11)
);

ALTER TABLE Artista ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id);
ALTER TABLE Podcaster ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id);
ALTER TABLE Dispositivo ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id);

ALTER TABLE Autor ADD FOREIGN KEY (id_playlist) REFERENCES Playlist (id);

ALTER TABLE Comprar ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id);
ALTER TABLE Comprar ADD FOREIGN KEY (id_audiobook) REFERENCES Audiobook (id);
ALTER TABLE Comprar ADD FOREIGN KEY (id_desconto) REFERENCES Desconto (id);

ALTER TABLE BibliotecaUsuario ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id);
ALTER TABLE BibliotecaUsuario ADD FOREIGN KEY (id_biblioteca) REFERENCES Biblioteca (id);

ALTER TABLE Artista ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id);

ALTER TABLE Album ADD FOREIGN KEY (id_artista) REFERENCES Artista (id);

ALTER TABLE Podcast ADD FOREIGN KEY (id_podcaster) REFERENCES Podcaster (id);

ALTER TABLE Musica ADD FOREIGN KEY (id_album) REFERENCES Album (id);

ALTER TABLE Seguindo ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id);
ALTER TABLE Seguindo ADD FOREIGN KEY (id_seguidor) REFERENCES Usuario (id);

ALTER TABLE AdicionaPodcaster ADD FOREIGN KEY (id_biblioteca) REFERENCES Biblioteca (id);
ALTER TABLE AdicionaPodcaster ADD FOREIGN KEY (id_podcaster) REFERENCES Podcaster (id);

ALTER TABLE AdicionaArtista ADD FOREIGN KEY (id_biblioteca) REFERENCES Biblioteca (id);
ALTER TABLE AdicionaArtista ADD FOREIGN KEY (id_artista) REFERENCES Artista (id);

ALTER TABLE AdicionaAlbum ADD FOREIGN KEY (id_biblioteca) REFERENCES Biblioteca (id);
ALTER TABLE AdicionaAlbum ADD FOREIGN KEY (id_album) REFERENCES Album (id);

ALTER TABLE PlaylistPodcaster ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id);
ALTER TABLE PlaylistPodcaster ADD FOREIGN KEY (id_playlist) REFERENCES Playlist (id);
ALTER TABLE PlaylistPodcaster ADD FOREIGN KEY (id_podcaster) REFERENCES Podcaster (id);

ALTER TABLE PlaylistMusica ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id);
ALTER TABLE PlaylistMusica ADD FOREIGN KEY (id_playlist) REFERENCES Playlist (id);
ALTER TABLE PlaylistMusica ADD FOREIGN KEY (id_musica) REFERENCES Musica (id);
