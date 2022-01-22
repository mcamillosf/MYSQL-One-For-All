select `c`.nome_cancao as `cancao`, count(*) as `reproducoes` from SpotifyClone.historico as `h`
inner join SpotifyClone.cancoes as `c` on `c`.cancao_id = `h`.cancao_id
group by `cancao` having `reproducoes` != 1 order by `cancao` limit 2;