/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Descuento_Adicional]
      ,[Id_Estimacion]
      ,[Nombre]
      ,[Importe]
  FROM [WSICOM_2017].[dbo].[Tbl_Estimaciones_Descuentos_Adicionales]

  SELECT
	   T1.[Id_Descuento_Adicional] IDA2018
      ,T1.[Id_Estimacion] IE2018

	  ,T2.[Id_Descuento_Adicional] IDA2017
      ,T2.[Id_Estimacion] IE2017

	  ,T3.[Id_Descuento_Adicional] IDA2016
      ,T3.[Id_Estimacion] IE2016

	  ,T4.[Id_Descuento_Adicional] IDA2015
      ,T4.[Id_Estimacion] IE2015

	  ,T5.[Id_Descuento_Adicional] IDA2014
      ,T5.[Id_Estimacion] IE2014

	  ,T6.[Id_Descuento_Adicional] IDA2013
      ,T6.[Id_Estimacion] IE2013
	  
	  ,T7.[Id_Descuento_Adicional] IDA2012
      ,T7.[Id_Estimacion] IE2012

	  ,T8.[Id_Descuento_Adicional] IDA2011
      ,T8.[Id_Estimacion] IE2011

	  ,T9.[Id_Descuento_Adicional]
      ,T9.[Id_Estimacion]
      ,T9.[Nombre]
      ,T9.[Importe]
FROM 
(SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Estimaciones_Descuentos_Adicionales]) T1
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Estimaciones_Descuentos_Adicionales]) T2
ON T1.[Id_Descuento_Adicional] = T2.[Id_Descuento_Adicional] AND T1.[Id_Estimacion] = T2.[Id_Estimacion]
AND T1.[Nombre] = T2.[Nombre]
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Estimaciones_Descuentos_Adicionales]) T3
ON T2.[Id_Descuento_Adicional] = T3.[Id_Descuento_Adicional] AND T2.[Id_Estimacion] = T3.[Id_Estimacion]
AND T2.[Nombre] = T3.[Nombre]
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Estimaciones_Descuentos_Adicionales]) T4
ON T3.[Id_Descuento_Adicional] = T4.[Id_Descuento_Adicional] AND T3.[Id_Estimacion] = T4.[Id_Estimacion]
AND T3.[Nombre] = T4.[Nombre]
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Estimaciones_Descuentos_Adicionales]) T5
ON T4.[Id_Descuento_Adicional] = T5.[Id_Descuento_Adicional] AND T4.[Id_Estimacion] = T5.[Id_Estimacion]
AND T4.[Nombre] = T5.[Nombre]
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Estimaciones_Descuentos_Adicionales]) T6
ON T5.[Id_Descuento_Adicional] = T6.[Id_Descuento_Adicional] AND T5.[Id_Estimacion] = T6.[Id_Estimacion]
AND T5.[Nombre] = T6.[Nombre]

FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Estimaciones_Descuentos_Adicionales]) T7
ON T6.[Id_Descuento_Adicional] = T7.[Id_Descuento_Adicional] AND T6.[Id_Estimacion] = T7.[Id_Estimacion]
AND T6.[Nombre] = T7.[Nombre]

FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Estimaciones_Descuentos_Adicionales]) T8
ON T7.[Id_Descuento_Adicional] = T8.[Id_Descuento_Adicional] AND T7.[Id_Estimacion] = T8.[Id_Estimacion]
AND T7.[Nombre] = T8.[Nombre]

FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Estimaciones_Descuentos_Adicionales]) T9
ON T8.[Id_Descuento_Adicional] = T9.[Id_Descuento_Adicional] AND T8.[Id_Estimacion] = T9.[Id_Estimacion]
AND T8.[Nombre] = T9.[Nombre]
WHERE T9.[Id_Descuento_Adicional] IS NOT NULL;

