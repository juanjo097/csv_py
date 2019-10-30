/****** Script for SelectTopNRows command from SSMS  ******/
SELECT REPLACE(REPLACE([Id_Obra] , CHAR(13), ' '), CHAR(10), ' ') [Id_Obra] 
      ,REPLACE(REPLACE([Clave_Obra] , CHAR(13), ' '), CHAR(10), ' ') [Clave_Obra] 
      ,REPLACE(REPLACE([Nombre] , CHAR(13), ' '), CHAR(10), ' ') [Nombre] 
      ,REPLACE(REPLACE([Tipo_Precio] , CHAR(13), ' '), CHAR(10), ' ') [Tipo_Precio] 
      ,REPLACE(REPLACE([Id_Sub_Programa] , CHAR(13), ' '), CHAR(10), ' ') [Id_Sub_Programa] 
      ,REPLACE(REPLACE([Id_Localidad] , CHAR(13), ' '), CHAR(10), ' ') [Id_Localidad] 
      ,REPLACE(REPLACE([Tipo_Obra_Proyecto] , CHAR(13), ' '), CHAR(10), ' ') [Tipo_Obra_Proyecto] 
      ,REPLACE(REPLACE([Id_Sub_Tipo_Obra] , CHAR(13), ' '), CHAR(10), ' ') [Id_Sub_Tipo_Obra] 
      ,REPLACE(REPLACE([Id_Oficio_Asignacion_Obra] , CHAR(13), ' '), CHAR(10), ' ') [Id_Oficio_Asignacion_Obra] 
  FROM [WSICOM_2010].[dbo].[Tbl_Obras];
