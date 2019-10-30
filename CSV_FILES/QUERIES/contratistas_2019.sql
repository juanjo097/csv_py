/****** Script for SelectTopNRows command from SSMS  ******/
SELECT REPLACE(REPLACE([Id_Contratista]  , CHAR(13), ''), CHAR(10), '') Id_Contratista
      ,REPLACE(REPLACE([Nombre]  , CHAR(13), ''), CHAR(10), '') Nombre 
      ,REPLACE(REPLACE([Siglas] , CHAR(13), ''), CHAR(10), '') Siglas
      ,REPLACE(REPLACE([Fecha_Refrendo]  , CHAR(13), ''), CHAR(10), '') Fecha_Refrendo
      ,REPLACE(REPLACE([Responsable_Legal] , CHAR(13), ''), CHAR(10), '') Responsable_Legal
      ,REPLACE(REPLACE([Responsable_Tecnico]  , CHAR(13), ''), CHAR(10), '') Responsable_Tecnico
      ,REPLACE(REPLACE([Codigo_Postal] , CHAR(13), ''), CHAR(10), '') Codigo_Postal
      ,REPLACE(REPLACE([Correo] , CHAR(13), ''), CHAR(10), '') Correo
      ,REPLACE(REPLACE([No_Escritura_Publica]  , CHAR(13), ''), CHAR(10), '') No_Escritura_Publica
      ,REPLACE(REPLACE([Fecha_Escritura] , CHAR(13), ''), CHAR(10), '') Fecha_Escritura
      ,REPLACE(REPLACE([No_Notario_Publico]   , CHAR(13), ''), CHAR(10), '') No_Notario_Publico
      ,REPLACE(REPLACE([Nombre_Notario_Publico] , CHAR(13), ''), CHAR(10), '') Nombre_Notario_Publico
      ,REPLACE(REPLACE([Folio_Mercantil] , CHAR(13), ''), CHAR(10), '') Folio_Mercantil
      ,REPLACE(REPLACE([Tomo_Mercantil] , CHAR(13), ''), CHAR(10), '') Tomo_Mercantil
      ,REPLACE(REPLACE(Direccion  , CHAR(13), ''), CHAR(10), '') Direccion
      ,REPLACE(REPLACE([Telefonos]   , CHAR(13), ''), CHAR(10), '') Telefonos
      ,REPLACE(REPLACE([Tipo]  , CHAR(13), ''), CHAR(10), '') Tipo
      ,REPLACE(REPLACE([No_Escritura_Firma_Contrato]  , CHAR(13), ''), CHAR(10), '') No_Escritura_Firma_Contrato
      ,REPLACE(REPLACE([Fecha_Escritura_Firma_Contrato]   , CHAR(13), ''), CHAR(10), '') Fecha_Escritura_Firma_Contrato
      ,REPLACE(REPLACE([No_Notario_Publico_Firma_Contrato]  , CHAR(13), ''), CHAR(10), '') No_Notario_Publico_Firma_Contrato
      ,REPLACE(REPLACE([Nombre_Notario_Publico_Firma_Contrato] , CHAR(13), ''), CHAR(10), '') Nombre_Notario_Publico_Firma_Contrato
  FROM [WSICOM_2010].[dbo].[Tbl_Cat_Contratistas];