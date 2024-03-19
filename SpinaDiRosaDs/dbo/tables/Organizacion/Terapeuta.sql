CREATE TABLE [dbo].[Terapeuta] (
    [IdTerapeuta]     UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [IdSucursal]      UNIQUEIDENTIFIER NOT NULL,
    [Nombre]          NVARCHAR (MAX)   NULL,
    [Telefono]        NVARCHAR (MAX)   NULL,
    [Correo]          NVARCHAR (MAX)   NULL,
    [Direccion]       NVARCHAR (MAX)   NULL,
    [Activo]          BIT              DEFAULT ((1)) NULL,
    [Actualiza]       DATETIME         DEFAULT (getdate()) NULL,
    [IdTipoTerapeuta] UNIQUEIDENTIFIER NULL,
    PRIMARY KEY CLUSTERED ([IdTerapeuta] ASC),
    CONSTRAINT [FK_Terapeuta_Sucursal] FOREIGN KEY ([IdSucursal]) REFERENCES [dbo].[Sucursal] ([IdSucursal]),
    CONSTRAINT [FK_Terapeuta_TipoTerapeuta] FOREIGN KEY ([IdTipoTerapeuta]) REFERENCES [dbo].[TipoTerapeuta] ([IdTipoTerapeuta])
);

