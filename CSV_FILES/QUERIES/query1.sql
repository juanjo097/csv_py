/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Obra]
      ,[Año]
      ,[Clave_Obra]
      ,[Nombre]
      ,[Tipo_Precio]
      ,[Id_Sub_Programa]
      ,[Id_Localidad]
      ,[Beneficiarios]
      ,[Id_Convenio]
      ,[Tipo_Obra_Proyecto]
      ,[Id_Sub_Tipo_Obra]
      ,[Observaciones]
      ,[Enviar_Para]
      ,[Id_Oficio_Asignacion_Obra]
  FROM [WSICOM_2018].[dbo].[Tbl_Obras];

  SELECT 
	   T1.[Id_Obra]
      ,T1.[Clave_Obra]
      ,T1.[Nombre]

	  ,T2.[Id_Obra]
      ,T2.[Clave_Obra]
      ,T2.[Nombre]
      
	  ,T3.[Id_Obra]
      ,T3.[Clave_Obra]
      ,REPLACE(REPLACE(T3.[Nombre]    , CHAR(13), ''), CHAR(10), '') Nombre

	  ,T4.[Id_Obra]
      ,T4.[Clave_Obra]
      ,REPLACE(REPLACE(T4.[Nombre]    , CHAR(13), ''), CHAR(10), '') Nombre

	  ,T5.[Id_Obra]
      ,T5.[Clave_Obra]
      ,REPLACE(REPLACE(T5.[Nombre]    , CHAR(13), ''), CHAR(10), '') Nombre

	  ,T6.[Id_Obra]
      ,T6.[Clave_Obra]
      ,REPLACE(REPLACE(T6.[Nombre]    , CHAR(13), ''), CHAR(10), '') Nombre

	  ,T7.[Id_Obra]
      ,T7.[Clave_Obra]
      ,REPLACE(REPLACE(T7.[Nombre]    , CHAR(13), ''), CHAR(10), '') Nombre

	  ,T8.[Id_Obra]
      ,T8.[Clave_Obra]
      ,REPLACE(REPLACE(T8.[Nombre]    , CHAR(13), ''), CHAR(10), '') Nombre

	  ,T9.[Id_Obra]
      ,T9.[Año]
      ,T9.[Clave_Obra]
      ,REPLACE(REPLACE(T9.[Nombre]    , CHAR(13), ''), CHAR(10), '') Nombre
      ,T9.[Tipo_Precio]
      ,T9.[Id_Sub_Programa]
      ,T9.[Id_Localidad]
      ,T9.[Beneficiarios]
      ,T9.[Id_Convenio]
      ,T9.[Tipo_Obra_Proyecto]
      ,T9.[Id_Sub_Tipo_Obra]
      ,REPLACE(REPLACE(T9.[Observaciones]   , CHAR(13), ''), CHAR(10), '') Observaciones
      ,T9.[Enviar_Para]
      ,T9.[Id_Oficio_Asignacion_Obra]
FROM 
  (SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Obras]) T1
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Obras]) T2
  ON T1.[Id_Obra] = T2.[Id_Obra] AND T1.[Clave_Obra] = T2.[Clave_Obra]
  AND T1.[Nombre] = T2.[Nombre]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Obras]) T3
  ON T2.[Id_Obra] = T3.[Id_Obra] AND T2.[Clave_Obra] = T3.[Clave_Obra]
  AND T2.[Nombre] = T3.[Nombre]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Obras]) T4
  ON T3.[Id_Obra] = T4.[Id_Obra] AND T3.[Clave_Obra] = T4.[Clave_Obra]
  AND T3.[Nombre] = T4.[Nombre]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Obras]) T5
  ON T4.[Id_Obra] = T5.[Id_Obra] AND T4.[Clave_Obra] = T5.[Clave_Obra]
  AND T4.[Nombre] = T5.[Nombre]
  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Obras]) T6
  ON T5.[Id_Obra] = T6.[Id_Obra] AND T5.[Clave_Obra] = T6.[Clave_Obra]
  AND T5.[Nombre] = T6.[Nombre]
   FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Obras]) T7
  ON T6.[Id_Obra] = T7.[Id_Obra] AND T6.[Clave_Obra] = T7.[Clave_Obra]
  AND T6.[Nombre] = T7.[Nombre]
   FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Obras]) T8
  ON T7.[Id_Obra] = T8.[Id_Obra] AND T7.[Clave_Obra] = T8.[Clave_Obra]
  AND T7.[Nombre] = T8.[Nombre]

  FULL OUTER JOIN
  (SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Obras]) T9
  ON T8.[Id_Obra] = T9.[Id_Obra] AND T8.[Clave_Obra] = T9.[Clave_Obra]
  AND T8.[Nombre] = T9.[Nombre]
  WHERE T9.[Id_Obra] IS NOT NULL;