select 
NomeEmpresa, 
CFOP, 
sum (ValorContabil) as ValorContábil, 
sum(IcmsValor) as ValorICMS,
sum(IpiValor) as ValorIPI,
sum(ValorPIs) as ValorPIS,
sum(ValorCofins) as ValorCOFNS,
sum(ValorST) as ValorST,
sum(ICMSBase2) as Isentas,
sum(ICMSBase3) as Outras
from vfscNfSaida

group by NomeEmpresa, CFOP
