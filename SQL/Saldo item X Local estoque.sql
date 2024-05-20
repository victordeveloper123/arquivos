SELECT 
    E.item,
	E.descricao,
    CAST(SUM(E.ESTOQUE - E.RESERVADO) AS INTEGER) AS SALDO
FROMvEstConsultaEstoqueOK E
WHERE 
    E.item > 40000
    AND E.Almoxarifado = 'BIO_FILIAL'
GROUP BY 
    E.item,
	E.descricao;

 
    