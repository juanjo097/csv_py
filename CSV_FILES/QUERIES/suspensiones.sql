/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Suspension]
      ,[Id_Contrato]
      ,[Oficio_Suspension]
      ,[Fecha_Suspension]
      ,[Observaciones_Suspension]
      ,[Oficio_Reinicio]
      ,[Fecha_Reinicio]
      ,[Observaciones_Reinicio]
      ,[Fecha_Nuevo_Termino]
      ,[Fecha_Oficio_Suspension]
      ,[Fecha_Oficio_Reinicio]
  FROM [WSICOM_2017].[dbo].[Tbl_Suspensiones]

  SELECT 
	   T1.[Id_Suspension]
      ,T1.[Id_Contrato]
      ,T1.[Oficio_Suspension]
		
	  ,T2.[Id_Suspension]
      ,T2.[Id_Contrato]
      ,T2.[Oficio_Suspension]

	  ,T3.[Id_Suspension]
      ,T3.[Id_Contrato]
      ,T3.[Oficio_Suspension]

	  ,T4.[Id_Suspension]
      ,T4.[Id_Contrato]
      ,T4.[Oficio_Suspension]

	  ,T5.[Id_Suspension]
      ,T5.[Id_Contrato]
      ,T5.[Oficio_Suspension]

	  ,T6.[Id_Suspension]
      ,T6.[Id_Contrato]
      ,T6.[Oficio_Suspension]

	  ,T7.[Id_Suspension]
      ,T7.[Id_Contrato]
      ,T7.[Oficio_Suspension]

	  ,T8.[Id_Suspension]
      ,T8.[Id_Contrato]
      ,T8.[Oficio_Suspension]

	  ,T9.[Id_Suspension]
      ,T9.[Id_Contrato]
      ,T9.[Oficio_Suspension]
      ,T9.[Fecha_Suspension]
      ,REPLACE(REPLACE(T9.[Observaciones_Suspension]   , CHAR(13), ''), CHAR(10), '') Observaciones_Suspension
      ,T9.[Oficio_Reinicio]
      ,T9.[Fecha_Reinicio]
      ,REPLACE(REPLACE(T9.[Observaciones_Reinicio]  , CHAR(13), ''), CHAR(10), '') Observaciones_Reinicio
      ,T9.[Fecha_Nuevo_Termino]
      ,T9.[Fecha_Oficio_Suspension]
      ,T9.[Fecha_Oficio_Reinicio]
  FROM 
  (SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Suspensiones]) T1
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Suspensiones]) T2
  ON T1.[Id_Suspension] = T2.[Id_Suspension] AND T1.[Id_Contrato] = T2.[Id_Contrato] 
  AND T1.[Oficio_Suspension] = T2.[Oficio_Suspension]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Suspensiones]) T3
  ON T2.[Id_Suspension] = T3.[Id_Suspension] AND T2.[Id_Contrato] = T3.[Id_Contrato] 
  AND T2.[Oficio_Suspension] = T3.[Oficio_Suspension]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Suspensiones]) T4
  ON T3.[Id_Suspension] = T4.[Id_Suspension] AND T3.[Id_Contrato] = T4.[Id_Contrato] 
  AND T3.[Oficio_Suspension] = T4.[Oficio_Suspension]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Suspensiones]) T5
  ON T4.[Id_Suspension] = T5.[Id_Suspension] AND T4.[Id_Contrato] = T5.[Id_Contrato] 
  AND T4.[Oficio_Suspension] = T5.[Oficio_Suspension]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Suspensiones]) T6
  ON T5.[Id_Suspension] = T6.[Id_Suspension] AND T5.[Id_Contrato] = T6.[Id_Contrato] 
  AND T5.[Oficio_Suspension] = T6.[Oficio_Suspension]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Suspensiones]) T7
  ON T6.[Id_Suspension] = T7.[Id_Suspension] AND T6.[Id_Contrato] = T7.[Id_Contrato] 
  AND T6.[Oficio_Suspension] = T7.[Oficio_Suspension]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Suspensiones]) T8
  ON T7.[Id_Suspension] = T8.[Id_Suspension] AND T7.[Id_Contrato] = T8.[Id_Contrato] 
  AND T7.[Oficio_Suspension] = T8.[Oficio_Suspension]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Suspensiones]) T9
  ON T8.[Id_Suspension] = T9.[Id_Suspension] AND T8.[Id_Contrato] = T9.[Id_Contrato] 
  AND T8.[Oficio_Suspension] = T9.[Oficio_Suspension]
  WHERE T9.[Id_Suspension] IS NOT NULL;