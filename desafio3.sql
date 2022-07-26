SELECT DISTINCT nome as usuario, COUNT(cancoes_musica_id) as qtde_musicas_ouvidas, ROUND((SUM(duracao_segundos) / 60), 2)
from SpotifyClone.Usuario
INNER JOIN SpotifyClone.Reproducoes ON SpotifyClone.Reproducoes.usuario_nome_id = SpotifyClone.Usuario.usuario_id
INNER JOIN SpotifyClone.Cancoes ON SpotifyClone.Cancoes.musica_id = SpotifyClone.Reproducoes.cancoes_musica_id
GROUP BY nome;