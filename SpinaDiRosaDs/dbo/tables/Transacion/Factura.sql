CREATE TABLE [dbo].[Factura] (
    [IdFactura]   UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [IdTerapeuta] UNIQUEIDENTIFIER NOT NULL,
    [IdPaciente]  UNIQUEIDENTIFIER NOT NULL,
    [Fecha]       DATETIME         NULL,
    [Total]       NVARCHAR (MAX)   NULL,
    [Activo]      BIT              DEFAULT ((1)) NULL,
    [Actualiza]   DATETIME         DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdFactura] ASC),
    CONSTRAINT [FK_Table_Paciente] FOREIGN KEY ([IdPaciente]) REFERENCES [dbo].[Paciente] ([IdPaciente]),
    CONSTRAINT [FK_Table_Terapeuta] FOREIGN KEY ([IdTerapeuta]) REFERENCES [dbo].[Terapeuta] ([IdTerapeuta])
);

