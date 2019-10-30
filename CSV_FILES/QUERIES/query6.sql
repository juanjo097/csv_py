/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Estimacion_Amortizacion_Desglose]
      ,[Id_Estimacion]
      ,[Id_Contrato_Ampliacion]
      ,[Concepto]
      ,[Importe_Contratado]
      ,[Actual]
      ,[Anterior]
      ,[Acumulado]
      ,[Por_Ejercer]
      ,[Porcentaje_Anticipo]
      ,[Importe_Anticipo]
      ,[Actual_Amortizacion]
      ,[Anterior_Amortizacion]
      ,[Acumulado_Amortizacion]
      ,[Por_Amortizar]
  FROM [WSICOM_2018].[dbo].[Tbl_Estimaciones_Amortizaciones_Desglose]

  SELECT 
	   T1.[Id_Estimacion_Amortizacion_Desglose] IEAD2018
      ,T1.[Id_Estimacion] IE2018
      ,T1.[Id_Contrato_Ampliacion] ICA2018

	  ,T2.[Id_Estimacion_Amortizacion_Desglose] IEAD2017
      ,T2.[Id_Estimacion] IE2017
      ,T2.[Id_Contrato_Ampliacion] ICA2017

	  ,T3.[Id_Estimacion_Amortizacion_Desglose] IEAD2016
      ,T3.[Id_Estimacion] IE2016
      ,T3.[Id_Contrato_Ampliacion] ICA2016

	  ,T4.[Id_Estimacion_Amortizacion_Desglose] IEAD2015
      ,T4.[Id_Estimacion] IE2015
      ,T4.[Id_Contrato_Ampliacion] ICA2015

	  ,T5.[Id_Estimacion_Amortizacion_Desglose] IEAD2014
      ,T5.[Id_Estimacion] IE2014
      ,T5.[Id_Contrato_Ampliacion] ICA2014

	  ,T6.[Id_Estimacion_Amortizacion_Desglose] IEAD2013
      ,T6.[Id_Estimacion] IE2013
      ,T6.[Id_Contrato_Ampliacion] ICA2013

	  ,T7.[Id_Estimacion_Amortizacion_Desglose]		IEAD2012
      ,T7.[Id_Estimacion] IE2012
      ,T7.[Id_Contrato_Ampliacion] ICA2012

	  ,T8.[Id_Estimacion_Amortizacion_Desglose] IEAD2011
      ,T8.[Id_Estimacion] IE2011
      ,T8.[Id_Contrato_Ampliacion] ICA2011

	  ,T9.[Id_Estimacion_Amortizacion_Desglose]
      ,T9.[Id_Estimacion]
      ,T9.[Id_Contrato_Ampliacion]
      ,T9.[Concepto]
      ,T9.[Importe_Contratado]
      ,T9.[Actual]
      ,T9.[Anterior]
      ,T9.[Acumulado]
      ,T9.[Por_Ejercer]
      ,T9.[Porcentaje_Anticipo]
      ,T9.[Importe_Anticipo]
      ,T9.[Actual_Amortizacion]
      ,T9.[Anterior_Amortizacion]
      ,T9.[Acumulado_Amortizacion]
      ,T9.[Por_Amortizar]

FROM 
	(SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Estimaciones_Amortizaciones_Desglose]) T1
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Estimaciones_Amortizaciones_Desglose]) T2
	ON T1.[Id_Estimacion_Amortizacion_Desglose] = T2.[Id_Estimacion_Amortizacion_Desglose] 
	AND T1.[Id_Estimacion] = T2.[Id_Estimacion] AND T1.[Id_Contrato_Ampliacion] = T2.[Id_Contrato_Ampliacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Estimaciones_Amortizaciones_Desglose]) T3
	ON T2.[Id_Estimacion_Amortizacion_Desglose] = T3.[Id_Estimacion_Amortizacion_Desglose] 
	AND T2.[Id_Estimacion] = T3.[Id_Estimacion] AND T2.[Id_Contrato_Ampliacion] = T3.[Id_Contrato_Ampliacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Estimaciones_Amortizaciones_Desglose]) T4
	ON T3.[Id_Estimacion_Amortizacion_Desglose] = T4.[Id_Estimacion_Amortizacion_Desglose] 
	AND T3.[Id_Estimacion] = T4.[Id_Estimacion] AND T3.[Id_Contrato_Ampliacion] = T4.[Id_Contrato_Ampliacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Estimaciones_Amortizaciones_Desglose]) T5
	ON T4.[Id_Estimacion_Amortizacion_Desglose] = T5.[Id_Estimacion_Amortizacion_Desglose] 
	AND T4.[Id_Estimacion] = T5.[Id_Estimacion] AND T4.[Id_Contrato_Ampliacion] = T5.[Id_Contrato_Ampliacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Estimaciones_Amortizaciones_Desglose]) T6
	ON T5.[Id_Estimacion_Amortizacion_Desglose] = T6.[Id_Estimacion_Amortizacion_Desglose] 
	AND T5.[Id_Estimacion] = T6.[Id_Estimacion] AND T5.[Id_Contrato_Ampliacion] = T6.[Id_Contrato_Ampliacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Estimaciones_Amortizaciones_Desglose]) T7
	ON T6.[Id_Estimacion_Amortizacion_Desglose] = T7.[Id_Estimacion_Amortizacion_Desglose] 
	AND T6.[Id_Estimacion] = T7.[Id_Estimacion] AND T6.[Id_Contrato_Ampliacion] = T7.[Id_Contrato_Ampliacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Estimaciones_Amortizaciones_Desglose]) T8
	ON T7.[Id_Estimacion_Amortizacion_Desglose] = T8.[Id_Estimacion_Amortizacion_Desglose] 
	AND T7.[Id_Estimacion] = T8.[Id_Estimacion] AND T7.[Id_Contrato_Ampliacion] = T8.[Id_Contrato_Ampliacion]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Estimaciones_Amortizaciones_Desglose]) T9
	ON T8.[Id_Estimacion_Amortizacion_Desglose] = T9.[Id_Estimacion_Amortizacion_Desglose] 
	AND T8.[Id_Estimacion] = T9.[Id_Estimacion] AND T8.[Id_Contrato_Ampliacion] = T9.[Id_Contrato_Ampliacion]
	WHERE T9.[Id_Estimacion_Amortizacion_Desglose] IS NOT NULL;