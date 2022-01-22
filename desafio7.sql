select
concat(`ar`.nome, `ar`.sobrenome) as `artista`, 
`al`.album as `album`, 
count(*) as `seguidores` 
from SpotifyClone.artistas as `ar`
inner join SpotifyClone.albuns as `al` on `ar`.id_artista = `al`.id_artista
inner join SpotifyClone.seguidores as `s` on `s`.id_artista = `ar`.id_artista
group by `al`.album_id
order by `seguidores` DESC, `artista`, `album`;