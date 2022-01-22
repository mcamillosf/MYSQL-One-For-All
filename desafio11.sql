select
  nome_cancao as `nome_musica`,
  case
    when nome_cancao like '%Streets' then replace(nome_cancao, 'Streets', 'Code Review')
    when nome_cancao like '%Her Own' then replace(nome_cancao, 'Her Own', 'Trybe')
    when nome_cancao like '%Inner Fire' then replace(nome_cancao, 'Inner Fire', 'Project')
    when nome_cancao like '%Silly' then replace(nome_cancao, 'Silly', 'Nice')
    when nome_cancao like '%Circus' then replace(nome_cancao, 'Circus', 'Pull Request')
  end as `novo_nome`
from
  SpotifyClone.cancoes
where
  nome_cancao like '%Streets'
  or nome_cancao like '%Her Own'
  or nome_cancao like '%Inner Fire'
  or nome_cancao like '%Silly'
  or nome_cancao like '%Circus'
order by
  nome_cancao;