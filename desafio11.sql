SELECT musica as nome_musica, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(musica, 'Streets', 'Code Review'), 'Silly', 'Nice'), 'Circus', 'Pull Request'), 'Inner Fire', 'Project'), 'Her Own', 'Trybe') AS novo_nome
FROM SpotifyClone.Cancoes
WHERE musica LIKE '%Streets'
OR musica LIKE '%Silly'
OR musica LIKE '%Circus'
OR musica LIKE '%Inner Fire'
OR musica LIKE '%Her Own'
ORDER BY musica ASC;

-- REPLACE DENTRO DE REPLACE