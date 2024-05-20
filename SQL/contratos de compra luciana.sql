select
i.item,
i.DescricaoItem,
ct.ContRazSoc,
i.QtdeInicial,
i.Unidade,
i.moeda,
i.Preco,
i.AliqICMS,
i.AliqICMS

from CmpContratosItens i 
left join CmpContratos c on c.CmpContratoID=i.CmpContratoID
left join Contas ct on c.ContaID=ct.ContaID
