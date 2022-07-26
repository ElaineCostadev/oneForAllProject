SELECT COUNT(musica) as cancoes,  COUNT(DISTINCT artista) as artistas,  COUNT(DISTINCT album) as albuns
from SpotifyClone.Cancoes as cancoes
INNER JOIN SpotifyClone.Album as album ON album.album_id = cancoes.album_id
INNER JOIN SpotifyClone.Artista as artistas ON album.artista_id = artistas.artista_id;