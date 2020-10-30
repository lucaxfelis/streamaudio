/*Consultas*/

/*

/* Projetar todos os usuarios */
SELECT *
FROM USUARIO;


/* Projetar todos os albuns */
SELECT *
FROM ALBUM;


/* Projetar todas as musicas */
SELECT *
FROM MUSICA;


/* Projetar a média de duração dos albuns cadastrados */
SELECT ROUND(AVG(TO_NUMBER(REPLACE(DURACAO, ':', '.'))),2) as MEDIA_DURACAO
FROM ALBUM;


/* Projetar os emails e nomes de todos os usuarios com 10% a mais de desconto em sua promocao */
SELECT EMAIL, NOME, CONCAT(TO_CHAR(TO_NUMBER(REPLACE(PROMOCAO,'%','')) + 10), '%') AS DESCONTO_MAIS_10
FROM USUARIO;


/* Projetar a quantidade de musicas cadastradas */
SELECT COUNT(*) AS QTD_MUSICAS
FROM MUSICA;


/* Projetar os gêneros existentes nas músicas cadastradas, sem duplicatas */
SELECT DISTINCT GENERO1 AS GENEROS
FROM MUSICA;


/* Projetar os nomes e datas de lancamento dos podcasts que foram lançados entre junho de 2019 até o final de 2019 */
SELECT NOME, DATA_LANCAMENTO
FROM PODCAST
WHERE DATA_LANCAMENTO BETWEEN '2019-06-01' AND '2019-12-31';


/* Projetar os podcasts que foram lançados em 2018 ou em 2020 */
SELECT *
FROM PODCAST
WHERE EXTRACT(YEAR FROM TO_DATE(DATA_LANCAMENTO, 'YYYY-MM-DD')) IN (2018, 2020);


/* Projetar todas as musicas que comecam com M */
SELECT *
FROM MUSICA
WHERE NOME LIKE 'M%';


/* Projetar as musicas que possuem APENAS rock alternativo ou maracatu como genero musical */
SELECT *
FROM MUSICA
WHERE GENERO2 IS NULL AND (GENERO1 = 'rock alternativo' OR GENERO1 = 'maracatu');


/* OBS: Comprar é uma entidade associativa que possui chaves estrangeiras para usuario, audiobook e desconto */
/* (OLD SCHOOL INNER JOIN) Caso um usuário tenha algum desconto na compra de um audiobook, projeta seu e-mail, titulo do audiobook e o respectivo desconto */
SELECT USU.EMAIL, AB.TITULO, DESCONTO.PORCENTAGEM AS DESCONTO
FROM USUARIO USU, AUDIOBOOK AB, COMPRAR, DESCONTO
WHERE USU.ID = COMPRAR.ID_USUARIO AND AB.ID = COMPRAR.ID_AUDIOBOOK AND DESCONTO.ID = COMPRAR.ID_DESCONTO;


/* (NEW SCHOOL INNER JOIN) Caso um usuário tenha algum desconto na compra de um audiobook, projeta seu e-mail, titulo do audiobook e o respectivo desconto */
SELECT USU.EMAIL, AB.TITULO, DESCONTO.PORCENTAGEM AS DESCONTO
FROM USUARIO USU INNER JOIN 
    COMPRAR ON USU.ID = COMPRAR.ID_USUARIO INNER JOIN
    AUDIOBOOK AB ON AB.ID = COMPRAR.ID_AUDIOBOOK INNER JOIN
    DESCONTO ON DESCONTO.ID = COMPRAR.ID_DESCONTO;


/* OBS: Biblioteca possui o mesmo nome de seu dono, pois um usuario possui apenas uma biblioteca e esta e possuida por apenas um usuario */
/* (INNER JOIN) Projetar o nome da biblioteca e o/os albuns que ela possui, SEM PROJETAR bibliotecas que nao possuem albuns */
SELECT B.NOME, AA.ID_ALBUM
FROM BIBLIOTECA B INNER JOIN
    ADICIONAALBUM AA ON B.ID = AA.ID_BIBLIOTECA;


/* (JUNCAO EXTERNA A ESQUERDA) Projetar os nomes das bibliotecas e o/os albuns que ela possui, PROJETANDO TAMBEM os nomes das bibliotecas que nao possuem albuns */
SELECT B.NOME, AA.ID_ALBUM
FROM BIBLIOTECA B LEFT OUTER JOIN
    ADICIONAALBUM AA ON B.ID = AA.ID_BIBLIOTECA;


/* (JUNCAO EXTERNA A ESQUERDA EXCLUSIVA) Projetar os nomes das bibliotecas que nao possuem albuns */
SELECT B.NOME
FROM BIBLIOTECA B LEFT OUTER JOIN
    ADICIONAALBUM AA ON B.ID = AA.ID_BIBLIOTECA
WHERE AA.ID_BIBLIOTECA IS NULL;


/* (JUNCAO EXTERNA A DIREITA) Projetar os nomes dos artistas e a/as bibliotecas no qual foram adicionados, PROJETANDO TAMBEM os nomes dos artistas que nao foram adicionados em algum biblioteca */
SELECT A.NOME, AA.ID_BIBLIOTECA
FROM ADICIONAARTISTA AA RIGHT OUTER JOIN
    ARTISTA A ON A.ID = AA.ID_ARTISTA;
    
    
/* (JUNCAO EXTERNA A DIREITA EXCLUSIVA) Projetar os nomes dos artistas que nao foram adicionados em alguma biblioteca */
SELECT A.NOME, AA.ID_BIBLIOTECA
FROM ADICIONAARTISTA AA RIGHT OUTER JOIN
    ARTISTA A ON A.ID = AA.ID_ARTISTA
WHERE AA.ID_BIBLIOTECA IS NULL;


/* (JUNCAO EXTERNA COMPLETA) Projeta os nomes das bibliotecas e o/os nomes dos artistas que foram adicionados a ela. TAMBEM PROJETA bibliotecas que nao possuem artistas adicionados, assim como nomes de artistas que nao foram adicionados a nenhuma biblioteca */
SELECT B.NOME AS NOME_BIBLIOTECA, A.NOME AS NOME_ARTISTA
FROM BIBLIOTECA B FULL OUTER JOIN
    ADICIONAARTISTA AA ON B.ID = AA.ID_BIBLIOTECA FULL OUTER JOIN
    ARTISTA A ON A.ID = AA.ID_ARTISTA;


/* (JUNCAO EXTERNA COMPLETA EXCLUSIVA) Projeta APENAS os nomes das bibliotecas que nao possuem artistas adicionados e nomes de artistas que nao foram adicionados a nenhuma biblioteca */
SELECT B.NOME AS NOME_BIBLIOTECA, A.NOME AS NOME_ARTISTA
FROM BIBLIOTECA B FULL OUTER JOIN
    ADICIONAARTISTA AA ON B.ID = AA.ID_BIBLIOTECA FULL OUTER JOIN
    ARTISTA A ON A.ID = AA.ID_ARTISTA
WHERE AA.ID_ARTISTA IS NULL OR AA.ID_BIBLIOTECA IS NULL;


/* (AUTO-JUNÇAO COM THETA JOIN/NON-EQUI JOIN) Para cada musica, projetar seu nome e duracao seguido do nome e duracao de todas as musicas com duracao menor que ela */
SELECT M.NOME, M.DURACAO, MENOR.NOME AS NOME_MSC_MENOR, MENOR.DURACAO AS DURACAO_MSC_MENOR
FROM MUSICA M INNER JOIN 
    MUSICA MENOR ON M.DURACAO > MENOR.DURACAO;


/* (ORDENAR) Projetar todas as musicas em ordem decrescente de duracao, para duracoes iguais, ordenar com base na ordem alfabetica do nome da musica */
SELECT NOME, DURACAO
FROM MUSICA
ORDER BY DURACAO DESC, NOME ASC;


/* (AGRUPAR) Projetar os nomes dos usuarios e a quantidade de podcasters que eles adicionaram em qualquer playlist */
SELECT USUARIO.NOME, COUNT(PP.ID_PODCASTER) AS PODCASTERS_ADICIONADOS
FROM USUARIO INNER JOIN
    PLAYLISTPODCASTER PP ON USUARIO.ID = PP.ID_USUARIO
GROUP BY USUARIO.NOME;


/* (AGRUPAR) Projetar os nomes dos usuarios e a quantidade de podcasters que eles adicionaram em qualquer playlist, EXCLUINDO usuarios que tenham adicionado mais de 3 podcasters */
SELECT USUARIO.NOME, COUNT(PP.ID_PODCASTER) AS PODCASTERS_ADICIONADOS
FROM USUARIO INNER JOIN
    PLAYLISTPODCASTER PP ON USUARIO.ID = PP.ID_USUARIO
GROUP BY USUARIO.NOME
HAVING COUNT(PP.ID_PODCASTER) <= 3;


/* (SUBCONSULTA SIMPLES E ESCALAR) Projetar os nomes dos podcasts que tem duracao acima da media */
SELECT NOME
FROM PODCAST
WHERE TO_NUMBER(REPLACE(DURACAO,':','.')) >
	(SELECT AVG(TO_NUMBER(REPLACE(DURACAO,':','.')))
	FROM PODCAST);
	

/* (SUBCONSULTA SIMPLES E TABELA) Projetar os nomes das bibliotecas que possuem algum album com ano de lancamento igual a 2014 */
SELECT DISTINCT NOME
FROM BIBLIOTECA
WHERE ID IN
    (SELECT AA.ID_BIBLIOTECA
    FROM ADICIONAALBUM AA INNER JOIN
    ALBUM A ON A.ID = AA.ID_ALBUM
    WHERE A.ANO_LANCAMENTO = '2014');


/* (SUBCONSULTA SIMPLES E TABELA) Projetar todas as musicas ordenadas em ordem crescente pela duracao, menos a de menor duracao */
SELECT NOME, DURACAO
FROM MUSICA
WHERE TO_NUMBER(REPLACE(DURACAO, ':', '.')) > ANY
    (SELECT TO_NUMBER(REPLACE(DURACAO, ':', '.'))
    FROM MUSICA)
ORDER BY TO_NUMBER(REPLACE(DURACAO, ':', '.')) ASC;


/* (SUBCONSULTA SIMPLES E LINHA / SUBCONSULTA NO SELECT) Projetar os podcasts que possuem o mesmo ANO DE LANCAMENTO e tema principal do podcast com ID 3 */
SELECT NOME, DATA_LANCAMENTO, (SELECT NOME FROM PODCAST WHERE ID = 3) AS NOME_PODCAST_3, (SELECT DATA_LANCAMENTO FROM PODCAST WHERE ID = 3) AS LANCAMENTO_PODCAST_3
FROM PODCAST
WHERE (EXTRACT(YEAR FROM TO_DATE(DATA_LANCAMENTO, 'YYYY-MM-DD')), TEMA1) =
    (SELECT EXTRACT(YEAR FROM TO_DATE(DATA_LANCAMENTO, 'YYYY-MM-DD')), TEMA1
    FROM PODCAST
    WHERE ID = 3);


/* (SUBCONSULTA SIMPLES E TABELA - NO FROM) Projetar a quantidade percentual de musicas por genero principal */
SELECT GENERO1, CONCAT(ROUND((QTD/TOTAL)*100, 2), '%') AS PORCENTAGEM
FROM 
    (SELECT GENERO1, COUNT(*) AS QTD, (SELECT COUNT(*) FROM MUSICA) AS TOTAL
    FROM MUSICA
    GROUP BY GENERO1);


/* (SEMI JOIN A PARTIR DE SUBCONSULTA CORRELACIONADA E ESCALAR) Projetar nomes de usuários que tenha algum desconto na compra de um audiobook */
SELECT NOME
FROM USUARIO
WHERE EXISTS
    (SELECT *
    FROM COMPRAR
    WHERE COMPRAR.ID_USUARIO = USUARIO.ID);


/* (SEMI JOIN A PARTIR DE SUBCONSULTA CORRELACIONADA E TABELA - USANDO IN) Projetar nomes de usuários que tenha algum desconto na compra de um audiobook */
SELECT NOME
FROM USUARIO
WHERE ID IN
    (SELECT ID_USUARIO
    FROM COMPRAR
    WHERE ID_USUARIO IS NOT NULL);


/* (NEGACAO DO SEMI JOIN OU ANTI JOIN) Projetar os nomes dos usuarios que nao possuem seguidor */
SELECT USUARIO.NOME
FROM USUARIO
WHERE NOT EXISTS
    (SELECT *
    FROM SEGUINDO
    WHERE SEGUINDO.ID_USUARIO = USUARIO.ID);


/* (NEGACAO DO SEMI JOIN OU ANTI JOIN - USANDO IN) Projetar os nomes dos usuarios que nao possuem seguidor */
SELECT USUARIO.NOME
FROM USUARIO
WHERE USUARIO.ID NOT IN
    (SELECT SEGUINDO.ID_USUARIO
    FROM SEGUINDO
    WHERE SEGUINDO.ID_USUARIO IS NOT NULL);


/* (AVALIACAO CONDICIONAL) Projetar os nomes e tamanhos de podcasts, classificando-os em pequeno (caso tenha duracao de ate 10 minutos), medio (caso tenha duracao de ate 30 minutos) e grande (caso tenha duracao maior que 30 minutos) */
SELECT NOME,
    CASE
        WHEN TO_NUMBER(REPLACE(DURACAO, ':', '.')) <= 10 THEN 'PEQUENO'
        WHEN TO_NUMBER(REPLACE(DURACAO, ':', '.')) <= 30 THEN 'MEDIO'
        ELSE 'GRANDE'
    END AS DURACAO
FROM PODCAST;

