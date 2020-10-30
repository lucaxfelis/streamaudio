##Entidades##

INSERT INTO Usuario VALUES
(DEFAULT,'sffb@cin.ufpe.br','Samuel','1234','cartao','30%','premium'),
(DEFAULT,'gvo@cin.ufpe.br','Gabriel','4312','cartao','20%','familia'),
(DEFAULT,'lfa3@cin.ufpe.br','Lucas','0987','boleto','40%','universitario'),
(DEFAULT,'adddf@cin.ufpe.br','Alisson','7809','cartao','10%','comum')
(DEFAULT,'juju@yahoo.br','Julia','1234','cartao','25%','comum')
(DEFAULT,'geraldo2020@gmail.com','Geraldo','1234','boleto','50%','familia')
(DEFAULT,'juru@hotmail.com','Jurubeba','1234','giftCard','5%','familia')
(DEFAULT,'carlinhos@outlook.com','Carlos','1234','boleto','30%','universitario')
(DEFAULT,'fred@teste.com','Godofredo','1234','cartao','20%','comum')
(DEFAULT,'regirossi@brega.com','Reginaldo','1234','cartao','15%','premium')
(DEFAULT,'rober@yahoo.com','Roberval','1234','giftCard','20%','premium')
(DEFAULT,'line@outlook.com','Aline','1234','boleto','5%','universitario')
(DEFAULT,'natinha@teste.com','Renata','1234','cartao','15%','comum')
(DEFAULT,'jes2020@hotmail.com','Jessica','1234','cartao','25%','universitario')
(DEFAULT,'fefe@gmail.com','Fernanda','1234','cartao','30%','premium'),
(DEFAULT,'mamonasassassinas@gmail.com','Mamonas','2020','cartao','10%','artista'),
(DEFAULT,'legiaourbana@hotmail.com','Legiao Urbana','2019','cartao','10%','artista'),
(DEFAULT,'alceu@yahoo.com','Alceu Valença','cartao','2018','10%','artista'),
(DEFAULT,'djavan@outlook.com','Djavan','2017','cartao','10%','artista'),
(DEFAULT,'alcione@gmail.com','Alcione','2016','cartao','10%','artista'),
(DEFAULT,'nerdcast@gmail.com','NerdCast','2015','cartao','10%','podcaster'),
(DEFAULT,'cafebrasil@outlook.com','Café Brasil','2014','cartao','10%','podcaster'),
(DEFAULT,'loopmatinal@yahoo.com','Loop Matinal','2013','cartao','10%','podcaster'),
(DEFAULT,'ge@globo.com','Globo esporte','2012','cartao','10%','podcaster'),
(DEFAULT,'99vidas@gmail.com','99 vidas','2011','cartao','10%','podcaster');
#usuário(id,email,nome,senha,forma_pagamento,promocao,tipo_plano)


INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) 
VALUES (DEFAULT, 'motorola', 'moto_g6', '1234', '1'),
(DEFAULT, 'samsung', 's_10', '4321', '2'),
(DEFAULT, 'iphone', 'iphone_X', '9101', '3'),
(DEFAULT, 'asus', 'zenfone_live', '0987', '4'),
(DEFAULT, 'iphone', 'iphone_8', '7890', '5'),
(DEFAULT, 'motorola', 'moto_z3', '7654', '6'),
(DEFAULT, 'samsung', 'galaxy_a60', '4567', '7'),
(DEFAULT, 'lg', 'k_10', '2020', '8'),
(DEFAULT, 'motorola', 'moto_fusion', '2019', '9'),
(DEFAULT, 'iphone', 'iphone_6', '2018', '10'),
(DEFAULT, 'asus', 'zenfone_live', '2017', '11'),
(DEFAULT, 'xiaomi', 'note_8', '2016', '12'),
(DEFAULT, 'xiaomi', 'note_9s', '2015', '13'),
(DEFAULT, 'asus', 'moto_g6', '2014', '14'),
(DEFAULT, 'samsung', 's_20', '2013', '15');
(DEFAULT,'iphone', 'iphone_11','2011','16'),
(DEFAULT,'samsung', 'galaxy_s9','2010','17'),
(DEFAULT,'samsung', 'galaxy_s20','2009','18'),
(DEFAULT,'samsung', 'galaxy_a70','2008','19'),
(DEFAULT,'motorola', 'moto_g9','2007','20'),
(DEFAULT,'motorola', 'moto_z2','2006','21'),
(DEFAULT,'samsung', 'note_9','2005','22'),
(DEFAULT,'iphone', 'iphone_7','2004','23'),
(DEFAULT,'iphone', 'iphone_11','2003','24'),
(DEFAULT,'iphone', 'iphone_12','2002','25');
#dispositivo(id,marca,imei) ->id usuario

INSERT INTO artista(id,nome,id_usuario)
VALUES 
(DEFAULT,'Mamonas Assassinas','16'),
(DEFAULT,'Legião Urbana','17'),
(DEFAULT,'Alceu Valenca','18'),
(DEFAULT,'Djavan','19'),
(DEFAULT,'Alcione','20');
#artista(id,nome) id-> usuario

INSERT INTO podcaster(id,nome,id_usuario)
VALUES 
(DEFAULT,'NerdCast','21'),
(DEFAULT,'Café Brasil','22'),
(DEFAULT,'Loop Matinal','23'),
(DEFAULT,'Globo Esporte','24'),
(DEFAULT,'99 Vidas','25');
#podcaster (id, nome) id -> usuario

INSERT INTO podcast(id,nome,duracao,data_lancamento,tema1,id_podcaster)
VALUES(DEFAULT,'Naruto','41:23','2018-10-29','Anime','1'),
(DEFAULT,'História vs. Ficcao','32:53','2019-04-15','Entretenimento','1'),
(DEFAULT,'Liberdade nao tem preco','05:32','2020-05-22','Entretenimento','2'),
(DEFAULT,'Motivo','25:11','2020-08-30','Entretenimento','2'),
(DEFAULT,'segunda-feira 10/08/2020','10:28','2020-08-10','Noticias','3'),
(DEFAULT,'terca-ferira 11/08/2020','09:55','2020-08-11','Noticias','3'),
(DEFAULT,'O flamengo de Jorge Jesus','44:05','2019-07-21','Futebol','4'),
(DEFAULT,'Renato gaucho o melhor tecnico?','37:49','2019-05-09','Futebol','4'),
(DEFAULT,'Grand Theft Auto V (GTA5)','120:19','2019-12-10','jogos','5'),
(DEFAULT,'Call of duty Warfare Advacend 2','69:38','2018-05-15','jogos','5');
#podcast(id,nome,duracao,data_lancamento,tema,id_podcaster)


INSERT INTO Album(id,nome,ano_lancamento,duracao,faixas,id_artista,id_album)
VALUES(DEFAULT,'Mamonas Assassinas - Pelados Em Santos','2014','45:00','16','1','0*'),#
(DEFAULT,'As Quatro Estacoes','2004','76:00','16','2','0*'),
(DEFAULT,'Marco Zero (Ao Vivo)','2006','55:00','14','3','0*'),
(DEFAULT,'Ária - Ao vivo','2011','66:00','16','4','0*'),
(DEFAULT,'O Pagode Do Marrom','2004','46:00','14','5','0*');
#Album (id,nome,ano_lancamento,duracao,faixas,id_artista,id_album)


INSERT INTO musica (id,faixa,nome,duracao,genero,id_album)
VALUES(DEFAULT,'1','Pelados Em Santos','03:23','comedy rock','1'),
(DEFAULT,'2','Vira-Vira','02:23','comedy rock','1'),
(DEFAULT,'3','Joelho','02:26','comedy rock','1'),
(DEFAULT,'4','Robocop Gay','02:59','comedy rock','1'),
(DEFAULT,'5','Jumento Celestino','02:37','comedy rock','1'),
(DEFAULT,'6','Chopis Centis','02:47','comedy rock','1'),
(DEFAULT,'7','Onon Onon','03:05','comedy rock','1'),
(DEFAULT,'8','Uma arlinda Mulher','03:19','comedy rock','1'),
(DEFAULT,'9','1406','04:07','comedy rock','1'),
(DEFAULT,'10','Sabao Cra-cra','00:43','comedy rock','1'),
(DEFAULT,'11','Mundo Animal','03:55','comedy rock','1'),
(DEFAULT,'12','Debil Mental','03:06','comedy rock','1'),
(DEFAULT,'13','Bois Dont Cry','02:57','comedy rock','1'),
(DEFAULT,'14','La vem o alemao','03:22','comedy rock','1'),
(DEFAULT,'15','Sabado de Sol','01:01','comedy rock','1'),
(DEFAULT,'16','Desnudos En cancun','03:30','comedy rock','1'),
#musicas de mamonas

(DEFAULT,'1','Plantas Embaixo Do Aquario','02:54','rock alternativo','2'),
(DEFAULT,'2','Musica Urbana 2','02:40','rock alternativo','2'),
(DEFAULT,'3','Metropole','02:49','rock alternativo','2'),
(DEFAULT,'4','Esperando por mim','04:21','rock alternativo','2'),
#musicas legiao 

(DEFAULT,'1','Voltei Recife','03:40','frevo','3'),
(DEFAULT,'2','Vampira','03:18','frevo','3'),
(DEFAULT,'3','Caia por cima de mim','03:35','frevo','3'),
(DEFAULT,'4','Me segura senao eu caio','02:51','frevo','3'),
(DEFAULT,'5','Embolada do tempo','04:34','frevo','3'),
(DEFAULT,'6','Dona de 7 colinas','04:14','frevo','3'),
(DEFAULT,'7','Nas asas de um passarinho','05:33','frevo','3'),
(DEFAULT,'8','Beijando a Flora','03:34','frevo','3'),
(DEFAULT,'9','Pirata Jose','03:17','frevo','3'),
(DEFAULT,'10','Carnaval Na Marim','03:34','frevo','3'),
(DEFAULT,'11','Vassourinhas aquatica','04:46','frevo','3'),
(DEFAULT,'12','Pot-Pourri Cirandas: Luar de prata','04:46','frevo','3'),
(DEFAULT,'13','Maracatu','04:30','maracatu','3'),
(DEFAULT,'14','Bom demais','03:04','frevo','3'),
#musicas alceu valença

(DEFAULT,'1','Seduzir','04:16','MPB','4'),
(DEFAULT,'2','Eu te devoro','05:08','MPB','4'),
(DEFAULT,'3','Lambada de serpente','03:49','MPB','4'),
(DEFAULT,'4','Sabes Mentir','02:58','MPB','4'),
(DEFAULT,'5','Oraçao Ao Tempo','04:04','MPB','4'),
(DEFAULT,'6','Disfarça E Chora','03:07','MPB','4'),
(DEFAULT,'7','Brigas Nunca Mais','02:01','MPB','4'),
(DEFAULT,'8','FLy Me to the Moon','02:55','MPB','4'),
(DEFAULT,'9','La Noche','04:27','MPB','4'),
(DEFAULT,'10','Palco','05:33','MPB','4'),
(DEFAULT,'11','Transe','02:58','MPB','4'),
(DEFAULT,'12','Flor De Lis','04:02','MPB','4'),
(DEFAULT,'13','Linha Do Equador','06:18','MPB','4'),
(DEFAULT,'14','Samurai','04:55','MPB','4'),
(DEFAULT,'15','Sina','04:25','MPB','4'),
(DEFAULT,'16','Lilás','05:26','MPB','4'),
#musicas Djavan

(DEFAULT,'1','Questao de Fe','02:59','samba','5'),
(DEFAULT,'2','Noite Pelo Dia','02:40','samba','5'),
(DEFAULT,'3','Coraçao Brasileiro','03:58','samba','5'),
(DEFAULT,'4','Ta que Ta','03:38','samba','5'),
(DEFAULT,'5','Vizinha Faladeira','02:51','samba','5'),
(DEFAULT,'6','Dona Zica e Dona Neuma','03:34','samba','5'),
(DEFAULT,'7','Mutirao de Amor','03:25','samba','5'),
(DEFAULT,'8','Na Paz de Deus','03:13','samba','5'),
(DEFAULT,'9','A festa e da Massa','02:34','samba','5'),
(DEFAULT,'10','Na hora que o Bicho Come','03:32','samba','5'),
(DEFAULT,'11','Gente Fina, Mas...','03:53','samba','5'),
(DEFAULT,'12','Mar de carinhos','03:46','samba','5'),
(DEFAULT,'13','Na Ginga Do Amor','03:19','samba','5'),
(DEFAULT,'14','Faz Corpo Mole','03:04','samba','5');
#musicas alcione

#musica(id,faixa,nome,duracao,genero,id_album)



INSERT INTO playlist(id,nome)
VALUES(DEFAULT,'As melhores'),
(DEFAULT,'Pra relaxar'),
(DEFAULT,'Top demais'),
(DEFAULT,'Sambinha'),
(DEFAULT,'Pra relaxar');
#playlist(id,nome)

INSERT INTO autor(id,autor,id_playlist)
VALUES(DEFAULT,'Samuel','1'),
(DEFAULT,'Lucas','2'),
(DEFAULT,'Gabriel','3'),
(DEFAULT,'Alisson','4'),
(DEFAULT,'Julia','5');
#autor(id,autor,id_playlist) 


INSERT INTO Biblioteca(id,nome,id_usuario)
VALUES(DEFAULT,'Samuel','1'),
(DEFAULT,'Gabriel','2'),
(DEFAULT,'Lucas','3'),
(DEFAULT,'Alisson','4'),
(DEFAULT,'Julia','5'),
(DEFAULT,'Geraldo','6'),
(DEFAULT,'Jurubeba','7'),
(DEFAULT,'Carlos','8'),
(DEFAULT,'Godofredo','9'),
(DEFAULT,'Reginaldo','10'),
(DEFAULT,'Roberval','11'),
(DEFAULT,'Aline','12'),
(DEFAULT,'Renata','13'),
(DEFAULT,'Jessica','14'),
(DEFAULT,'Fernanda','15'),
(DEFAULT,'Mamonas','16'),
(DEFAULT,'Legiao Urbana','17'),
(DEFAULT,'Alceu Valença','18'),
(DEFAULT,'Djavan','19'),
(DEFAULT,'Alcione','20'),
(DEFAULT,'NerdCast','21'),
(DEFAULT,'Café Brasil','22'),
(DEFAULT,'Loop Matinal','23'),
(DEFAULT,'Globo Esporte','24'),
(DEFAULT,'99 vidas','25');
#biblioteca(id,nome,id_usuario)


INSERT INTO Desconto(id,porcentagem)
VALUES (DEFAULT,'30%'),
(DEFAULT,'20%');
#desconto(id, porcentagem)

INSERT INTO Audiobook(id,titulo,tema,autor)
VALUES (DEFAULT,'Como Fazer uma animaçao?','Animaçao','Livraria Cultura'),
(DEFAULT,'Originais','Entretenimento','Adam Grant'),
(DEFAULT,'Como treinar pra ser um jogador?','Futebol','EsporteInterativo');
#audiobook(id, tema, autor)

##Entidade Asscociativa##

INSERT INTO Comprar(id,id_usuario,id_audiobook,id_desconto)
VALUES (DEFAULT,'5','1','1'),
(DEFAULT,'7','3','1'),
(DEFAULT,'12','2','2'),
(DEFAULT,'15','3','1'),
(DEFAULT,'9','1','2');
#comprar(id,id_usuario,id_audiobook,id_desconto)

##Relacionamentos##

INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca)
VALUES(DEFAULT,'1','1'),
(DEFAULT,'2','2'),
(DEFAULT,'3','3'),
(DEFAULT,'4','4'),
(DEFAULT,'5','5'),
(DEFAULT,'6','6'),
(DEFAULT,'7','7'),
(DEFAULT,'8','8'),
(DEFAULT,'9','9'),
(DEFAULT,'10','10'),
(DEFAULT,'11','11'),
(DEFAULT,'12','12'),
(DEFAULT,'13','13'),
(DEFAULT,'14','14'),
(DEFAULT,'15','15'),
(DEFAULT,'16','16'),
(DEFAULT,'17','17'),
(DEFAULT,'18','18'),
(DEFAULT,'19','19'),
(DEFAULT,'20','20'),
(DEFAULT,'21','21'),
(DEFAULT,'22','22'),
(DEFAULT,'23','23'),
(DEFAULT,'24','24'),
(DEFAULT,'25','25');
#bibliotecaUsuario(id,id_usuario,id_biblioteca)



INSERT INTO Seguindo(id,id_usuario,id_seguidor)
VALUES(DEFAULT,'1','2'),
(DEFAULT,'2','1'),
(DEFAULT,'5','10'),
(DEFAULT,'5','1'),
(DEFAULT,'3','25'),
(DEFAULT,'1','12'),
(DEFAULT,'4','11'),
(DEFAULT,'15','16'),
(DEFAULT,'12','1'),
(DEFAULT,'11','4'),
(DEFAULT,'7','12'),
(DEFAULT,'12','7'),
(DEFAULT,'13','4'),
(DEFAULT,'13','5'),
(DEFAULT,'5','13'),
(DEFAULT,'6','1'),
(DEFAULT,'9','4'),
(DEFAULT,'22','20'),
(DEFAULT,'19','24'),
(DEFAULT,'24','19'),
(DEFAULT,'20','22');
#seguindo(id,id_usuario,id_seguidor)


INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster)
VALUES(DEFAULT,'1','1'),
(DEFAULT,'2','3'),
(DEFAULT,'3','5'),
(DEFAULT,'4','2'),
(DEFAULT,'5','1'),
(DEFAULT,'6','3'),
(DEFAULT,'7','4'),
(DEFAULT,'12','4'),
(DEFAULT,'13','2'),
(DEFAULT,'15','1'),
(DEFAULT,'9','4');
#adicionaPodcaster(id,id_biblioteca, id_podcaster)

INSERT INTO adicionaArtista(id,id_biblioteca,id_artista)
VALUES(DEFAULT,'10','1'),
(DEFAULT,'8','2'),
(DEFAULT,'9','3'),
(DEFAULT,'11','4'),
(DEFAULT,'12','5'),
(DEFAULT,'1','1'),
(DEFAULT,'2','2'),
(DEFAULT,'3','3'),
(DEFAULT,'4','3'),
(DEFAULT,'5','2'),
(DEFAULT,'6','5'),
(DEFAULT,'11','5'),
(DEFAULT,'15','1');
#adicionaArtista(id, id_biblioteca, id_artista)

INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album)
VALUES(DEFAULT,'1','4'),
(DEFAULT,'2','3'),
(DEFAULT,'3','2'),
(DEFAULT,'4','1'),
(DEFAULT,'5','5'),
(DEFAULT,'6','5'),
(DEFAULT,'7','2'),
(DEFAULT,'8','1'),
(DEFAULT,'9','2'),
(DEFAULT,'10','4'),
(DEFAULT,'11','4'),
(DEFAULT,'12','3'),
(DEFAULT,'13','2'),
(DEFAULT,'14','1'),
(DEFAULT,'15','5'),
(DEFAULT,'1','2'),
(DEFAULT,'3','5'),
(DEFAULT,'5','1'),
(DEFAULT,'9','3'),
(DEFAULT,'12','1');
#adicionaAlbum(id,id_biblioteca,id_album)

INSERT INTO playlistPodcaster(id,id_usuario,id_playlist,id_podcaster)
VALUES(DEFAULT,'1','3','2'),
(DEFAULT,'1','3','4'),
(DEFAULT,'4','3','1'),
(DEFAULT,'1','1','5'),
(DEFAULT,'4','1','2'),
(DEFAULT,'1','1','1');
#playlistPodcaster(id,id_usuario,id_playlist,id_podcaster)

INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica)
VALUES(DEFAULT,'1','1','1'),
(DEFAULT,'1','1','20'),
(DEFAULT,'1','1','55'),
(DEFAULT,'1','1','36'),
(DEFAULT,'1','1','17'),
(DEFAULT,'2','2','41'),
(DEFAULT,'2','2','28'),
(DEFAULT,'2','2','15'),
(DEFAULT,'2','2','6'),
(DEFAULT,'2','2','4'),
(DEFAULT,'3','3','21'),
(DEFAULT,'3','3','18'),
(DEFAULT,'3','3','6'),
(DEFAULT,'3','3','16'),
(DEFAULT,'3','3','8'),
(DEFAULT,'4','4','25'),
(DEFAULT,'4','4','61'),
(DEFAULT,'4','4','49'),
(DEFAULT,'4','4','1'),
(DEFAULT,'4','4','37'),
(DEFAULT,'5','5','44'),
(DEFAULT,'5','5','55'),
(DEFAULT,'5','5','30'),
(DEFAULT,'5','5','59'),
(DEFAULT,'5','5','58');
#playslistMusica(id,id_usuario,id_playlist,id_musica)




