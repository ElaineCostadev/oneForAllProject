SELECT  artista, album, COUNT(usuario_nome_id) as seguidores
FROM SpotifyClone.Artista
INNER JOIN  SpotifyClone.Album ON SpotifyClone.Artista.artista_id = SpotifyClone.Album.artista_id
INNER JOIN SpotifyClone.Seguindo_Artistas ON SpotifyClone.Seguindo_Artistas.artista_id = SpotifyClone.Artista.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;