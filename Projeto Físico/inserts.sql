/*Entidades*/

INSERT INTO Usuario VALUES (DEFAULT,'sffb@cin.ufpe.br','Samuel','1234','cartao','30%','premium');
INSERT INTO Usuario VALUES (DEFAULT,'gvo@cin.ufpe.br','Gabriel','4312','cartao','20%','familia');
INSERT INTO Usuario VALUES (DEFAULT,'lfa3@cin.ufpe.br','Lucas','0987','boleto','40%','universitario');
INSERT INTO Usuario VALUES (DEFAULT,'adddf@cin.ufpe.br','Alisson','7809','cartao','10%','comum');
INSERT INTO Usuario VALUES (DEFAULT,'juju@yahoo.br','Julia','1234','cartao','25%','comum');
INSERT INTO Usuario VALUES (DEFAULT,'geraldo2020@gmail.com','Geraldo','1234','boleto','50%','familia');
INSERT INTO Usuario VALUES (DEFAULT,'juru@hotmail.com','Jurubeba','1234','giftCard','5%','familia');
INSERT INTO Usuario VALUES (DEFAULT,'carlinhos@outlook.com','Carlos','1234','boleto','30%','universitario');
INSERT INTO Usuario VALUES (DEFAULT,'fred@teste.com','Godofredo','1234','cartao','20%','comum');
INSERT INTO Usuario VALUES (DEFAULT,'regirossi@brega.com','Reginaldo','1234','cartao','15%','premium');
INSERT INTO Usuario VALUES (DEFAULT,'rober@yahoo.com','Roberval','1234','giftCard','20%','premium');
INSERT INTO Usuario VALUES (DEFAULT,'line@outlook.com','Aline','1234','boleto','5%','universitario');
INSERT INTO Usuario VALUES (DEFAULT,'natinha@teste.com','Renata','1234','cartao','15%','comum');
INSERT INTO Usuario VALUES (DEFAULT,'jes2020@hotmail.com','Jessica','1234','cartao','25%','universitario');
INSERT INTO Usuario VALUES (DEFAULT,'fefe@gmail.com','Fernanda','1234','cartao','30%','premium');
INSERT INTO Usuario VALUES (DEFAULT,'mamonasassassinas@gmail.com','Mamonas','2020','cartao','10%','artista');
INSERT INTO Usuario VALUES (DEFAULT,'legiaourbana@hotmail.com','Legiao Urbana','2019','cartao','10%','artista');
INSERT INTO Usuario VALUES (DEFAULT,'alceu@yahoo.com','Alceu Valença','cartao','2018','10%','artista');
INSERT INTO Usuario VALUES (DEFAULT,'djavan@outlook.com','Djavan','2017','cartao','10%','artista');
INSERT INTO Usuario VALUES (DEFAULT,'alcione@gmail.com','Alcione','2016','cartao','10%','artista');
INSERT INTO Usuario VALUES (DEFAULT,'nerdcast@gmail.com','NerdCast','2015','cartao','10%','podcaster');
INSERT INTO Usuario VALUES (DEFAULT,'cafebrasil@outlook.com','Café Brasil','2014','cartao','10%','podcaster');
INSERT INTO Usuario VALUES (DEFAULT,'loopmatinal@yahoo.com','Loop Matinal','2013','cartao','10%','podcaster');
INSERT INTO Usuario VALUES (DEFAULT,'ge@globo.com','Globo esporte','2012','cartao','10%','podcaster');
INSERT INTO Usuario VALUES (DEFAULT,'99vidas@gmail.com','99 vidas','2011','cartao','10%','podcaster');
/* usuário(id,email,nome,senha,forma_pagamento,promocao,tipo_plano) */


INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'motorola', 'moto_g6', '1234', '1');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'samsung', 's_10', '4321', '2');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'iphone', 'iphone_X', '9101', '3');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'asus', 'zenfone_live', '0987', '4');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'iphone', 'iphone_8', '7890', '5');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'motorola', 'moto_z3', '7654', '6');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'samsung', 'galaxy_a60', '4567', '7');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'lg', 'k_10', '2020', '8');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'motorola', 'moto_fusion', '2019', '9');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'iphone', 'iphone_6', '2018', '10');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'asus', 'zenfone_live', '2017', '11');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'xiaomi', 'note_8', '2016', '12');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'xiaomi', 'note_9s', '2015', '13');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'asus', 'moto_g6', '2014', '14');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT, 'samsung', 's_20', '2013', '15');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT,'iphone', 'iphone_11','2011','16');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT,'samsung', 'galaxy_s9','2010','17');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT,'samsung', 'galaxy_s20','2009','18');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT,'samsung', 'galaxy_a70','2008','19');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT,'motorola', 'moto_g9','2007','20');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT,'motorola', 'moto_z2','2006','21');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT,'samsung', 'note_9','2005','22');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT,'iphone', 'iphone_7','2004','23');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT,'iphone', 'iphone_11','2003','24');
INSERT INTO Dispositivo (Id,marca,modelo,imei, id_usuario) VALUES (DEFAULT,'iphone', 'iphone_12','2002','25');
/* dispositivo(id,marca,imei) ->id usuario */

INSERT INTO artista(id,nome,id_usuario) VALUES (DEFAULT,'Mamonas Assassinas','16');
INSERT INTO artista(id,nome,id_usuario) VALUES (DEFAULT,'Legião Urbana','17');
INSERT INTO artista(id,nome,id_usuario) VALUES (DEFAULT,'Alceu Valenca','18');
INSERT INTO artista(id,nome,id_usuario) VALUES (DEFAULT,'Djavan','19');
INSERT INTO artista(id,nome,id_usuario) VALUES (DEFAULT,'Alcione','20');
/* artista(id,nome) id-> usuario */

INSERT INTO podcaster(id,nome,id_usuario) VALUES (DEFAULT,'NerdCast','21');
INSERT INTO podcaster(id,nome,id_usuario) VALUES (DEFAULT,'Café Brasil','22');
INSERT INTO podcaster(id,nome,id_usuario) VALUES (DEFAULT,'Loop Matinal','23');
INSERT INTO podcaster(id,nome,id_usuario) VALUES (DEFAULT,'Globo Esporte','24');
INSERT INTO podcaster(id,nome,id_usuario) VALUES (DEFAULT,'99 Vidas','25');
/* podcaster (id, nome) id -> usuario */

INSERT INTO podcast(id,nome,duracao,data_lancamento,tema1,id_podcaster) VALUES (DEFAULT,'Naruto','41:23','2018-10-29','Anime','1');
INSERT INTO podcast(id,nome,duracao,data_lancamento,tema1,id_podcaster) VALUES (DEFAULT,'História vs. Ficcao','32:53','2019-04-15','Entretenimento','1');
INSERT INTO podcast(id,nome,duracao,data_lancamento,tema1,id_podcaster) VALUES (DEFAULT,'Liberdade nao tem preco','05:32','2020-05-22','Entretenimento','2');
INSERT INTO podcast(id,nome,duracao,data_lancamento,tema1,id_podcaster) VALUES (DEFAULT,'Motivo','25:11','2020-08-30','Entretenimento','2');
INSERT INTO podcast(id,nome,duracao,data_lancamento,tema1,id_podcaster) VALUES (DEFAULT,'segunda-feira 10/08/2020','10:28','2020-08-10','Noticias','3');
INSERT INTO podcast(id,nome,duracao,data_lancamento,tema1,id_podcaster) VALUES (DEFAULT,'terca-ferira 11/08/2020','09:55','2020-08-11','Noticias','3');
INSERT INTO podcast(id,nome,duracao,data_lancamento,tema1,id_podcaster) VALUES (DEFAULT,'O flamengo de Jorge Jesus','44:05','2019-07-21','Futebol','4');
INSERT INTO podcast(id,nome,duracao,data_lancamento,tema1,id_podcaster) VALUES (DEFAULT,'Renato gaucho o melhor tecnico?','37:49','2019-05-09','Futebol','4');
INSERT INTO podcast(id,nome,duracao,data_lancamento,tema1,id_podcaster) VALUES (DEFAULT,'Grand Theft Auto V (GTA5)','120:19','2019-12-10','jogos','5');
INSERT INTO podcast(id,nome,duracao,data_lancamento,tema1,id_podcaster) VALUES (DEFAULT,'Call of duty Warfare Advacend 2','69:38','2018-05-15','jogos','5');
/* podcast(id,nome,duracao,data_lancamento,tema,id_podcaster) */


INSERT INTO Album(id,nome,ano_lancamento,duracao,faixas,id_artista) VALUES (DEFAULT,'Mamonas Assassinas - Pelados Em Santos','2014','45:00','16','1');
INSERT INTO Album(id,nome,ano_lancamento,duracao,faixas,id_artista) VALUES (DEFAULT,'As Quatro Estacoes','2004','76:00','16','2');
INSERT INTO Album(id,nome,ano_lancamento,duracao,faixas,id_artista) VALUES (DEFAULT,'Marco Zero (Ao Vivo)','2006','55:00','14','3');
INSERT INTO Album(id,nome,ano_lancamento,duracao,faixas,id_artista) VALUES (DEFAULT,'Ária - Ao vivo','2011','66:00','16','4');
INSERT INTO Album(id,nome,ano_lancamento,duracao,faixas,id_artista) VALUES (DEFAULT,'O Pagode Do Marrom','2004','46:00','14','5');
/* Album (id,nome,ano_lancamento,duracao,faixas,id_artista,id_album) */


INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'1','Pelados Em Santos','03:23','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'2','Vira-Vira','02:23','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'3','Joelho','02:26','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'4','Robocop Gay','02:59','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'5','Jumento Celestino','02:37','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'6','Chopis Centis','02:47','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'7','Onon Onon','03:05','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'8','Uma arlinda Mulher','03:19','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'9','1406','04:07','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'10','Sabao Cra-cra','00:43','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'11','Mundo Animal','03:55','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'12','Debil Mental','03:06','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'13','Bois Dont Cry','02:57','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'14','La vem o alemao','03:22','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'15','Sabado de Sol','01:01','comedy rock','1');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'16','Desnudos En cancun','03:30','comedy rock','1');
/* musicas de mamonas */

INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'1','Plantas Embaixo Do Aquario','02:54','rock alternativo','2');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'2','Musica Urbana 2','02:40','rock alternativo','2');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'3','Metropole','02:49','rock alternativo','2');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'4','Esperando por mim','04:21','rock alternativo','2');
/* musicas legiao */

INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'1','Voltei Recife','03:40','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'2','Vampira','03:18','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'3','Caia por cima de mim','03:35','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'4','Me segura senao eu caio','02:51','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'5','Embolada do tempo','04:34','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'6','Dona de 7 colinas','04:14','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'7','Nas asas de um passarinho','05:33','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'8','Beijando a Flora','03:34','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'9','Pirata Jose','03:17','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'10','Carnaval Na Marim','03:34','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'11','Vassourinhas aquatica','04:46','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'12','Pot-Pourri Cirandas: Luar de prata','04:46','frevo','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'13','Maracatu','04:30','maracatu','3');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES  (DEFAULT,'14','Bom demais','03:04','frevo','3');
/* musicas alceu valença */

INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'1','Seduzir','04:16','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'2','Eu te devoro','05:08','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'3','Lambada de serpente','03:49','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'4','Sabes Mentir','02:58','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'5','Oraçao Ao Tempo','04:04','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'6','Disfarça E Chora','03:07','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'7','Brigas Nunca Mais','02:01','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'8','FLy Me to the Moon','02:55','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'9','La Noche','04:27','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'10','Palco','05:33','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'11','Transe','02:58','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'12','Flor De Lis','04:02','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'13','Linha Do Equador','06:18','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'14','Samurai','04:55','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'15','Sina','04:25','MPB','4');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'16','Lilás','05:26','MPB','4');
/* musicas Djavan */

INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'1','Questao de Fe','02:59','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'2','Noite Pelo Dia','02:40','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'3','Coraçao Brasileiro','03:58','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'4','Ta que Ta','03:38','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'5','Vizinha Faladeira','02:51','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'6','Dona Zica e Dona Neuma','03:34','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'7','Mutirao de Amor','03:25','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'8','Na Paz de Deus','03:13','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'9','A festa e da Massa','02:34','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'10','Na hora que o Bicho Come','03:32','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'11','Gente Fina, Mas...','03:53','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'12','Mar de carinhos','03:46','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'13','Na Ginga Do Amor','03:19','samba','5');
INSERT INTO musica (id,faixa,nome,duracao,genero1,id_album) VALUES (DEFAULT,'14','Faz Corpo Mole','03:04','samba','5');
/* musicas alcione */

/* musica(id,faixa,nome,duracao,genero1,id_album) */



INSERT INTO playlist(id,nome) VALUES (DEFAULT,'As melhores');
INSERT INTO playlist(id,nome) VALUES (DEFAULT,'Pra relaxar');
INSERT INTO playlist(id,nome) VALUES (DEFAULT,'Top demais');
INSERT INTO playlist(id,nome) VALUES (DEFAULT,'Sambinha');
INSERT INTO playlist(id,nome) VALUES (DEFAULT,'Pra relaxar');
/* playlist(id,nome) */

INSERT INTO autor(id,autor,id_playlist) VALUES (DEFAULT,'Samuel','1');
INSERT INTO autor(id,autor,id_playlist) VALUES (DEFAULT,'Lucas','2');
INSERT INTO autor(id,autor,id_playlist) VALUES (DEFAULT,'Gabriel','3');
INSERT INTO autor(id,autor,id_playlist) VALUES (DEFAULT,'Alisson','4');
INSERT INTO autor(id,autor,id_playlist) VALUES (DEFAULT,'Julia','5');
/* autor(id,autor,id_playlist) */


INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Samuel','1');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Gabriel','2');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Lucas','3');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Alisson','4');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Julia','5');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Geraldo','6');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Jurubeba','7');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Carlos','8');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Godofredo','9');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Reginaldo','10');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Roberval','11');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Aline','12');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Renata','13');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Jessica','14');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Fernanda','15');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Mamonas','16');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Legiao Urbana','17');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Alceu Valença','18');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Djavan','19');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Alcione','20');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'NerdCast','21');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Café Brasil','22');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Loop Matinal','23');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'Globo Esporte','24');
INSERT INTO Biblioteca(id,nome,id_usuario) VALUES (DEFAULT,'99 vidas','25');
/* biblioteca(id,nome,id_usuario) */


INSERT INTO Desconto(id,porcentagem) VALUES (DEFAULT,'30%');
INSERT INTO Desconto(id,porcentagem) VALUES (DEFAULT,'20%');
/* desconto(id, porcentagem) */

INSERT INTO Audiobook(id,titulo,tema,autor) VALUES (DEFAULT,'Como Fazer uma animaçao?','Animaçao','Livraria Cultura');
INSERT INTO Audiobook(id,titulo,tema,autor) VALUES (DEFAULT,'Originais','Entretenimento','Adam Grant');
INSERT INTO Audiobook(id,titulo,tema,autor) VALUES (DEFAULT,'Como treinar pra ser um jogador?','Futebol','EsporteInterativo');
/* audiobook(id, tema, autor) */

/*Entidade Asscociativa*/

INSERT INTO Comprar(id,id_usuario,id_audiobook,id_desconto) VALUES (DEFAULT,'5','1','1');
INSERT INTO Comprar(id,id_usuario,id_audiobook,id_desconto) VALUES (DEFAULT,'7','3','1');
INSERT INTO Comprar(id,id_usuario,id_audiobook,id_desconto) VALUES (DEFAULT,'12','2','2');
INSERT INTO Comprar(id,id_usuario,id_audiobook,id_desconto) VALUES (DEFAULT,'15','3','1');
INSERT INTO Comprar(id,id_usuario,id_audiobook,id_desconto) VALUES (DEFAULT,'9','1','2');
/* comprar(id,id_usuario,id_audiobook,id_desconto) */

/*Relacionamentos*/

INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'1','1');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'2','2');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'3','3');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'4','4');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'5','5');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'6','6');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'7','7');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'8','8');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'9','9');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'10','10');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'11','11');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'12','12');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'13','13');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'14','14');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'15','15');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'16','16');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'17','17');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'18','18');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'19','19');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'20','20');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'21','21');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'22','22');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'23','23');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'24','24');
INSERT INTO BibliotecaUsuario(id,id_usuario,id_biblioteca) VALUES (DEFAULT,'25','25');
/* bibliotecaUsuario(id,id_usuario,id_biblioteca) */



INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'1','2');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'2','1');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'5','10');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'5','1');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'3','25');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'1','12');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'4','11');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'15','16');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'12','1');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'11','4');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'7','12');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'12','7');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'13','4');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'13','5');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'5','13');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'6','1');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'9','4');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'22','20');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'19','24');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'24','19');
INSERT INTO Seguindo(id,id_usuario,id_seguidor) VALUES (DEFAULT,'20','22');
/* seguindo(id,id_usuario,id_seguidor) */


INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster) VALUES (DEFAULT,'1','1');
INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster) VALUES (DEFAULT,'2','3');
INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster) VALUES (DEFAULT,'3','5');
INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster) VALUES (DEFAULT,'4','2');
INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster) VALUES (DEFAULT,'5','1');
INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster) VALUES (DEFAULT,'6','3');
INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster) VALUES (DEFAULT,'7','4');
INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster) VALUES (DEFAULT,'12','4');
INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster) VALUES (DEFAULT,'13','2');
INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster) VALUES (DEFAULT,'15','1');
INSERT INTO adicionaPodcaster(id,id_biblioteca,id_podcaster) VALUES (DEFAULT,'9','4');
/* adicionaPodcaster(id,id_biblioteca, id_podcaster) */

INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'10','1');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'8','2');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'9','3');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'11','4');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'12','5');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'1','1');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'2','2');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'3','3');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'4','3');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'5','2');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'6','5');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'11','5');
INSERT INTO adicionaArtista(id,id_biblioteca,id_artista) VALUES (DEFAULT,'15','1');
/* adicionaArtista(id, id_biblioteca, id_artista) */

INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'1','4');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'2','3');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'3','2');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'4','1');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'5','5');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'6','5');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'7','2');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'8','1');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'9','2');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'10','4');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'11','4');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'12','3');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'13','2');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'14','1');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'15','5');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'1','2');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'3','5');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'5','1');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'9','3');
INSERT INTO AdicionaAlbum(id,id_biblioteca,id_album) VALUES (DEFAULT,'12','1');
/* adicionaAlbum(id,id_biblioteca,id_album) */

INSERT INTO playlistPodcaster(id,id_usuario,id_playlist,id_podcaster) VALUES (DEFAULT,'1','3','2');
INSERT INTO playlistPodcaster(id,id_usuario,id_playlist,id_podcaster) VALUES (DEFAULT,'1','3','4');
INSERT INTO playlistPodcaster(id,id_usuario,id_playlist,id_podcaster) VALUES (DEFAULT,'4','3','1');
INSERT INTO playlistPodcaster(id,id_usuario,id_playlist,id_podcaster) VALUES (DEFAULT,'1','1','5');
INSERT INTO playlistPodcaster(id,id_usuario,id_playlist,id_podcaster) VALUES (DEFAULT,'4','1','2');
INSERT INTO playlistPodcaster(id,id_usuario,id_playlist,id_podcaster) VALUES (DEFAULT,'1','1','1');
/* playlistPodcaster(id,id_usuario,id_playlist,id_podcaster) */

INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'1','1','1');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'1','1','20');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'1','1','55');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'1','1','36');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'1','1','17');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'2','2','41');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'2','2','28');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'2','2','15');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'2','2','6');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'2','2','4');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'3','3','21');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'3','3','18');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'3','3','6');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'3','3','16');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'3','3','8');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'4','4','25');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'4','4','61');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'4','4','49');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'4','4','1');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'4','4','37');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'5','5','44');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'5','5','55');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'5','5','30');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'5','5','59');
INSERT INTO PlaylistMusica(id,id_usuario,id_playlist,id_musica) VALUES (DEFAULT,'5','5','58');
/* playslistMusica(id,id_usuario,id_playlist,id_musica) */

/* Artista que não está em nenhuma biblioteca */
INSERT INTO Usuario VALUES (DEFAULT,'bk001@gmail.com','mc bk','senha123','cartao','15%','artista');
INSERT INTO artista(id,nome,id_usuario) VALUES (DEFAULT,'mc bk','26');