select
  `c`.nome_cancao as `nome`,
  count(*) as `reproducoes`
from
  SpotifyClone.historico as `h`
  inner join SpotifyClone.cancoes as `c` on `c`.cancao_id = `h`.cancao_id
  inner join SpotifyClone.usuarios as `u` on `h`.usuario_id = `u`.usuario_id
where
  `u`.plano_id = 1 or `u`.plano_id = 3
group by
  `nome`
order by
  `nome`;