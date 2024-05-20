SELECT 
Contas.ContFant, 
fscNcmID, 
Cest, 
Estado, 
fscBeneficioNCM.fscOpID, 
ProcedenciaID,
CST, 
MVA, 
RedBaseICMS, 
CstIPI, 
RedBaseIPI, 
cEnqIPI, 
CstPIS, 
CstCofins, 
CFO2, 
CFO3, 
CFO4,
TextoIDCorpo, 
TextoIDRodape,
PercPartilhaICMS,
MotDesICMS,
modBCST, 
AliqPis, 
AliqCofins,
IncidePIS, 
IncideCofins,
CSOSN, 
IIF(AplicaIcmsSt = 1, 'SIM', 'NAO') AplicaIcmsSt, 
IIF(Beneficiamento = 1, 'SIM', 'NAO') Beneficiamento,
IIF(ForcarRedBaseICMS = 1, 'SIM', 'NAO') ForcarRedBaseICMS, 
IIF(ForcarRedBaseICMSST = 1, 'SIM', 'NAO') ForcarRedBaseICMSST,
IIF(CreditoICMSSimples = 1, 'SIM', 'NAO') CreditoICMSSimples,
IIF(ItemSempreAplicaRedBase = 1, 'SIM', 'NAO') ItemSempreAplicaRedBase, 
IIF(IncideIPI = 1, 'SIM', 'NAO') IncideIPI, 
IIF(CalculaST = 1, 'SIM', 'NAO') CalculaST,
IIF(IcmsSTBaseDupla = 1, 'SIM', 'NAO')IcmsSTBaseDupla

FROM fscBeneficioNCM
LEFT JOIN Contas ON fscBeneficioNCM.EmpresaID = Contas.contaid