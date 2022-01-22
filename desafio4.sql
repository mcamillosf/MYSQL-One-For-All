select u.usuario,
if(max(year(data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') as condicao_usuario
from SpotifyClone.historico as h
inner join SpotifyClone.usuarios as u on h.usuario_id = u.usuario_id
group by usuario
order by usuario;