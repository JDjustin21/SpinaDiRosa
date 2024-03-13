SELECT S.IdServicio AS IdServicio,
		S.Nombre AS NombreServicio,
		TS.Nombre AS NombreTipoServicio,
		S.Descripcion AS Descripcion
FROM Servicio S
	INNER JOIN TipoServicio TS
		ON S.IdTipoServicio = TS.IdTipoServicio
FOR JSON PATH