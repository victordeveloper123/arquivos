select item, 
IT.descricao, 
unidade_estoque, 
fscNcMID, 
GP.Descricao as DescGrupo 
from itenstab IT 
inner join grupos GP on GP.grupo = IT.grupo1 

