select
concat(`ar`.nome, `ar`.sobrenome) as `artista`, 
`al`.album as `album`
from SpotifyClone.artistas as `ar`
inner join SpotifyClone.albuns as `al` on `ar`.id_artista = `al`.id_artista
group by `al`.album_id
limit 2;