/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Recalendarizacion]
      ,[Id_Contrato]
      ,[No_Recalendarizacion]
      ,[Tipo_Recalendarizacion]
      ,[Fecha_Deposito]
      ,[Dias_Recorrer]
      ,[Fecha_Inicio_Recalendarizacion]
      ,[Fecha_Termino_Recalendarizacion]
      ,[Numero_Oficio_Contratista]
      ,[Fecha_Oficio_Contratista]
      ,[Numero_Oficio_Autorizacion]
      ,[Fecha_Oficio_Autorizacion]
      ,[Observaciones]
      ,[Fecha_Inicio_Ultima_Anterior]
      ,[Fecha_Termino_Ultima_Anterior]
  FROM [WSICOM_2018].[dbo].[Tbl_Recalendarizaciones]

  SELECT 
       T1.[Id_Recalendarizacion]
      ,T1.[Id_Contrato]
      ,T1.[No_Recalendarizacion]

	  ,T2.[Id_Recalendarizacion]
      ,T2.[Id_Contrato]
      ,T2.[No_Recalendarizacion]

	  ,T3.[Id_Recalendarizacion]
      ,T3.[Id_Contrato]
      ,T3.[No_Recalendarizacion]

	  ,T4.[Id_Recalendarizacion]
      ,T4.[Id_Contrato]
      ,T4.[No_Recalendarizacion]

	  ,T5.[Id_Recalendarizacion]
      ,T5.[Id_Contrato]
      ,T5.[No_Recalendarizacion]

	  ,T6.[Id_Recalendarizacion]
      ,T6.[Id_Contrato]
      ,T6.[No_Recalendarizacion]

	  ,T7.[Id_Recalendarizacion]
      ,T7.[Id_Contrato]
      ,T7.[No_Recalendarizacion]

	  ,T8.[Id_Recalendarizacion]
      ,T8.[Id_Contrato]
      ,T8.[No_Recalendarizacion]

	  ,T9.[Id_Recalendarizacion]
      ,T9.[Id_Contrato]
      ,T9.[No_Recalendarizacion]
      ,T9.[Tipo_Recalendarizacion]
      ,T9.[Fecha_Deposito]
      ,T9.[Dias_Recorrer]
      ,T9.[Fecha_Inicio_Recalendarizacion]
      ,T9.[Fecha_Termino_Recalendarizacion]
      ,T9.[Numero_Oficio_Contratista]
      ,T9.[Fecha_Oficio_Contratista]
      ,T9.[Numero_Oficio_Autorizacion]
      ,T9.[Fecha_Oficio_Autorizacion]
      ,REPLACE(REPLACE(T9.[Observaciones] , CHAR(13), ''), CHAR(10), '') Observaciones
      ,T9.[Fecha_Inicio_Ultima_Anterior]
      ,T9.[Fecha_Termino_Ultima_Anterior]

	FROM 
	(SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Recalendarizaciones]) T1
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Recalendarizaciones]) T2
	ON T1.[Id_Recalendarizacion] = T2.[Id_Recalendarizacion]  AND T1.[Id_Contrato] = T2.[Id_Contrato]
	AND T1.[No_Recalendarizacion] = T2.[No_Recalendarizacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Recalendarizaciones]) T3
	ON T2.[Id_Recalendarizacion] = T3.[Id_Recalendarizacion]  AND T2.[Id_Contrato] = T3.[Id_Contrato]
	AND T2.[No_Recalendarizacion] = T3.[No_Recalendarizacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Recalendarizaciones]) T4
	ON T3.[Id_Recalendarizacion] = T4.[Id_Recalendarizacion]  AND T3.[Id_Contrato] = T4.[Id_Contrato]
	AND T3.[No_Recalendarizacion] = T4.[No_Recalendarizacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Recalendarizaciones]) T5
	ON T4.[Id_Recalendarizacion] = T5.[Id_Recalendarizacion]  AND T4.[Id_Contrato] = T5.[Id_Contrato]
	AND T4.[No_Recalendarizacion] = T5.[No_Recalendarizacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Recalendarizaciones]) T6
	ON T5.[Id_Recalendarizacion] = T6.[Id_Recalendarizacion]  AND T5.[Id_Contrato] = T6.[Id_Contrato]
	AND T5.[No_Recalendarizacion] = T6.[No_Recalendarizacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Recalendarizaciones]) T7
	ON T6.[Id_Recalendarizacion] = T7.[Id_Recalendarizacion]  AND T6.[Id_Contrato] = T7.[Id_Contrato]
	AND T6.[No_Recalendarizacion] = T7.[No_Recalendarizacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Recalendarizaciones]) T8
	ON T7.[Id_Recalendarizacion] = T8.[Id_Recalendarizacion]  AND T7.[Id_Contrato] = T8.[Id_Contrato]
	AND T7.[No_Recalendarizacion] = T8.[No_Recalendarizacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Recalendarizaciones]) T9
	ON T8.[Id_Recalendarizacion] = T9.[Id_Recalendarizacion]  AND T8.[Id_Contrato] = T9.[Id_Contrato]
	AND T8.[No_Recalendarizacion] = T9.[No_Recalendarizacion]
	WHERE T9.[Id_Recalendarizacion]  IS NOT NULL;