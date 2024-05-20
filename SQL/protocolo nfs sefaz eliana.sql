SELECT CONCAT(FscNFCapa.EmpresaID, ' - ', ContEmpr.ContRazSoc) Empresa, CONCAT(FscNFCapa.Codigo, ' - ', ContCli.ContRazSoc) Cliente,
Numero NumeroNF, Emissao, DataAutorizacaoNFE, ProtocoloRetornado, XmlTransacao XML 
FROM fscNFCapa
INNER JOIN FscProtocoloNFe ON fscNFCapa.fscNFID = FscProtocoloNFe.FscNFID
INNER JOIN fscNFeXML ON fscNFCapa.fscNFID = FscNFeXML.fscnfid
INNER JOIN Contas ContEmpr ON fscNFCapa.EmpresaID = ContEmpr.ContaID
INNER JOIN Contas ContCli ON fscNFCapa.Codigo = ContCli.ContaID
WHERE fscNFCapa.DataAutorizacaoNFE >= CONVERT(datetime, '2024-05-03 00:00:00', 102)