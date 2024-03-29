﻿CREATE TABLE [dbo].[Genero] (
    [IdGenero]  UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Nombre]    NVARCHAR (MAX)   NULL,
    [Activo]    BIT              DEFAULT ((1)) NULL,
    [Actualiza] DATETIME         DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdGenero] ASC)
);

