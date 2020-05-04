CREATE TABLE [dbo].[Dim_Marca]
(
	[Cod_marca] VARCHAR(50) NOT NULL PRIMARY KEY, 
    [Desc_Marca] VARCHAR(200) NULL, 
    [Cod_Categoria] VARCHAR(50) NULL, 
    CONSTRAINT [FK_Dim_Marca_Dim_Categoria] FOREIGN KEY ([Cod_Categoria]) REFERENCES [Dim_Categoria]([Cod_Categoria])
)
