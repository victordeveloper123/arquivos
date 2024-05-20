SELECT 
    f.ClienteDesc AS Razao_social,
    f.ClienteDesc AS Nome_fantasia,
    f.ov AS Pedido,
    SUM(CASE WHEN Venda = 1 THEN Total ELSE 0 END) AS Vlrvenda,
    SUM(CASE WHEN Bonificacao = 1 THEN Total ELSE 0 END) AS Vlrbonificacao,
    SUM(f.Qtde) AS Qtde,
    f.fscopid,
    f.RepresentanteNome,
    f.emissao,
    COUNT(DISTINCT f.OV) AS PEDIDOS,
    CONVERT(datetime, f.DataVendaF, 102) AS DataVendaF,
    CASE
        WHEN SUM(CASE WHEN Venda = 1 THEN Total ELSE 0 END) > 0 THEN
            SUM(CASE WHEN Bonificacao = 1 THEN Total ELSE 0 END) /
            SUM(CASE WHEN Venda = 1 THEN Total ELSE 0 END)
        ELSE 0
    END AS DivisaoBonificacaoVenda
FROM 
    vvndFaturamento f
WHERE 
    (Bonificacao <> 0 OR Venda <> 0)
    AND f.uf <> 'EX'
    AND f.fscOpID IN ('VDSBR', 'VP', 'VOP', 'BR', 'VR', 'VLC', 'VZFIF', 'VZFAP', 'BDF', 'BDSKS', 'BLC', 'BOD', 'BP', 'BPZFM', 'BR', 'BZFAP', 'BZFIA', 'VDF', 'VDSBR', 'VDSK', 'VDSKS', 'VDSUF', 'VLC', 'VLCA', 'VOP', 'VP', 'VR', 'VZFAP', 'VZFIF')
    AND f.RepresentanteNome IS NOT NULL
GROUP BY 
    f.ClienteDesc,
    f.ov,
    Venda,
    Bonificacao,
    f.fscopid,
    f.RepresentanteNome,
    f.emissao,
    f.DataVendaF;

