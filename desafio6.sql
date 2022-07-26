SELECT MIN(SpotifyClone.Plano.valor_plano) as faturamento_minimo, MAX(SpotifyClone.Plano.valor_plano) as faturamento_maximo,
ROUND(AVG(SpotifyClone.Plano.valor_plano), 2) as faturamento_medio,
ROUND(10 * AVG(SpotifyClone.Plano.valor_plano), 2) as faturamento_total
FROM SpotifyClone.Plano
INNER JOIN SpotifyClone.Usuario ON SpotifyClone.Usuario.plano_id = SpotifyClone.Plano.plano_id;

-- faturamento total calculo somando todos os tipos = 10 e multiplico pela media que é 6.39