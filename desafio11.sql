SELECT musica as nome_musica, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(musica, 'Streets', 'Code Review'), 'Her Own', 'Trybe'), 'Inner Fire', 'Project'),
'Silly', 'Nice'), 'Circus', 'Pull Request') AS novo_nome
FROM SpotifyClone.Cancoes
WHERE musica LIKE '%Streets'
OR musica LIKE '%Her Own'
OR musica LIKE '%Inner Fire'
OR musica LIKE '%Silly'
OR musica LIKE '%Circus';

-- REPLACE DENTRO DE REPLACE