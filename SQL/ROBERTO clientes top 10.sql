SELECT
	TOP(10)
    CASE
        WHEN Venda = 1 THEN SUM(Total)
        ELSE 0
    END as Vlrvenda,
	f.ov as Pedido,
    f.RepresentanteNome as Representante,
    f.regional as Regional,
    f.Nota as NF,
    f.ClienteCod as CódigoCliente,
    f.ClienteDesc as DescriçãoCliente,
    f.GrupoDescricao as GrupoDescrição,
    f.FamiliaDescricao as FamiliaDescrição,
    FORMAT(f.Emissao,'dd.MM.yyyy') as Emissão,
    RANK() OVER (ORDER BY SUM(f.total) DESC) as RANK
FROM vvndFaturamento f
WHERE 
	(Venda <> 0)
    AND f.UF <> 'EX'
    AND f.emissao BETWEEN CONVERT(DATE, '01.07.2023', 103) 
	AND CONVERT(DATE, '16.10.2023', 103)
    AND f.GrupoNivel1 IN ('1010000', '101000', '1010301', '1010800')
GROUP BY
    f.ov, 
    Venda, 
    f.RepresentanteNome, 
    f.emissao, 
    f.regional, 
    f.Nota, 
    f.Emissao, 
    f.ClienteCod, 
    f.ClienteDesc, 
    f.GrupoDescricao, 
    f.FamiliaDescricao


