CREATE TABLE [dbo].[Sucursal] (
    [IdSucursal] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [IdCiudad]   UNIQUEIDENTIFIER NOT NULL,
    [IdEmpresa]  UNIQUEIDENTIFIER NOT NULL,
    [Nombre]     NVARCHAR (MAX)   NULL,
    [Activo]     BIT              DEFAULT ((1)) NULL,
    [Actualiza]  DATETIME         DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdSucursal] ASC),
    CONSTRAINT [FK_Sucursal_Ciudad] FOREIGN KEY ([IdCiudad]) REFERENCES [dbo].[Ciudad] ([IdCiudad]),
    CONSTRAINT [FK_Sucursal_Empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [dbo].[Empresa] ([IdEmpresa])
);

