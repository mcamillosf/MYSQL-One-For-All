SELECT
	usuario as 'usuario',
	COUNT(*) as 'qtde_musicas_ouvidas',
	ROUND(SUM(c.duracao_segundos) / 60 , 2) as 'total_minutos'
FROM
	SpotifyClone.historico a
	INNER JOIN SpotifyClone.usuarios b ON a.usuario_id=b.usuario_id
	INNER JOIN SpotifyClone.cancoes c ON c.cancao_id=a.cancao_id
GROUP BY
	b.usuario
ORDER BY
	b.usuario;