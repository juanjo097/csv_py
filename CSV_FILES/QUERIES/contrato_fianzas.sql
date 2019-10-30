/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Contrato_Fianza]
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
  FROM [WSICOM_2010].[dbo].[Tbl_Contratos_Fianzas];

  SELECT 
	   T1.[Id_Contrato_Fianza]
      ,T1.[Id_Contrato]
      ,T1.[Id_Fianza]
      ,T1.[Numero_Fianza]
      ,T1.[Fecha_Emision]
      ,T1.[Fecha_Recepcion]
      ,T1.[Nombre_Afianzadora]
      ,T1.[Fecha_Liberacion]
      ,T1.[Id_Contrato_Ampliacion]
      ,T1.[Descripcion_Fianza]
      ,T1.[Importe_Fianza]
      ,T1.[Observaciones_Fianza]
	FROM
	(SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Contratos_Fianzas]) T1
	FULL OUTER JOIN 
	(SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Contratos_Fianzas])


