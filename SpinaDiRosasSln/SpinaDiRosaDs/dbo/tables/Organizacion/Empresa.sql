CREATE TABLE [dbo].[Empresa] (
    [IdEmpresa] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Nombre]    NVARCHAR (MAX)   NULL,
    [Gerente]   NVARCHAR (MAX)   NULL,
    [Activo]    BIT              DEFAULT ((1)) NULL,
    [Actualiza] DATETIME         DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdEmpresa] ASC)
);

