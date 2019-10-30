/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Partida]
      ,[Id_Capitulo]
      ,[Clave]
      ,[Descripcion]
      ,[Importe]
  FROM [WSICOM_2018].[dbo].[Tbl_Presupuestos_Partidas]

  SELECT 
	   T1.[Id_Partida]
      ,T1.[Id_Capitulo]
      ,T1.[Clave]

	  ,T2.[Id_Partida]
      ,T2.[Id_Capitulo]
      ,T2.[Clave]

	  ,T3.[Id_Partida]
      ,T3.[Id_Capitulo]
      ,T3.[Clave]

	  ,T4.[Id_Partida]
      ,T4.[Id_Capitulo]

	  ,T5.[Id_Partida]
      ,T5.[Id_Capitulo]

	  ,T6.[Id_Partida]
      ,T6.[Id_Capitulo]

	  ,T7.[Id_Partida]
      ,T7.[Id_Capitulo]

	  ,T8.[Id_Partida]
      ,T8.[Id_Capitulo]
	  
	  ,T9.[Id_Partida]
      ,T9.[Id_Capitulo]
      ,T9.[Clave]
      ,REPLACE(REPLACE(T9.[Descripcion] , CHAR(13), ''), CHAR(10), '') Descripcion
      ,T9.[Importe]

	  FROM 
	  (SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Presupuestos_Partidas]) T1
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Presupuestos_Partidas]) T2
	  ON T1.[Id_Partida] = T2.[Id_Partida] AND T1.[Id_Capitulo] = T2.[Id_Capitulo] AND T1.[Clave] = T2.[Clave]
	  AND T1.[Importe] = T2.[Importe]
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Presupuestos_Partidas]) T3
	  ON T2.[Id_Partida] = T3.[Id_Partida] AND T2.[Id_Capitulo] = T3.[Id_Capitulo] AND T2.[Clave] = T3.[Clave]
	  AND T2.[Importe] = T3.[Importe]
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Presupuestos_Partidas]) T4
	  ON T3.[Id_Partida] = T4.[Id_Partida] AND T3.[Id_Capitulo] = T4.[Id_Capitulo] AND T3.[Clave] = T4.[Clave]
	  AND T3.[Importe] = T4.[Importe]
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Presupuestos_Partidas]) T5
	  ON T4.[Id_Partida] = T5.[Id_Partida] AND T4.[Id_Capitulo] = T5.[Id_Capitulo] AND T4.[Clave] = T5.[Clave]
	  AND T4.[Importe] = T5.[Importe]
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Presupuestos_Partidas]) T6
	  ON T5.[Id_Partida] = T6.[Id_Partida] AND T5.[Id_Capitulo] = T6.[Id_Capitulo] AND T5.[Clave] = T6.[Clave]
	  AND T5.[Importe] = T6.[Importe]
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Presupuestos_Partidas]) T7
	  ON T6.[Id_Partida] = T7.[Id_Partida] AND T6.[Id_Capitulo] = T7.[Id_Capitulo] AND T6.[Clave] = T7.[Clave]
	  AND T6.[Importe] = T7.[Importe]
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Presupuestos_Partidas]) T8
	  ON T7.[Id_Partida] = T8.[Id_Partida] AND T7.[Id_Capitulo] = T8.[Id_Capitulo] AND T7.[Clave] = T8.[Clave]
	  AND T7.[Importe] = T8.[Importe]
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Presupuestos_Partidas]) T9
	  ON T8.[Id_Partida] = T9.[Id_Partida] AND T8.[Id_Capitulo] = T9.[Id_Capitulo] AND T8.[Clave] = T9.[Clave]
	  AND T8.[Importe] = T9.[Importe]
	  WHERE T9.[Id_Partida]  IS NOT NULL;
