SELECT COUNT(nome) AS quantidade_musicas_no_historico
FROM SpotifyClone.Usuario
INNER JOIN SpotifyClone.Reproducoes ON SpotifyClone.Reproducoes.usuario_nome_id = SpotifyClone.Usuario.usuario_id
WHERE nome = 'Bill';