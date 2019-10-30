/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Concepto]
      ,[Id_Partida]
      ,[Tipo_Concepto]
      ,[Clave]
      ,[Descripcion]
      ,[Unidad]
      ,[Cantidad]
      ,[Precio_Unitario]
      ,[Importe]
      ,[Id_Fuera_Catalogo]
      ,[No_Registro_Sicom]
      ,[Reubicado]
      ,[Id_Concepto_Real]
  FROM [WSICOM_2018].[dbo].[Tbl_Presupuestos_Conceptos]

  SELECT 
	   T1.[Id_Concepto]
      ,T1.[Id_Partida]
      ,T1.[Tipo_Concepto]
      ,T1.[Clave]

	  ,T2.[Id_Concepto]
      ,T2.[Id_Partida]
      ,T2.[Tipo_Concepto]
      ,T2.[Clave]

	  ,T3.[Id_Concepto]
      ,T3.[Id_Partida]
      ,T3.[Tipo_Concepto]
      ,T3.[Clave]

	  ,T4.[Id_Concepto]
      ,T4.[Id_Partida]
      ,T4.[Tipo_Concepto]
      ,T4.[Clave]

	  ,T5.[Id_Concepto]
      ,T5.[Id_Partida]
      ,T5.[Tipo_Concepto]
      ,T5.[Clave]

	  ,T6.[Id_Concepto]
      ,T6.[Id_Partida]
      ,T6.[Tipo_Concepto]
      ,T6.[Clave]

	  ,T7.[Id_Concepto]
      ,T7.[Id_Partida]
      ,T7.[Tipo_Concepto]
      ,T7.[Clave]

	  ,T8.[Id_Concepto]
      ,T8.[Id_Partida]
      ,T8.[Tipo_Concepto]
      ,T8.[Clave]

	  ,T9.[Id_Concepto]
      ,T9.[Id_Partida]
      ,T9.[Tipo_Concepto]
      ,T9.[Clave]
      ,REPLACE(REPLACE(T9.[Descripcion] , CHAR(13), ''), CHAR(10), '') Descripcion
      ,T9.[Unidad]
      ,T9.[Cantidad]
      ,T9.[Precio_Unitario]
      ,T9.[Importe]
      ,T9.[Id_Fuera_Catalogo]
      ,T9.[No_Registro_Sicom]
      ,T9.[Reubicado]

  FROM
  (SELECT DISTINCT * FROM  [WSICOM_2018].[dbo].[Tbl_Presupuestos_Conceptos]) T1
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM  [WSICOM_2017].[dbo].[Tbl_Presupuestos_Conceptos]) T2
  ON T1.[Id_Concepto] = T2.[Id_Concepto] AND T1.[Id_Partida] = T2.[Id_Partida] AND T1.[Clave] = T2.[Clave]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM  [WSICOM_2016].[dbo].[Tbl_Presupuestos_Conceptos]) T3
  ON T2.[Id_Concepto] = T3.[Id_Concepto] AND T2.[Id_Partida] = T3.[Id_Partida] AND T2.[Clave] = T3.[Clave]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM  [WSICOM_2015].[dbo].[Tbl_Presupuestos_Conceptos]) T4
  ON T3.[Id_Concepto] = T4.[Id_Concepto] AND T3.[Id_Partida] = T4.[Id_Partida] AND T3.[Clave] = T4.[Clave]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM  [WSICOM_2014].[dbo].[Tbl_Presupuestos_Conceptos]) T5
  ON T4.[Id_Concepto] = T5.[Id_Concepto] AND T4.[Id_Partida] = T5.[Id_Partida] AND T4.[Clave] = T5.[Clave]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM  [WSICOM_2013].[dbo].[Tbl_Presupuestos_Conceptos]) T6
  ON T5.[Id_Concepto] = T6.[Id_Concepto] AND T5.[Id_Partida] = T6.[Id_Partida] AND T5.[Clave] = T6.[Clave]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM  [WSICOM_2012].[dbo].[Tbl_Presupuestos_Conceptos]) T7
  ON T6.[Id_Concepto] = T7.[Id_Concepto] AND T6.[Id_Partida] = T7.[Id_Partida] AND T6.[Clave] = T7.[Clave]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM  [WSICOM_2011].[dbo].[Tbl_Presupuestos_Conceptos]) T8
  ON T7.[Id_Concepto] = T8.[Id_Concepto] AND T7.[Id_Partida] = T8.[Id_Partida] AND T7.[Clave] = T8.[Clave]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM  [WSICOM_2010].[dbo].[Tbl_Presupuestos_Conceptos]) T9
  ON T8.[Id_Concepto] = T9.[Id_Concepto] AND T8.[Id_Partida] = T9.[Id_Partida] AND T8.[Clave] = T9.[Clave]
  WHERE T9.[Id_Concepto] IS NOT NULL;