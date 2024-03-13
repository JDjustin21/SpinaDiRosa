CREATE TABLE [dbo].[Departamento] (
    [IdDepartamento] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [IdPais]         UNIQUEIDENTIFIER NOT NULL,
    [Nombre]         NVARCHAR (MAX)   NULL,
    [Activo]         BIT              DEFAULT ((1)) NULL,
    [Actualiza]      DATETIME         DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdDepartamento] ASC),
    CONSTRAINT [FK_Departamento_Pais] FOREIGN KEY ([IdPais]) REFERENCES [dbo].[Pais] ([IdPais])
);

