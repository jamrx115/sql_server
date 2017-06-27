USE [alltic]
GO
/****** Object:  StoredProcedure [dbo].[PIPELINE_CLIENTE]    Sttcript Date: 6/26/2017 10:12:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[PIPELINE_CLIENTE]  @CATEGORIA INT
AS

SELECT tb1.id,tb1.id_categoria,tb1.nombre,tb2.Nombre,tb3.nombre_cliente,tb2.Definicion 
FROM herramienta_devop as tb1 inner join categoria_herramienta AS tb2 ON tb1.id_categoria=tb2.id
inner join pipeline_clientes tb3 on tb1.id=tb3.id_herramienta
WHERE tb1.id_categoria=@CATEGORIA  

------cambio de estilos
