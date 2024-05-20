
SELECT LOV.Item, IT.descricao
, SUM(LOV.quantidade) Pedido
, (
    SELECT ISNULL(SUM(Estoque),0) FROM estEstoquePorLocal EST
    LEFT JOIN contasAlmoxarifados ALM ON ALM.Almoxarifado=EST.Almoxarifado
	left join estLocais E on E.estLocaisID = EST.estLocaisID
    WHERE ALM.Planejavel=1 AND EST.ITEM = LOV.item and E.local='rec bio_filial' and e.Almoxarifado='BIO_FILIAL' 
) Estoque
, (
    SELECT ISNULL(SUM(Estoque),0) FROM estEstoquePorLocal EST
    LEFT JOIN contasAlmoxarifados ALM ON ALM.Almoxarifado=EST.Almoxarifado
	left join estLocais E on E.estLocaisID = EST.estLocaisID
    WHERE ALM.Planejavel=1 AND EST.ITEM = LOV.item and E.local='rec bio_filial' and e.Almoxarifado='BIO_FILIAL' 
)-SUM(LOV.quantidade) SaldoEstoque
, COUNT(DISTINCT LOV.numero_ordem) QtdePedidos
FROM linhas_ov LOV
INNER JOIN VENDAS V ON V.numero_ordem=LOV.numero_ordem
INNER JOIN FSCOP OP ON OP.fscOpID=V.fscOpID
LEFT JOIN ITENSTAB IT ON IT.ITEM=LOV.ITEM
WHERE LOV.[status]='AB'
AND OP.Venda=1
GROUP BY LOV.ITEM, IT.descricao
GO