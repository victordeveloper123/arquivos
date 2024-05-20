select *,
p.DescricaoProcedencia as Descri��o_Proced�cia,
g.descricao as Descri��o_Grupo,
t.Descricao as Descri��o_Tipo,
o.descricao as Descri��o_Origem,
a.Descricao as Descri��o_Almoxarifado 

from Itenstab i

left join ItensProcedencias p on p.ProcedenciaID=i.ProcedenciaID
left join Grupos g on g.grupo=i.grupo1
left join Itenstipo t on t.Tipo=i.tipo
left join ItensOrigem o on o.Codigo=i.tipo_item
left join contasAlmoxarifados a on a.Almoxarifado=i.Almoxarifado

