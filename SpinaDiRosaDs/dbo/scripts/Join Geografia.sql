SELECT	P.IdPais AS IdPais,
		P.Nombre AS NombrePais,
		D.IdDepartamento AS IdDepartamento,
		D.Nombre AS NombreDepartamento,
		C.IdCiudad AS IdCiudad,
		C.Nombre AS NombreCiudad
FROM Pais P
	INNER JOIN Departamento D
		ON P.IdPais = D.IdPais
	INNER JOIN Ciudad C
		ON D.IdDepartamento = C.IdDepartamento
FOR JSON PATH