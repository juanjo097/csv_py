/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Estimacion_Concepto]
      ,[Id_Estimacion]
      ,[Id_Concepto]
      ,[Contratado]
      ,[Actual]
      ,[Anterior]
      ,[Acumulado]
      ,[Por_Estimar]
      ,[Precio_Unitario]
      ,[Importe]
      ,[Excedente]
      ,[Excedente_Acumulado]
  FROM [WSICOM_2018].[dbo].[Tbl_Estimaciones_Conceptos];


  SELECT 
	   T1.[Id_Estimacion_Concepto] IEC2018
      ,T1.[Id_Estimacion] IE2018
      ,T1.[Id_Concepto] IC2018

	  ,T2.[Id_Estimacion_Concepto] IEC2017
      ,T2.[Id_Estimacion] IE2017
      ,T2.[Id_Concepto] IC2017

	  ,T3.[Id_Estimacion_Concepto] IEC2016
      ,T3.[Id_Estimacion] IE2016
      ,T3.[Id_Concepto] IC2016

	  ,T4.[Id_Estimacion_Concepto] IEC2015
      ,T4.[Id_Estimacion] IE2015
      ,T4.[Id_Concepto] IC2015

	  ,T5.[Id_Estimacion_Concepto] IEC2014
      ,T5.[Id_Estimacion] IE2014
      ,T5.[Id_Concepto] IC2014

	  ,T6.[Id_Estimacion_Concepto] IEC2013
      ,T6.[Id_Estimacion] IE2013
      ,T6.[Id_Concepto] IC2013

	  ,T7.[Id_Estimacion_Concepto] ICE2012
      ,T7.[Id_Estimacion] IE2012
      ,T7.[Id_Concepto] IC2012

	  ,T8.[Id_Estimacion_Concepto] IEC2011
      ,T8.[Id_Estimacion] IE2011
      ,T8.[Id_Concepto] IC2011

	  ,T9.[Id_Estimacion_Concepto]
      ,T9.[Id_Estimacion]
      ,T9.[Id_Concepto]
      ,T9.[Contratado]
      ,T9.[Actual]
      ,T9.[Anterior]
      ,T9.[Acumulado]
      ,T9.[Por_Estimar]
      ,T9.[Precio_Unitario]
      ,T9.[Importe]
      ,T9.[Excedente]
      ,T9.[Excedente_Acumulado]

	FROM
	(SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Estimaciones_Conceptos]) T1
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Estimaciones_Conceptos]) T2
	ON T1.[Id_Estimacion_Concepto] = T2.[Id_Estimacion_Concepto] 
	AND T1.[Id_Estimacion] = T2.[Id_Estimacion] AND T1.[Id_Concepto] = T2.[Id_Concepto]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Estimaciones_Conceptos]) T3
	ON T2.[Id_Estimacion_Concepto] = T3.[Id_Estimacion_Concepto] 
	AND T2.[Id_Estimacion] = T3.[Id_Estimacion] AND T3.[Id_Concepto] = T3.[Id_Concepto]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Estimaciones_Conceptos]) T4
	ON T3.[Id_Estimacion_Concepto] = T4.[Id_Estimacion_Concepto] 
	AND T3.[Id_Estimacion] = T4.[Id_Estimacion] AND T3.[Id_Concepto] = T4.[Id_Concepto]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Estimaciones_Conceptos]) T5
	ON T4.[Id_Estimacion_Concepto] = T5.[Id_Estimacion_Concepto] 
	AND T4.[Id_Estimacion] = T5.[Id_Estimacion] AND T5.[Id_Concepto] = T5.[Id_Concepto]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Estimaciones_Conceptos]) T6
	ON T5.[Id_Estimacion_Concepto] = T6.[Id_Estimacion_Concepto] 
	AND T5.[Id_Estimacion] = T6.[Id_Estimacion] AND T5.[Id_Concepto] = T6.[Id_Concepto]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Estimaciones_Conceptos]) T7
	ON T6.[Id_Estimacion_Concepto] = T7.[Id_Estimacion_Concepto] 
	AND T6.[Id_Estimacion] = T7.[Id_Estimacion] AND T6.[Id_Concepto] = T7.[Id_Concepto]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Estimaciones_Conceptos]) T8
	ON T7.[Id_Estimacion_Concepto] = T8.[Id_Estimacion_Concepto] 
	AND T7.[Id_Estimacion] = T8.[Id_Estimacion] AND T7.[Id_Concepto] = T8.[Id_Concepto]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Estimaciones_Conceptos]) T9
	ON T8.[Id_Estimacion_Concepto] = T9.[Id_Estimacion_Concepto] 
	AND T8.[Id_Estimacion] = T9.[Id_Estimacion] AND T8.[Id_Concepto] = T9.[Id_Concepto]
	WHERE T9.[Id_Concepto] IS NOT NULL