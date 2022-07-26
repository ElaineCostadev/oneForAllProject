SELECT musica as nome, COUNT(nome) as reproducoes
FROM SpotifyClone.Reproducoes
INNER JOIN SpotifyClone.Cancoes ON SpotifyClone.Cancoes.musica_id = SpotifyClone.Reproducoes.cancoes_musica_id
INNER JOIN SpotifyClone.Usuario ON SpotifyClone.Usuario.usuario_id = SpotifyClone.Reproducoes.usuario_nome_id
INNER JOIN SpotifyClone.Plano ON SpotifyClone.Plano.plano_id = SpotifyClone.Usuario.plano_id
WHERE SpotifyClone.Plano.tipo IN('gratuito', 'pessoal')
GROUP BY musica
ORDER BY musica ASC;