SELECT 
Capa.Codigo, 
Capa.RazSoc, 
Item.Codigo, 
Item.Descricao, 
Lote.Lote 

FROM fscNFItens(nolock) AS Item
INNER JOIN fscNFCapa(nolock) Capa ON Capa.fscNFID = item.fscNFID
INNER JOIN fscNFItensLote(nolock) Lote ON Item.fscNFItensID = Lote.fscNFItens

WHERE Item.Codigo = '44382' AND Lote.Lote = '150620230210'
GROUP BY Capa.Codigo, Capa.RazSoc,Item.Codigo, Item.Descricao, Lote.Lote