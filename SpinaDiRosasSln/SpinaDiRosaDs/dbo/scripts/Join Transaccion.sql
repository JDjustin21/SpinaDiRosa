SELECT F.IdFactura AS IdFactura,
		P.Nombre AS NombrePaciente,
		T.Nombre AS NombreTerapeuta,
		S.Nombre AS NombreServicio,
		F.Fecha AS Fecha,
		DF.PrecioUnitario AS PrecioUnitario,
		DF.Cantidad AS Cantidad,
		F.Total AS Total
FROM Factura F
	INNER JOIN DatealleFactura DF
		ON F.IdFactura = DF.IdFactura
	INNER JOIN Paciente P
		ON F.IdPaciente = P.IdPaciente
	INNER JOIN Terapeuta T
		ON F.IdTerapeuta = T.IdTerapeuta
	INNER JOIN Servicio S
		ON DF.IdServicio = S.IdServicio
FOR JSON PATH