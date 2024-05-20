select *,
p.DescricaoProcedencia as Descrição_Procedêcia,
g.descricao as Descrição_Grupo,
t.Descricao as Descrição_Tipo,
o.descricao as Descrição_Origem,
a.Descricao as Descrição_Almoxarifado 

from Itenstab i

left join ItensProcedencias p on p.ProcedenciaID=i.ProcedenciaID
left join Grupos g on g.grupo=i.grupo1
left join Itenstipo t on t.Tipo=i.tipo
left join ItensOrigem o on o.Codigo=i.tipo_item
left join contasAlmoxarifados a on a.Almoxarifado=i.Almoxarifado

