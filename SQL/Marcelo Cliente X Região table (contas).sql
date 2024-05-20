SELECT
	C.ContaId as CodCliente,
	C.ContRazSoc as Razao_social,
	C.contfant as Cliente,
	C.ContCGC as CNPJ,
	c.ContCliente as TipoCliente,
	C.ContTransp as TipoTrasnportador,
	c.ContRepr as TipoRepresentante,
	c.ContForn as TipoFornecedor,
	E.estado as Estado,
	E.MunicipioID as CodMunicípio,
	M.nome as Município

FROM Contas C
LEFT JOIN Enderecos E
ON e.contaid = c.contaid

LEFT JOIN Municipios M
on e.MunicipioID = m.MunicipioID

Where c.ContCliente>0 and ContInativo=0
order by c.ContaID

