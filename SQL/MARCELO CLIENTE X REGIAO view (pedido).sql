SELECT 
	sum(total) as Total_de_tudo
FROM vvndfaturamento 
    where Emissao BETWEEN CONVERT (DATE, '01.12.2023',103) AND CONVERT (DATE, '31.12.2023',103)

