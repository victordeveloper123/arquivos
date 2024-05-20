select 
fscNFID as ID,
NomeEmpresa,
Nota as NF, 
ClienteDesc, 
DataVenda, 
Bairro,
Cidade, 
UF, 
RepresentanteNome,
VolQtd,
sum(PesoBruto) as PesoBruto, 
Sum(Total) as TotalNF

from vvndFaturamento

group by 
fscNFID , 
NomeEmpresa, 
Nota , 
ClienteDesc, 
DataVenda, 
Bairro, 
Cidade,
UF, 
RepresentanteNome, 
VolQtd

ORDER BY ID DESC