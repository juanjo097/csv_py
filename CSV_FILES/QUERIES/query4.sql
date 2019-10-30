/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Estimacion_Deduccion]
      ,[Id_Estimacion]
      ,[Id_Descuento]
      ,[Monto_Deduccion]
  FROM [WSICOM_2018].[dbo].[Tbl_Estimaciones_Deducciones]

  SELECT
	   T1.[Id_Estimacion_Deduccion] IED2018
      ,T1.[Id_Estimacion] IE2018

	  ,T2.[Id_Estimacion_Deduccion] IED2017
      ,T2.[Id_Estimacion] IE2017

	  ,T3.[Id_Estimacion_Deduccion] IED2016
      ,T3.[Id_Estimacion] IE2016

	  ,T4.[Id_Estimacion_Deduccion] IED2015
      ,T4.[Id_Estimacion] IE2015

	  ,T5.[Id_Estimacion_Deduccion] IED2014
      ,T5.[Id_Estimacion] IE2014

	  ,T6.[Id_Estimacion_Deduccion] IED2013
      ,T6.[Id_Estimacion] IE2013

	  ,T7.[Id_Estimacion_Deduccion] IED2012
      ,T7.[Id_Estimacion] IE2012

	  ,T8.[Id_Estimacion_Deduccion] IED2011
      ,T8.[Id_Estimacion] IE2011

	  ,T9.[Id_Estimacion_Deduccion]
      ,T9.[Id_Estimacion]
      ,T9.[Id_Descuento]
      ,T9.[Monto_Deduccion]
 FROM 
 (SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Estimaciones_Deducciones]) T1
 FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Estimaciones_Deducciones]) T2
  ON T1.[Id_Estimacion_Deduccion] = T2.[Id_Estimacion_Deduccion] AND T1.[Id_Estimacion] = T2.[Id_Estimacion]
  AND T1.[Id_Descuento] = T2.[Id_Descuento]
  FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Estimaciones_Deducciones]) T3
  ON T2.[Id_Estimacion_Deduccion] = T3.[Id_Estimacion_Deduccion] AND T2.[Id_Estimacion] = T3.[Id_Estimacion]
  AND T2.[Id_Descuento] = T3.[Id_Descuento]
  FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Estimaciones_Deducciones]) T4
  ON T3.[Id_Estimacion_Deduccion] = T4.[Id_Estimacion_Deduccion] AND T3.[Id_Estimacion] = T4.[Id_Estimacion]
  AND T3.[Id_Descuento] = T4.[Id_Descuento]
  FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Estimaciones_Deducciones]) T5
  ON T4.[Id_Estimacion_Deduccion] = T5.[Id_Estimacion_Deduccion] AND T4.[Id_Estimacion] = T5.[Id_Estimacion]
  AND T4.[Id_Descuento] = T5.[Id_Descuento]
  FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Estimaciones_Deducciones]) T6
  ON T5.[Id_Estimacion_Deduccion] = T6.[Id_Estimacion_Deduccion] AND T5.[Id_Estimacion] = T6.[Id_Estimacion]
  AND T5.[Id_Descuento] = T6.[Id_Descuento]
  FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Estimaciones_Deducciones]) T7
  ON T6.[Id_Estimacion_Deduccion] = T7.[Id_Estimacion_Deduccion] AND T6.[Id_Estimacion] = T7.[Id_Estimacion]
  AND T6.[Id_Descuento] = T7.[Id_Descuento]
  FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Estimaciones_Deducciones]) T8
  ON T7.[Id_Estimacion_Deduccion] = T8.[Id_Estimacion_Deduccion] AND T7.[Id_Estimacion] = T8.[Id_Estimacion]
  AND T7.[Id_Descuento] = T8.[Id_Descuento]
  FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Estimaciones_Deducciones]) T9
  ON T8.[Id_Estimacion_Deduccion] = T9.[Id_Estimacion_Deduccion] AND T8.[Id_Estimacion] = T9.[Id_Estimacion]
  AND T8.[Id_Descuento] = T9.[Id_Descuento]
  WHERE T9.[Id_Descuento] IS NOT NULL;