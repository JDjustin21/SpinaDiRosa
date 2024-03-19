SELECT	P.IdPaciente AS IdPaciente,
		G.IdGenero as IdGenero,
		G.Nombre AS Genero,
		TD.Nombre AS NombreTipoDocumento,
		P.Nombre AS NombrePaciente,
		P.Telefono AS TelefonoPaciente,
		P.Correo AS CorreoPaciente
FROM Paciente P
	INNER JOIN  TipoDocumento TD
		ON P.IdTipoDocumento = TD.IdTipoDocumento
	INNER JOIN Genero G
		ON P.IdGenero = G.IdGenero
FOR JSON PATH