/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Fuera_Catalogo]
      ,[Id_Contrato]
      ,[Fecha_Registro]
      ,[Fecha_Ultima_Autorizada]
      ,[Fecha_Instruccion_Bitacora]
      ,[Numero_Oficio_Autorizacion]
      ,[Fecha_Oficio_Autorizacion]
      ,[Observaciones]
      ,[Estatus]
  FROM [WSICOM_2018].[dbo].[Tbl_Fuera_Catalogo]

  SELECT 
	   T1.[Id_Fuera_Catalogo]
      ,T1.[Id_Contrato]
      ,T1.[Fecha_Registro]

	  ,T2.[Id_Fuera_Catalogo]
      ,T2.[Id_Contrato]
      ,T2.[Fecha_Registro]
	  
	  ,T3.[Id_Fuera_Catalogo]
      ,T3.[Id_Contrato]
      ,T3.[Fecha_Registro]

	
	  ,T4.[Id_Fuera_Catalogo]
      ,T4.[Id_Contrato]
      ,T4.[Fecha_Registro]

	  ,T5.[Id_Fuera_Catalogo]
      ,T5.[Id_Contrato]
      ,T5.[Fecha_Registro]

	  ,T6.[Id_Fuera_Catalogo]
      ,T6.[Id_Contrato]
      ,T6.[Fecha_Registro]
	
	  ,T7.[Id_Fuera_Catalogo]
      ,T7.[Id_Contrato]
      ,T7.[Fecha_Registro]

	  ,T8.[Id_Fuera_Catalogo]
      ,T8.[Id_Contrato]
      ,T8.[Fecha_Registro]

	  ,T9.[Id_Fuera_Catalogo]
      ,T9.[Id_Contrato]
      ,T9.[Fecha_Registro]
      ,T9.[Fecha_Ultima_Autorizada]
      ,T9.[Fecha_Instruccion_Bitacora]
      ,T9.[Numero_Oficio_Autorizacion]
      ,T9.[Fecha_Oficio_Autorizacion]
      ,REPLACE(REPLACE(T9.[Observaciones]  , CHAR(13), ''), CHAR(10), '') Observaciones
      ,T9.[Estatus]
  FROM 
  (SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Fuera_Catalogo]) T1
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Fuera_Catalogo]) T2
  ON T1.[Id_Fuera_Catalogo] = T2.[Id_Fuera_Catalogo] AND T1.[Id_Contrato] = T2.[Id_Contrato] 
  AND T1.[Fecha_Registro] = T2.[Fecha_Registro]
  
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Fuera_Catalogo]) T3
  ON T2.[Id_Fuera_Catalogo] = T3.[Id_Fuera_Catalogo] AND T2.[Id_Contrato] = T3.[Id_Contrato] 
  AND T2.[Fecha_Registro] = T3.[Fecha_Registro]
  
   FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Fuera_Catalogo]) T4
  ON T3.[Id_Fuera_Catalogo] = T4.[Id_Fuera_Catalogo] AND T3.[Id_Contrato] = T4.[Id_Contrato] 
  AND T3.[Fecha_Registro] = T4.[Fecha_Registro]

   FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Fuera_Catalogo]) T5
  ON T4.[Id_Fuera_Catalogo] = T5.[Id_Fuera_Catalogo] AND T4.[Id_Contrato] = T5.[Id_Contrato] 
  AND T4.[Fecha_Registro] = T5.[Fecha_Registro]

  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Fuera_Catalogo]) T6
  ON T5.[Id_Fuera_Catalogo] = T6.[Id_Fuera_Catalogo] AND T5.[Id_Contrato] = T6.[Id_Contrato] 
  AND T5.[Fecha_Registro] = T6.[Fecha_Registro]

  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Fuera_Catalogo]) T7
  ON T6.[Id_Fuera_Catalogo] = T7.[Id_Fuera_Catalogo] AND T6.[Id_Contrato] = T7.[Id_Contrato] 
  AND T6.[Fecha_Registro] = T7.[Fecha_Registro]
  
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Fuera_Catalogo]) T8
  ON T7.[Id_Fuera_Catalogo] = T8.[Id_Fuera_Catalogo] AND T7.[Id_Contrato] = T8.[Id_Contrato] 
  AND T7.[Fecha_Registro] = T8.[Fecha_Registro]

  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Fuera_Catalogo]) T9
  ON T8.[Id_Fuera_Catalogo] = T9.[Id_Fuera_Catalogo] AND T8.[Id_Contrato] = T9.[Id_Contrato] 
  AND T8.[Fecha_Registro] = T9.[Fecha_Registro]
 
  WHERE T9.[Id_Fuera_Catalogo] IS NOT NULL;