/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Contrato_Descuento]
      ,[Id_Contrato]
      ,[Id_Descuento]
      ,[Importe]
  FROM [WSICOM_2010].[dbo].[Tbl_Contratos_Descuentos]

 SELECT 
	   T1.[Id_Contrato_Descuento]
      ,T1.[Id_Contrato]


	  ,T2.[Id_Contrato_Descuento]
      ,T2.[Id_Contrato]


	  ,T3.[Id_Contrato_Descuento]
      ,T3.[Id_Contrato]


	  ,T3.[Id_Contrato_Descuento]
      ,T3.[Id_Contrato]

	  ,T4.[Id_Contrato_Descuento]
      ,T4.[Id_Contrato]

	  ,T5.[Id_Contrato_Descuento]
      ,T5.[Id_Contrato]

	  ,T6.[Id_Contrato_Descuento]
      ,T6.[Id_Contrato]

	  ,T7.[Id_Contrato_Descuento]
      ,T7.[Id_Contrato]

	  ,T8.[Id_Contrato_Descuento]
      ,T8.[Id_Contrato]

	  ,T9.[Id_Contrato_Descuento]
      ,T9.[Id_Contrato]
      ,T9.[Id_Descuento]
      ,T9.[Importe]
FROM 
	(SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Contratos_Descuentos]) T1
	FULL OUTER JOIN 
	(SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Contratos_Descuentos]) T2
	ON T1.[Id_Contrato_Descuento] = T2.[Id_Contrato_Descuento] AND T1.[Id_Contrato] = T2.[Id_Contrato] AND T1.[Id_Descuento] = T2.[Id_Descuento]
	FULL OUTER JOIN
	(SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Contratos_Descuentos]) T3
	ON T2.[Id_Contrato_Descuento] = T3.[Id_Contrato_Descuento] AND T2.[Id_Contrato] = T3.[Id_Contrato] AND T2.[Id_Descuento] = T3.[Id_Descuento]
	FULL OUTER JOIN 
	(SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Contratos_Descuentos]) T4
	ON T3.[Id_Contrato_Descuento] = T4.[Id_Contrato_Descuento] AND T3.[Id_Contrato] = T4.[Id_Contrato] AND T3.[Id_Descuento] = T4.[Id_Descuento]
	FULL OUTER JOIN 
	(SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Contratos_Descuentos]) T5
	ON T4.[Id_Contrato_Descuento] = T5.[Id_Contrato_Descuento] AND T4.[Id_Contrato] = T5.[Id_Contrato] AND T4.[Id_Descuento] = T5.[Id_Descuento]
	FULL OUTER JOIN 
	(SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Contratos_Descuentos]) T6
	ON T5.[Id_Contrato_Descuento] = T6.[Id_Contrato_Descuento] AND T5.[Id_Contrato] = T6.[Id_Contrato] AND T5.[Id_Descuento] = T6.[Id_Descuento]
	FULL OUTER JOIN 
	(SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Contratos_Descuentos]) T7
	ON T6.[Id_Contrato_Descuento] = T7.[Id_Contrato_Descuento] AND T6.[Id_Contrato] = T7.[Id_Contrato] AND T6.[Id_Descuento] = T7.[Id_Descuento]
	FULL OUTER JOIN 
	(SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Contratos_Descuentos]) T8
	ON T7.[Id_Contrato_Descuento] = T8.[Id_Contrato_Descuento] AND T7.[Id_Contrato] = T8.[Id_Contrato] AND T7.[Id_Descuento] = T8.[Id_Descuento]
	FULL OUTER JOIN 
	(SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Contratos_Descuentos]) T9
	ON T8.[Id_Contrato_Descuento] = T9.[Id_Contrato_Descuento] AND T8.[Id_Contrato] = T9.[Id_Contrato] AND T8.[Id_Descuento] = T9.[Id_Descuento]
	WHERE T9.[Id_Contrato_Descuento] IS NOT NULL;