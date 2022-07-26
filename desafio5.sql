SELECT musica as cancao, COUNT(nome) as reproducoes
FROM SpotifyClone.Reproducoes
INNER JOIN SpotifyClone.Usuario ON SpotifyClone.Usuario.usuario_id = SpotifyClone.Reproducoes.usuario_nome_id
INNER JOIN SpotifyClone.Cancoes ON SpotifyClone.Cancoes.musica_id = SpotifyClone.Reproducoes.cancoes_musica_id
GROUP BY musica
ORDER BY reproducoes DESC, musica ASC
LIMIT 2;