CREATE TABLE [dbo].[DatealleFactura] (
    [IdDetalleFactura] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [IdFactura]        UNIQUEIDENTIFIER NOT NULL,
    [IdServicio]       UNIQUEIDENTIFIER NOT NULL,
    [PrecioUnitario]   NVARCHAR (MAX)   NULL,
    [Cantidad]         NVARCHAR (MAX)   NULL,
    [Activo]           BIT              DEFAULT ((1)) NULL,
    [Actualiza]        DATETIME         DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdDetalleFactura] ASC),
    CONSTRAINT [FK_DatealleFactura_Factura] FOREIGN KEY ([IdFactura]) REFERENCES [dbo].[Factura] ([IdFactura]),
    CONSTRAINT [FK_DatealleFactura_Servicio] FOREIGN KEY ([IdServicio]) REFERENCES [dbo].[Servicio] ([IdServicio])
);

