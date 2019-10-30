/****** Script for SelectTopNRows command from SSMS  ******/

  SELECT 
	   REPLACE(REPLACE([Id_Contrato]   , CHAR(13), ''), CHAR(10), '') Id_Contrato
      ,REPLACE(REPLACE([Id_Presupuesto]   , CHAR(13), ''), CHAR(10), '') [Id_Presupuesto]
      ,REPLACE(REPLACE([Numero_Contrato] , CHAR(13), ''), CHAR(10), '') [Numero_Contrato]
      ,REPLACE(REPLACE([Nombre_Final] , CHAR(13), ''), CHAR(10), '') [Nombre_Final] 
      ,REPLACE(REPLACE([Importe] , CHAR(13), ''), CHAR(10), '') [Importe]  
      ,REPLACE(REPLACE([Porcentaje_Anticipo] , CHAR(13), ''), CHAR(10), '') [Porcentaje_Anticipo]  
      ,REPLACE(REPLACE([Importe_Anticipo], CHAR(13), ''), CHAR(10), '') [Importe_Anticipo] 
      ,REPLACE(REPLACE([Fecha_Firma_Contrato] , CHAR(13), ''), CHAR(10), '') [Fecha_Firma_Contrato]  
      ,REPLACE(REPLACE([Fecha_Inicio] , CHAR(13), ''), CHAR(10), '') [Fecha_Inicio] 
      ,REPLACE(REPLACE([Fecha_Termino] , CHAR(13), ''), CHAR(10), '') [Fecha_Termino]
      ,REPLACE(REPLACE([Id_Formato_Contrato] , CHAR(13), ''), CHAR(10), '') [Id_Formato_Contrato]  
      ,REPLACE(REPLACE([Id_Formato_Caratula] , CHAR(13), ''), CHAR(10), '') [Id_Formato_Caratula]  
      ,REPLACE(REPLACE([Id_Formato_Hoja_Estimaciones] , CHAR(13), ''), CHAR(10), '') [Id_Formato_Hoja_Estimaciones] 
      ,REPLACE(REPLACE([Observaciones] , CHAR(13), ''), CHAR(10), '') [Observaciones] 
	  ,REPLACE(REPLACE(Estatus , CHAR(13), ''), CHAR(10), '') Estatus
      ,REPLACE(REPLACE([Id_Contratista] , CHAR(13), ''), CHAR(10), '') [Id_Contratista]  
      ,REPLACE(REPLACE([Id_Supervisor_Interno] , CHAR(13), ''), CHAR(10), '') [Id_Supervisor_Interno] 
      ,REPLACE(REPLACE([Id_Supervisor_Externo] , CHAR(13), ''), CHAR(10), '') [Id_Supervisor_Externo]  
      ,REPLACE(REPLACE([Id_Fuente_Inversion] , CHAR(13), ''), CHAR(10), '') [Id_Fuente_Inversion] 
      ,REPLACE(REPLACE([Fecha_Adjudicacion] , CHAR(13), ''), CHAR(10), '') [Fecha_Adjudicacion] 
      ,REPLACE(REPLACE([Id_Modalidad] , CHAR(13), ''), CHAR(10), '') [Id_Modalidad] 
      ,REPLACE(REPLACE([Numero_Licitacion] , CHAR(13), ''), CHAR(10), '') [Numero_Licitacion]
      ,REPLACE(REPLACE([Id_Oficio_Asignacion_Obra] , CHAR(13), ''), CHAR(10), '') [Id_Oficio_Asignacion_Obra]
	  FROM 
	  [WSICOM_2018].[dbo].[Tbl_Contratos];