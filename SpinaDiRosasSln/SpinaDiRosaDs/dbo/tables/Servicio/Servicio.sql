CREATE TABLE [dbo].[Servicio] (
    [IdServicio]     UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [IdTipoServicio] UNIQUEIDENTIFIER NULL,
    [Nombre]         NVARCHAR (MAX)   NULL,
    [Descripcion]    NVARCHAR (MAX)   NULL,
    [Activo]         BIT              DEFAULT ((1)) NULL,
    [Actualiza]      DATETIME         DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdServicio] ASC),
    CONSTRAINT [FK_Servicio_TipoServicio] FOREIGN KEY ([IdTipoServicio]) REFERENCES [dbo].[TipoServicio] ([IdTipoServicio])
);

