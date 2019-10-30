/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Contrato_Ampliacion]
      ,[Id_Contrato]
      ,[Numero_Ampliacion]
      ,[Fecha_Firma_Ampliacion]
      ,[Fecha_Inicio]
      ,[Fecha_Termino]
      ,[Importe]
      ,[Porcentaje_Anticipo]
      ,[Importe_Anticipo]
      ,[Id_Formato_Ampliacion]
      ,[Id_Presupuesto]
  FROM [WSICOM_2018].[dbo].[Tbl_Contratos_Ampliaciones];

	  SELECT 
		 T1.[Id_Contrato_Ampliacion] ICA2018
		,T1.[Id_Contrato] IC2018
		,T1.[Numero_Ampliacion] NA2018

		,T2.[Id_Contrato_Ampliacion] ICA2017
		,T2.[Id_Contrato] IC2017
		,T2.[Numero_Ampliacion] NA2017

		,T3.[Id_Contrato_Ampliacion] ICA2016
		,T3.[Id_Contrato] IC2016
		,T3.[Numero_Ampliacion] NA2016

		,T4.[Id_Contrato_Ampliacion] ICA2015
		,T4.[Id_Contrato] IC2015
		,T4.[Numero_Ampliacion] NA2015

		,T5.[Id_Contrato_Ampliacion] ICA2014
		,T5.[Id_Contrato] IC2014
		,T5.[Numero_Ampliacion] NA2014

		,T6.[Id_Contrato_Ampliacion] ICA2013
		,T6.[Id_Contrato] IC2013
		,T6.[Numero_Ampliacion] NA2013

		,T7.[Id_Contrato_Ampliacion] ICA2012
		,T7.[Id_Contrato] IC2012
		,T7.[Numero_Ampliacion] NA2012

		,T8.[Id_Contrato_Ampliacion]
		,T8.[Id_Contrato]
		,T8.[Numero_Ampliacion]
		,T8.[Fecha_Firma_Ampliacion]
		,T8.[Fecha_Inicio]
		,T8.[Fecha_Termino]
		,T8.[Importe]
		,T8.[Porcentaje_Anticipo]
		,T8.[Importe_Anticipo]
		,T8.[Id_Formato_Ampliacion]
		,T8.[Id_Presupuesto]

		

	FROM 
	  (SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Contratos_Ampliaciones]) T1
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Contratos_Ampliaciones]) T2
	  ON T1.[Id_Contrato_Ampliacion] = T2.[Id_Contrato_Ampliacion] AND T1.[Id_Contrato] = T2.[Id_Contrato] AND T1.[Numero_Ampliacion] = T2.[Numero_Ampliacion]
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Contratos_Ampliaciones]) T3
	  ON T2.[Id_Contrato_Ampliacion] = T3.[Id_Contrato_Ampliacion] AND T2.[Id_Contrato] = T3.[Id_Contrato] AND T2.[Numero_Ampliacion] = T3.[Numero_Ampliacion]
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Contratos_Ampliaciones]) T4
	  ON T3.[Id_Contrato_Ampliacion] = T4.[Id_Contrato_Ampliacion] AND T3.[Id_Contrato] = T4.[Id_Contrato] AND T3.[Numero_Ampliacion] = T4.[Numero_Ampliacion]
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Contratos_Ampliaciones]) T5
	  ON T4.[Id_Contrato_Ampliacion] = T5.[Id_Contrato_Ampliacion] AND T4.[Id_Contrato] = T5.[Id_Contrato] AND T4.[Numero_Ampliacion] = T5.[Numero_Ampliacion]  
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Contratos_Ampliaciones]) T6
	  ON T5.[Id_Contrato_Ampliacion] = T6.[Id_Contrato_Ampliacion] AND T5.[Id_Contrato] = T6.[Id_Contrato] AND T5.[Numero_Ampliacion] = T6.[Numero_Ampliacion]  	  
	  FULL OUTER JOIN
	  (SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Contratos_Ampliaciones]) T7
	  ON T6.[Id_Contrato_Ampliacion] = T7.[Id_Contrato_Ampliacion] AND T6.[Id_Contrato] = T7.[Id_Contrato] AND T6.[Numero_Ampliacion] = T7.[Numero_Ampliacion]  	    	  
	  FULL OUTER JOIN 
	  (SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Contratos_Ampliaciones]) T8
	  ON T7.[Id_Contrato_Ampliacion] = T8.[Id_Contrato_Ampliacion] AND T7.[Id_Contrato] = T8.[Id_Contrato] AND T7.[Numero_Ampliacion] = T8.[Numero_Ampliacion]  	    	  
	  WHERE T8.[Id_Contrato_Ampliacion] IS NOT NULL;