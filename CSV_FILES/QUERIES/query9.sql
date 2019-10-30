/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [Id_Contrato_Fianza]
      ,[Id_Contrato]
      ,[Id_Fianza]
      ,[Numero_Fianza]
      ,[Fecha_Emision]
      ,[Fecha_Recepcion]
      ,[Nombre_Afianzadora]
      ,[Fecha_Liberacion]
      ,[Id_Contrato_Ampliacion]
      ,[Descripcion_Fianza]
      ,[Importe_Fianza]
      ,[Observaciones_Fianza]
      ,[Periodo]
      ,[Num_Rows]
  FROM [WSICOM_2018].[dbo].[Tbl_Contratos_Fianzas];

  SELECT 
	   T1.[Id_Contrato_Fianza] ICF2018
      ,T1.[Id_Contrato] IC2018
      ,T1.[Id_Fianza] IF2018

	  ,T2.[Id_Contrato_Fianza] ICF2017
      ,T2.[Id_Contrato] IC2017
      ,T2.[Id_Fianza] IF2017

	  ,T3.[Id_Contrato_Fianza] ICF2016
      ,T3.[Id_Contrato] IC2016
      ,T3.[Id_Fianza] IF2016

	  ,T4.[Id_Contrato_Fianza] ICF2015
      ,T4.[Id_Contrato] IC2015
      ,T4.[Id_Fianza] IF2015

	  ,T5.[Id_Contrato_Fianza] ICF2014
      ,T5.[Id_Contrato] IC2014
      ,T5.[Id_Fianza] IF2014

	  ,T6.[Id_Contrato_Fianza] ICF2013
      ,T6.[Id_Contrato] IC2013
      ,T6.[Id_Fianza] IF2013

	  ,T7.[Id_Contrato_Fianza] ICF2012
      ,T7.[Id_Contrato] IC2012
      ,T7.[Id_Fianza] IF2012

	  ,T8.[Id_Contrato_Fianza] IDF2011
      ,T8.[Id_Contrato] IC2011
      ,T8.[Id_Fianza] IF2011

	  ,T9.[Id_Contrato_Fianza] 
      ,T9.[Id_Contrato]
      ,T9.[Id_Fianza]
      ,T9.[Numero_Fianza]
      ,T9.[Fecha_Emision]
      ,T9.[Fecha_Recepcion]
      ,T9.[Nombre_Afianzadora]
      ,T9.[Fecha_Liberacion]
      ,T9.[Id_Contrato_Ampliacion]
      ,T9.[Descripcion_Fianza]
      ,T9.[Importe_Fianza]
      ,T9.[Observaciones_Fianza]
  FROM
  (SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Contratos_Fianzas]) T1
  FULL OUTER JOIN 
  (SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Contratos_Fianzas]) T2
  ON T1.[Id_Contrato_Fianza] = T2.[Id_Contrato_Fianza] AND T1.[Id_Contrato] = T2.[Id_Contrato] AND T1.[Id_Fianza] = T2.[Id_Fianza]
  FULL OUTER JOIN 
  (SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Contratos_Fianzas]) T3
  ON T2.[Id_Contrato_Fianza] = T3.[Id_Contrato_Fianza] AND T2.[Id_Contrato] = T3.[Id_Contrato] AND T2.[Id_Fianza] = T3.[Id_Fianza]
  FULL OUTER JOIN 
  (SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Contratos_Fianzas]) T4
  ON T3.[Id_Contrato_Fianza] = T4.[Id_Contrato_Fianza] AND T3.[Id_Contrato] = T4.[Id_Contrato] AND T3.[Id_Fianza] = T4.[Id_Fianza]  
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Contratos_Fianzas]) T5
  ON T4.[Id_Contrato_Fianza] = T5.[Id_Contrato_Fianza] AND T4.[Id_Contrato] = T5.[Id_Contrato] AND T4.[Id_Fianza] = T5.[Id_Fianza]  
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Contratos_Fianzas]) T6
  ON T5.[Id_Contrato_Fianza] = T6.[Id_Contrato_Fianza] AND T5.[Id_Contrato] = T6.[Id_Contrato] AND T5.[Id_Fianza] = T6.[Id_Fianza]  
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM  [WSICOM_2012].[dbo].[Tbl_Contratos_Fianzas]) T7
  ON T6.[Id_Contrato_Fianza] = T7.[Id_Contrato_Fianza] AND T6.[Id_Contrato] = T7.[Id_Contrato] AND T6.[Id_Fianza] = T7.[Id_Fianza]  
  FULL OUTER JOIN 
  (SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Contratos_Fianzas]) T8
  ON T7.[Id_Contrato_Fianza] = T8.[Id_Contrato_Fianza] AND T7.[Id_Contrato] = T8.[Id_Contrato] AND T7.[Id_Fianza] = T8.[Id_Fianza]  
  FULL OUTER JOIN 
  (SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Contratos_Fianzas]) T9
  ON T8.[Id_Contrato_Fianza] = T9.[Id_Contrato_Fianza] AND T8.[Id_Contrato] = T9.[Id_Contrato] AND T8.[Id_Fianza] = T9.[Id_Fianza]  
  WHERE T9.[Id_Contrato_Fianza] IS NOT NULL;
   