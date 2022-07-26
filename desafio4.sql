SELECT nome as usuario,
IF(MAX(YEAR(data_reproducao)) = 2021, "Usuário ativo", "Usuário inativo") AS condicao_usuario
from SpotifyClone.Usuario
INNER JOIN SpotifyClone.Reproducoes ON SpotifyClone.Reproducoes.usuario_nome_id = SpotifyClone.Usuario.usuario_id
WHERE YEAR(data_reproducao) <= 2021
GROUP BY nome
ORDER BY nome ASC;

-- se tem o ano de 2021 está ativa se nao usuario inativo
-- YEAR(data_reproducao) as condicao_usuario

-- https://www.devmedia.com.br/forum/trazer-registro-com-data-mais-atual-para-cada-tipo-de-produto/444756