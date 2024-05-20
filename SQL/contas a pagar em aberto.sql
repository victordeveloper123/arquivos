SELECT

 finMovID,
 NomeEmpresa, 
concat(ClienteCod, ' -',ClienteDesc) as Favorecido,
Vencimento , 
Historico,
ValorCTB,
SaldoCtb,
 ValorPagoCtb, 
 VencimentoMes,
Documento, 
Emissao , 
Especie, 
ContaContabilPai,
 ContaContabil ,
grupofluxocaixa,
ValorOriginal

FROM vFinMovimentosCTB 

WHERE Tipo = 'CP'
 AND Saldo > 0
 AND ISNULL(EmpresaGrupo, 0) = 0


