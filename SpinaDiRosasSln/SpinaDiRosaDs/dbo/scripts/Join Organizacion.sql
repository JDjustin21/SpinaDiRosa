SELECT	E.IdEmpresa AS IdEmpresa,
		E.Nombre AS NombreEmpresa,
		S.IdSucursal AS IdSucursal,
		S.IdCiudad AS IdCiudad,
		S.Nombre AS NombreSucursal,
		T.IdTerapeuta AS IdTerapeuta,
		T.IdTipoTerapeuta AS IdTipoTerapeuta,
		I.Nombre As TipoTerapeuta,
		T.Nombre AS NombreTerapueta,
		T.Telefono AS TelefonoTerapeuta,
		T.Correo AS CorreoTerapeuta,
		T.Direccion AS DireccionTerapeuta
FROM Empresa E
	INNER JOIN  Sucursal S
		ON E.IdEmpresa = S.IdEmpresa
	INNER JOIN Terapeuta T
		ON T.IdSucursal = S.IdSucursal
	INNER JOIN TipoTerapeuta I
		ON T.IdTipoTerapeuta = I.IdTipoTerapeuta
FOR JSON PATH