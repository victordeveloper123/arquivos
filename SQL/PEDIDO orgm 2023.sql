-- Seleciona os campos desejados da tabela vvndLinhas
SELECT
    p.NumeroNota AS NF,
    p.ClienteNome AS Cliente,
    p.Estado AS Estado,
    p.ItemDescricao AS Produto,
    p.CodVendedor,
    p.NomeRegional AS Regional,
    p.TotalItem AS Total,
    -- Calcula vlrvenda com base no valor da coluna venda
    CASE 
        WHEN p.venda = 1 THEN p.totalitem
        ELSE 0
    END AS vlrvenda,
    -- Calcula bonificacao com base no valor da coluna Bonificacao
    CASE 
        WHEN p.bonificacao = 1 THEN p.totalitem
        ELSE 0
    END AS bonificacao
-- Tabela da qual os dados são selecionados
FROM 
    vvndLinhas p
-- Condições para filtrar os dados
WHERE 
    (p.venda <> 0 OR p.Bonificacao <> 0 ) AND 
    p.Estado <>'EX'
-- Ordena os resultados pelo campo item
ORDER BY 
    p.item;