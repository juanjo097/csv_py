/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Prorroga]
      ,[Id_Contrato]
      ,[No_Prorroga]
      ,[Dias_Recorrer]
      ,[Fecha_Nueva]
      ,[Porcentaje]
      ,[Justificacion]
      ,[Numero_Oficio_Contratista]
      ,[Fecha_Oficio_Contratista]
      ,[Numero_Oficio_Autorizacion]
      ,[Fecha_Oficio_Autorizacion]
      ,[Observaciones]
      ,[Fecha_Termino_Ultima_Anterior]
  FROM [WSICOM_2018].[dbo].[Tbl_Prorrogas]

  SELECT 
	   T1.[Id_Prorroga]
      ,T1.[Id_Contrato]
      ,T1.[No_Prorroga]

	  ,T2.[Id_Prorroga]
      ,T2.[Id_Contrato]
      ,T2.[No_Prorroga]

	  ,T3.[Id_Prorroga]
      ,T3.[Id_Contrato]
      ,T3.[No_Prorroga]

	  ,T4.[Id_Prorroga]
      ,T4.[Id_Contrato]
      ,T4.[No_Prorroga]

	  ,T5.[Id_Prorroga]
      ,T5.[Id_Contrato]

	  ,T6.[Id_Prorroga]
      ,T6.[Id_Contrato]

	  ,T7.[Id_Prorroga]
      ,T7.[Id_Contrato]
      ,T7.[Dias_Recorrer]

	  ,T8.[Id_Prorroga]
      ,T8.[Id_Contrato]

	  ,T9.[Id_Prorroga]
      ,T9.[Id_Contrato]
      ,T9.[Dias_Recorrer]
      ,T9.[Fecha_Nueva]
      ,T9.[Porcentaje]
      ,REPLACE(REPLACE(T9.[Justificacion] , CHAR(13), ''), CHAR(10), '') Justificacion
      ,T9.[Numero_Oficio_Contratista]
      ,T9.[Fecha_Oficio_Contratista]
      ,T9.[Numero_Oficio_Autorizacion]
      ,T9.[Fecha_Oficio_Autorizacion]
      ,T9.[Observaciones]
      ,T9.[Fecha_Termino_Ultima_Anterior]

 FROM 
 (SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Prorrogas]) T1
 FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Prorrogas]) T2
 ON T1.[Id_Prorroga] = T2.[Id_Prorroga] AND T1.[Id_Contrato] = T2.[Id_Contrato] 
 AND T1.[No_Prorroga] = T2.[No_Prorroga]
 FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Prorrogas]) T3
 ON T2.[Id_Prorroga] = T3.[Id_Prorroga] AND T2.[Id_Contrato] = T3.[Id_Contrato] 
 AND T2.[No_Prorroga] = T3.[No_Prorroga]
 FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Prorrogas]) T4
 ON T3.[Id_Prorroga] = T4.[Id_Prorroga] AND T3.[Id_Contrato] = T4.[Id_Contrato] 
 AND T3.[No_Prorroga] = T4.[No_Prorroga]
 FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Prorrogas]) T5
 ON T4.[Id_Prorroga] = T5.[Id_Prorroga] AND T4.[Id_Contrato] = T5.[Id_Contrato] 
 AND T4.[No_Prorroga] = T5.[No_Prorroga]
 FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Prorrogas]) T6
 ON T5.[Id_Prorroga] = T6.[Id_Prorroga] AND T5.[Id_Contrato] = T6.[Id_Contrato] 
 AND T5.[No_Prorroga] = T6.[No_Prorroga]
  FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Prorrogas]) T7
 ON T6.[Id_Prorroga] = T7.[Id_Prorroga] AND T6.[Id_Contrato] = T7.[Id_Contrato] 
 AND T6.[No_Prorroga] = T7.[No_Prorroga]
 FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Prorrogas]) T8
 ON T7.[Id_Prorroga] = T8.[Id_Prorroga] AND T7.[Id_Contrato] = T8.[Id_Contrato] 
 AND T7.[No_Prorroga] = T8.[No_Prorroga]
 FULL OUTER JOIN
 (SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Prorrogas]) T9
 ON T8.[Id_Prorroga] = T9.[Id_Prorroga] AND T8.[Id_Contrato] = T9.[Id_Contrato] 
 AND T8.[No_Prorroga] = T9.[No_Prorroga]
 WHERE T9.[Id_Prorroga] IS NOT NULL;
