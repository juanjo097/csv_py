/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  
	   [Id_Contrato_Recurso]
      ,[Id_Contrato]
      ,[Id_Recurso_Partida]
      ,[Porcentaje_Aportacion]
      ,[Importe_Autorizado]
      ,[Id_Contrato_Ampliacion]
  FROM [WSICOM_2018].[dbo].[Tbl_Contratos_Recursos];

  SELECT 
	   T1.[Id_Contrato_Recurso] ICR2018
      ,T1.[Id_Contrato] IC2018
      ,T1.[Id_Recurso_Partida] IRP2018

	  ,T2.[Id_Contrato_Recurso] ICR2017
      ,T2.[Id_Contrato] IC2017
      ,T2.[Id_Recurso_Partida] IRP2017

	  ,T3.[Id_Contrato_Recurso] ICR2016
      ,T3.[Id_Contrato] IC2016
      ,T3.[Id_Recurso_Partida] IRP2016

	  ,T4.[Id_Contrato_Recurso] ICR2015
      ,T4.[Id_Contrato] IC2015
      ,T4.[Id_Recurso_Partida] IRP2015

	  ,T5.[Id_Contrato_Recurso] ICR2014
      ,T5.[Id_Contrato] IC2014
      ,T5.[Id_Recurso_Partida] IRP2014

	  ,T6.[Id_Contrato_Recurso] ICR2013
      ,T6.[Id_Contrato] IC2013
      ,T6.[Id_Recurso_Partida] IRP2013

	  ,T7.[Id_Contrato_Recurso] ICR2012
      ,T7.[Id_Contrato] IC2012
      ,T7.[Id_Recurso_Partida] IRP2012

	  ,T8.[Id_Contrato_Recurso] ICR2011
      ,T8.[Id_Contrato] IC2011
      ,T8.[Id_Recurso_Partida] IRP2011

	  ,T9.[Id_Contrato_Recurso] 
      ,T9.[Id_Contrato]
      ,T9.[Id_Recurso_Partida]
      ,T9.[Porcentaje_Aportacion]
      ,T9.[Importe_Autorizado]
      ,T9.[Id_Contrato_Ampliacion]

FROM 
(SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Contratos_Recursos]) T1
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Contratos_Recursos]) T2
ON T1.[Id_Contrato_Recurso] = T2.[Id_Contrato_Recurso] AND T1.[Id_Contrato] = T2.[Id_Contrato] AND T1.[Id_Recurso_Partida] = T2.[Id_Recurso_Partida]
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Contratos_Recursos]) T3
ON T2.[Id_Contrato_Recurso] = T3.[Id_Contrato_Recurso] AND T2.[Id_Contrato] = T3.[Id_Contrato] AND T2.[Id_Recurso_Partida] = T3.[Id_Recurso_Partida]
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Contratos_Recursos]) T4
ON T3.[Id_Contrato_Recurso] = T4.[Id_Contrato_Recurso] AND T3.[Id_Contrato] = T4.[Id_Contrato] AND T3.[Id_Recurso_Partida] = T4.[Id_Recurso_Partida]
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Contratos_Recursos]) T5
ON T4.[Id_Contrato_Recurso] = T5.[Id_Contrato_Recurso] AND T4.[Id_Contrato] = T5.[Id_Contrato] AND T4.[Id_Recurso_Partida] = T5.[Id_Recurso_Partida]
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Contratos_Recursos]) T6
ON T5.[Id_Contrato_Recurso] = T6.[Id_Contrato_Recurso] AND T5.[Id_Contrato] = T6.[Id_Contrato] AND T5.[Id_Recurso_Partida] = T6.[Id_Recurso_Partida]
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Contratos_Recursos]) T7
ON T6.[Id_Contrato_Recurso] = T7.[Id_Contrato_Recurso] AND T6.[Id_Contrato] = T7.[Id_Contrato] AND T6.[Id_Recurso_Partida] = T7.[Id_Recurso_Partida]
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Contratos_Recursos]) T8
ON T7.[Id_Contrato_Recurso] = T8.[Id_Contrato_Recurso] AND T7.[Id_Contrato] = T8.[Id_Contrato] AND T7.[Id_Recurso_Partida] = T8.[Id_Recurso_Partida]
FULL OUTER JOIN
(SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Contratos_Recursos]) T9
ON T8.[Id_Contrato_Recurso] = T9.[Id_Contrato_Recurso] AND T8.[Id_Contrato] = T9.[Id_Contrato] AND T8.[Id_Recurso_Partida] = T9.[Id_Recurso_Partida]
WHERE T9.[Id_Contrato_Recurso]  IS NOT NULL;
