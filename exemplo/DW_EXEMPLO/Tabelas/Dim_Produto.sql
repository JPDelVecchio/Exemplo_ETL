CREATE TABLE [dbo].[Dim_Produto] 
(
	[COD_PRODUTO] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [DESC_PRODUTO] varCHAR(200) NULL,
    [atr_tamanho] varCHAR(200) NULL,
    [atr_Sabor] varchar(200) NULL,
    [Cod_marca] varCHAR(50) NULL, 
    CONSTRAINT [FK_Dim_Produto_Dim_marca] FOREIGN KEY ([cod_marca]) REFERENCES [Dim_marca]([cod_marca])

)
