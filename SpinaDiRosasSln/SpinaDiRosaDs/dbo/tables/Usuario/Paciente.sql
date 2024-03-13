CREATE TABLE [dbo].[Paciente] (
    [IdPaciente]      UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [IdGenero]        UNIQUEIDENTIFIER NOT NULL,
    [Nombre]          NVARCHAR (MAX)   NULL,
    [Telefono]        NVARCHAR (MAX)   NULL,
    [Correo]          NVARCHAR (MAX)   NULL,
    [Activo]          BIT              DEFAULT ((1)) NULL,
    [Actualiza]       DATETIME         DEFAULT (getdate()) NULL,
    [IdTipoDocumento] UNIQUEIDENTIFIER NULL,
    PRIMARY KEY CLUSTERED ([IdPaciente] ASC),
    CONSTRAINT [FK_Paciente_Genero] FOREIGN KEY ([IdGenero]) REFERENCES [dbo].[Genero] ([IdGenero]),
    CONSTRAINT [FK_Paciente_TipoDocumento] FOREIGN KEY ([IdTipoDocumento]) REFERENCES [dbo].[TipoDocumento] ([IdTipoDocumento])
);

