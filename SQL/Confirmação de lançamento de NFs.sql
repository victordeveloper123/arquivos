SELECT   
	f.Documento,
	cmpop.descricao,    
	f.NomeEmpresa,   
	f.ClienteDesc,
	CTB.cnpj,
	f.ValorOriginal,
	f.Vencimento,
	n.DataCadastro,
	R.ValorRetencao,
	imp.Descricao as Tipo

FROM
    vFinMovimentos F
	INNER JOIN Nota_entrada N ON f.NFEntrada = n.nota
	LEFT JOIN NotaEntradaRetencoes R ON n.WrkID = R.WrkID
	LEFT JOIN fscTipoImposto T ON R.ImpostoID = T.Tipo
	LEFT JOIN vFinMovimentosCTB CTB ON ctb.FinMovID = F.FinMovID
	LEFT JOIN CMPOP ON CMPOP.cmpopid = N.cmpopid 
	LEFT JOIN fscTipoImposto imp on r.ImpostoID=imp.Id

WHERE
    f.tipo = 'CP'