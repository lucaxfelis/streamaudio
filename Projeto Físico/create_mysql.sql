create database streamaudio
default character set utf8
default collate utf8_general_ci;

use streamaudio;

CREATE TABLE Dispositivo (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    marca VARCHAR(400) NOT NULL, 
    modelo VARCHAR(400) NOT NULL, 
    imei  VARCHAR(400) NOT NULL, 
    id_usuario INT
);

CREATE TABLE Artista (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(400) NOT NULL,
    id_usuario INT
);

CREATE TABLE Podcaster (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome  VARCHAR(400) NOT NULL,
    id_usuario INT
);

CREATE TABLE Biblioteca (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome  VARCHAR(400) NOT NULL,
    id_usuario INT
);

CREATE TABLE Album (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome  VARCHAR(400) NOT NULL,
    ano_lancamento  VARCHAR(400) NOT NULL,
    duracao  VARCHAR(400) NOT NULL,
    faixas  VARCHAR(400) NOT NULL,
    id_artista INT,
);

CREATE TABLE Musica (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    faixa  VARCHAR(400) NOT NULL,
    nome  VARCHAR(400) NOT NULL,
    duracao VARCHAR(400) NOT NULL,
    genero1  VARCHAR(400) NOT NULL,
    genero2  VARCHAR(400) NOT NULL,
    id_album INT
);

CREATE TABLE Podcast (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome  VARCHAR(400) NOT NULL,
    duracao  VARCHAR(400) NOT NULL,
    data_lancamento  VARCHAR(400) NOT NULL,
    tema1  VARCHAR(400) NOT NULL,
    tema2  VARCHAR(400) NOT NULL,
    tema3  VARCHAR(400) NOT NULL,
    id_podcaster INT
);

CREATE TABLE Playlist (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nome  VARCHAR(400) NOT NULL
);

CREATE TABLE Autor (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    autor  VARCHAR(400) NOT NULL,
    id_playlist INT
);

CREATE TABLE Desconto (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    porcentagem  VARCHAR(400) NOT NULL
);

CREATE TABLE Audiobook (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(400) NOT NULL, 
    autor  VARCHAR(400) NOT NULL,
    tema  VARCHAR(400) NOT NULL
);

CREATE TABLE Comprar (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario  INT NOT NULL,
    id_audiobook  INT NOT NULL,
    id_desconto  INT NOT NULL
);

CREATE TABLE BibliotecaUsuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario  INT NOT NULL,
    id_biblioteca  INT NOT NULL
);


CREATE TABLE Usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email  VARCHAR(400) NOT NULL,
    nome  VARCHAR(400) NOT NULL,
    senha  VARCHAR(400) NOT NULL,
    forma_pagamento  VARCHAR(400) NOT NULL,
    promocao  VARCHAR(400) NOT NULL,
    tipo_plano  VARCHAR(400) NOT NULL
);


CREATE TABLE Seguindo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_seguidor INT
);


CREATE TABLE AdicionaPodcaster (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_biblioteca INT,
    id_podcaster INT
);


CREATE TABLE AdicionaArtista (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_biblioteca INT,
    id_artista INT
);

CREATE TABLE AdicionaAlbum (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_biblioteca INT,
    id_album INT
);

CREATE TABLE PlaylistPodcaster (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_playlist INT,
    id_podcaster INT
);

CREATE TABLE PlaylistMusica (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_playlist INT,
    id_musica INT
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