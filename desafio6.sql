select
min(`p`.valor_plano) as `faturamento_minimo`,
max(`p`.valor_plano) as `faturamento_maximo`,
round(avg(`p`.valor_plano), 2) as `faturamento_medio`,
sum(`p`.valor_plano) as `faturamento_total`
from SpotifyClone.planos as `p` 
inner join SpotifyClone.usuarios as `u`
on `p`.plano_id = `u`.plano_id;