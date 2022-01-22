SELECT
(SELECT COUNT(cancao_id) FROM SpotifyClone.cancoes)as 'cancoes',
(SELECT COUNT(id_artista)  FROM SpotifyClone.artistas) as 'artistas',
(SELECT COUNT(album_id) FROM SpotifyClone.albuns) as 'albuns';