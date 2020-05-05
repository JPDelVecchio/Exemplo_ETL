﻿CREATE TABLE [DBO].[FATO_004]
(
	[COD_CLIENTE] NVARCHAR(50) NOT NULL , 
    [COD_PRODUTO] NVARCHAR(50) NOT NULL, 
    [COD_ORGANIZACIONAL] NVARCHAR(50) NOT NULL,  
    [COD_DIA] NVARCHAR(50) NOT NULL, 
    [META_FATURAMENTO] FLOAT NULL,  
    PRIMARY KEY ([COD_DIA], [COD_CLIENTE], [COD_PRODUTO], [COD_ORGANIZACIONAL] ), 
    CONSTRAINT [FK_FATO_004_DIM_CLIENTE] FOREIGN KEY ([COD_CLIENTE]) REFERENCES [DIM_CLIENTE]([COD_CLIENTE]), 
    CONSTRAINT [FK_FATO_004_DIM_PRODUTO] FOREIGN KEY ([COD_PRODUTO]) REFERENCES [DIM_PRODUTO]([COD_PRODUTO]), 
    CONSTRAINT [FK_FATO_004_DIM_ORGANIZACIONAL] FOREIGN KEY ([COD_ORGANIZACIONAL]) REFERENCES [DIM_ORGANIZACIONAL]([COD_FILHO]),  
    CONSTRAINT [FK_FATO_004_DIM_DIA] FOREIGN KEY ([COD_DIA]) REFERENCES [DIM_TEMPO]([COD_DIA])
)
