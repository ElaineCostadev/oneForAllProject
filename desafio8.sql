SELECT artista, album
FROM SpotifyClone.Album
INNER JOIN SpotifyClone.Artista ON SpotifyClone.Artista.artista_id = SpotifyClone.Album.artista_id
WHERE artista LIKE 'WALTER%';