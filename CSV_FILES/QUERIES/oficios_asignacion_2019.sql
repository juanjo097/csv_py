/****** Script for SelectTopNRows command from SSMS  ******/
SELECT REPLACE(REPLACE([Id_Oficio_Asignacion_Obra] , CHAR(13), ''), CHAR(10), '') [Id_Oficio_Asignacion_Obra] 
      ,REPLACE(REPLACE([Id_Oficio_Asignacion] , CHAR(13), ''), CHAR(10), '') [Id_Oficio_Asignacion]  
      ,REPLACE(REPLACE([Nombre_Obra] , CHAR(13), ''), CHAR(10), '') [Nombre_Obra] 
      ,REPLACE(REPLACE([Monto] , CHAR(13), ''), CHAR(10), '') [Monto] 
  FROM [WSICOM_2010].[dbo].[Tbl_Oficios_Asignacion_Obras];
