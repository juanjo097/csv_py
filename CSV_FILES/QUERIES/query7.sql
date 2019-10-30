/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id_Estimacion]
      ,[Id_Contrato]
      ,[No_Estimacion]
      ,[Fecha_Estimacion]
      ,[Avance_Fisico]
      ,[Avance_Financiero]
      ,[Fecha_Inicio_Estimacion]
      ,[Fecha_Termino_Estimacion]
      ,[Estatus]
      ,[Tipo_Estimacion]
      ,[Descripcion]
      ,[No_Factura]
      ,[Fecha_Factura]
      ,[Fecha_Recibo]
      ,[Fecha_Inicio_Recalendarizacion]
      ,[Fecha_Termino_Recalendarizacion]
      ,[Fecha_Suspension]
      ,[Fecha_Reinicio]
      ,[Fecha_Ampliacion]
      ,[Fecha_Prorroga]
      ,[Fecha_Ultima_Inicio_Contrato]
      ,[Fecha_Ultima_Termino_Contrato]
      ,[Caratula_Contrato_Estimado]
      ,[Caratula_Contrato_IVA]
      ,[Caratula_Contrato_Total]
      ,[Caratula_Contrato_Amortizacion]
      ,[Caratula_Contrato_Suma]
      ,[Caratula_Contrato_Descuentos]
      ,[Caratula_Contrato_Deducciones]
      ,[Caratula_Contrato_Neto]
      ,[Caratula_Ampliacion_Estimado]
      ,[Caratula_Ampliacion_IVA]
      ,[Caratula_Ampliacion_Total]
      ,[Caratula_Ampliacion_Amortizacion]
      ,[Caratula_Ampliacion_Suma]
      ,[Caratula_Ampliacion_Descuentos]
      ,[Caratula_Ampliacion_Deducciones]
      ,[Caratula_Ampliacion_Neto]
      ,[Caratula_Totales_Estimado]
      ,[Caratula_Totales_IVA]
      ,[Caratula_Totales_Total]
      ,[Caratula_Totales_Amortizacion]
      ,[Caratula_Totales_Suma]
      ,[Caratula_Totales_Descuentos]
      ,[Caratula_Totales_Deducciones]
      ,[Caratula_Totales_Neto]
      ,[Resumen_Contrato_Importe]
      ,[Resumen_Contrato_Actual]
      ,[Resumen_Contrato_Anterior]
      ,[Resumen_Contrato_Acumulado]
      ,[Resumen_Contrato_Por_Ejercer]
      ,[Resumen_Ampliacion_Importe]
      ,[Resumen_Ampliacion_Actual]
      ,[Resumen_Ampliacion_Anterior]
      ,[Resumen_Ampliacion_Acumulado]
      ,[Resumen_Ampliacion_Por_Ejercer]
      ,[Resumen_Total_Importe]
      ,[Resumen_Total_Actual]
      ,[Resumen_Total_Anterior]
      ,[Resumen_Total_Acumulado]
      ,[Resumen_Total_Por_Ejercer]
      ,[Amortizacion_Contrato_Porcentaje]
      ,[Amortizacion_Contrato_Importe]
      ,[Amortizacion_Contrato_Actual]
      ,[Amortizacion_Contrato_Anterior]
      ,[Amortizacion_Contrato_Acumulado]
      ,[Amortizacion_Contrato_Por_Ejercer]
      ,[Amortizacion_Ampliacion_Porcentaje]
      ,[Amortizacion_Ampliacion_Importe]
      ,[Amortizacion_Ampliacion_Actual]
      ,[Amortizacion_Ampliacion_Anterior]
      ,[Amortizacion_Ampliacion_Acumulado]
      ,[Amortizacion_Ampliacion_Por_Ejercer]
      ,[Importe_Sancion]
      ,[No_Control]
      ,[Id_Fuente_Inversion]
      ,[Numero_Oficio_Excedentes]
      ,[Fecha_Oficio_Excedentes]
      ,[Fecha_Registro]
      ,[Fecha_Pago]
      ,[Observaciones_Caratula]
      ,[Observaciones_Generales]
      ,[Imprime_Observaciones_Generales]
      ,[Pagada]
      ,[Fecha_Nuevo_Termino_Por_Reinicio]
      ,[Periodo]
      ,[Num_Rows]
  FROM [WSICOM_2018].[dbo].[Tbl_Estimaciones]

  SELECT 
	   T1.[Id_Estimacion] IE2018
      ,T1.[Id_Contrato] IC2018
      ,T1.[No_Estimacion] NE2018

	  ,T2.[Id_Estimacion] IE2017
      ,T2.[Id_Contrato] IC2017
      ,T2.[No_Estimacion] NE2017

	  ,T3.[Id_Estimacion] IE2016
      ,T3.[Id_Contrato] IC2016
      ,T3.[No_Estimacion] NE2016

	  ,T4.[Id_Estimacion] IE2015
      ,T4.[Id_Contrato] IC2015
      ,T4.[No_Estimacion] NE2015

	  ,T5.[Id_Estimacion] IE2014
      ,T5.[Id_Contrato] IC2014
      ,T5.[No_Estimacion] NE2014
      
	  ,T6.[Id_Estimacion] IE2013
      ,T6.[Id_Contrato] IC2013
      ,T6.[No_Estimacion] NE2013
      
	  ,T7.[Id_Estimacion] IE2012
      ,T7.[Id_Contrato] IC2012
      ,T7.[No_Estimacion] NE2012
      
	  ,T8.[Id_Estimacion] IE2011
      ,T8.[Id_Contrato] IC2011
      ,T8.[No_Estimacion] NE2011

	  ,T9.[Id_Estimacion]
      ,T9.[Id_Contrato]
      ,T9.[No_Estimacion]
      ,T9.[Fecha_Estimacion]
      ,T9.[Avance_Fisico]
      ,T9.[Avance_Financiero]
      ,T9.[Fecha_Inicio_Estimacion]
      ,T9.[Fecha_Termino_Estimacion]
      ,T9.[Estatus]
      ,T9.[Tipo_Estimacion]
      ,T9.[Descripcion]
      ,T9.[No_Factura]
      ,T9.[Fecha_Factura]
      ,T9.[Fecha_Recibo]
      ,T9.[Fecha_Inicio_Recalendarizacion]
      ,T9.[Fecha_Termino_Recalendarizacion]
      ,T9.[Fecha_Suspension]
      ,T9.[Fecha_Reinicio]
      ,T9.[Fecha_Ampliacion]
      ,T9.[Fecha_Prorroga]
      ,T9.[Fecha_Ultima_Inicio_Contrato]
      ,T9.[Fecha_Ultima_Termino_Contrato]
      ,T9.[Caratula_Contrato_Estimado]
      ,T9.[Caratula_Contrato_IVA]
      ,T9.[Caratula_Contrato_Total]
      ,T9.[Caratula_Contrato_Amortizacion]
      ,T9.[Caratula_Contrato_Suma]
      ,T9.[Caratula_Contrato_Descuentos]
      ,T9.[Caratula_Contrato_Deducciones]
      ,T9.[Caratula_Contrato_Neto]
      ,T9.[Caratula_Ampliacion_Estimado]
      ,T9.[Caratula_Ampliacion_IVA]
      ,T9.[Caratula_Ampliacion_Total]
      ,T9.[Caratula_Ampliacion_Amortizacion]
      ,T9.[Caratula_Ampliacion_Suma]
      ,T9.[Caratula_Ampliacion_Descuentos]
      ,T9.[Caratula_Ampliacion_Deducciones]
      ,T9.[Caratula_Ampliacion_Neto]
      ,T9.[Caratula_Totales_Estimado]
      ,T9.[Caratula_Totales_IVA]
      ,T9.[Caratula_Totales_Total]
      ,T9.[Caratula_Totales_Amortizacion]
      ,T9.[Caratula_Totales_Suma]
      ,T9.[Caratula_Totales_Descuentos]
      ,T9.[Caratula_Totales_Deducciones]
      ,T9.[Caratula_Totales_Neto]
      ,T9.[Resumen_Contrato_Importe]
      ,T9.[Resumen_Contrato_Actual]
      ,T9.[Resumen_Contrato_Anterior]
      ,T9.[Resumen_Contrato_Acumulado]
      ,T9.[Resumen_Contrato_Por_Ejercer]
      ,T9.[Resumen_Ampliacion_Importe]
      ,T9.[Resumen_Ampliacion_Actual]
      ,T9.[Resumen_Ampliacion_Anterior]
      ,T9.[Resumen_Ampliacion_Acumulado]
      ,T9.[Resumen_Ampliacion_Por_Ejercer]
      ,T9.[Resumen_Total_Importe]
      ,T9.[Resumen_Total_Actual]
      ,T9.[Resumen_Total_Anterior]
      ,T9.[Resumen_Total_Acumulado]
      ,T9.[Resumen_Total_Por_Ejercer]
      ,T9.[Amortizacion_Contrato_Porcentaje]
      ,T9.[Amortizacion_Contrato_Importe]
      ,T9.[Amortizacion_Contrato_Actual]
      ,T9.[Amortizacion_Contrato_Anterior]
      ,T9.[Amortizacion_Contrato_Acumulado]
      ,T9.[Amortizacion_Contrato_Por_Ejercer]
      ,T9.[Amortizacion_Ampliacion_Porcentaje]
      ,T9.[Amortizacion_Ampliacion_Importe]
      ,T9.[Amortizacion_Ampliacion_Actual]
      ,T9.[Amortizacion_Ampliacion_Anterior]
      ,T9.[Amortizacion_Ampliacion_Acumulado]
      ,T9.[Amortizacion_Ampliacion_Por_Ejercer]
      ,T9.[Importe_Sancion]
      ,T9.[No_Control]
      ,T9.[Id_Fuente_Inversion]
      ,T9.[Numero_Oficio_Excedentes]
      ,T9.[Fecha_Oficio_Excedentes]
      ,T9.[Fecha_Registro]
      ,T9.[Fecha_Pago]
      ,REPLACE(REPLACE(T9.[Observaciones_Caratula] , CHAR(13), ''), CHAR(10), '') Observaciones_Caratula
      ,REPLACE(REPLACE(T9.[Observaciones_Generales]  , CHAR(13), ''), CHAR(10), '') Observaciones_Generales
      ,T9.[Imprime_Observaciones_Generales]
      ,T9.[Pagada]
      ,T9.[Fecha_Nuevo_Termino_Por_Reinicio]


	  FROM 
	  (SELECT DISTINCT * FROM [WSICOM_2018].[dbo].[Tbl_Estimaciones]) T1
	  FULL OUTER JOIN
	  (SELECT DISTINCT * FROM [WSICOM_2017].[dbo].[Tbl_Estimaciones]) T2
	  ON T1.[Id_Estimacion] = T2.[Id_Estimacion] AND T1.[Id_Contrato] = T2.[Id_Contrato] AND T1.[No_Estimacion] = T2.[No_Estimacion]
	  FULL OUTER JOIN
	  (SELECT DISTINCT * FROM [WSICOM_2016].[dbo].[Tbl_Estimaciones]) T3
	  ON T2.[Id_Estimacion] = T3.[Id_Estimacion] AND T2.[Id_Contrato] = T3.[Id_Contrato] AND T2.[No_Estimacion] = T3.[No_Estimacion]	  
	  FULL OUTER JOIN
	  (SELECT DISTINCT * FROM [WSICOM_2015].[dbo].[Tbl_Estimaciones]) T4
	  ON T3.[Id_Estimacion] = T4.[Id_Estimacion] AND T3.[Id_Contrato] = T4.[Id_Contrato] AND T3.[No_Estimacion] = T4.[No_Estimacion]	 
	  FULL OUTER JOIN
	  (SELECT DISTINCT * FROM [WSICOM_2014].[dbo].[Tbl_Estimaciones]) T5
	  ON T4.[Id_Estimacion] = T5.[Id_Estimacion] AND T4.[Id_Contrato] = T5.[Id_Contrato] AND T4.[No_Estimacion] = T5.[No_Estimacion]
	  FULL OUTER JOIN
	  (SELECT DISTINCT * FROM [WSICOM_2013].[dbo].[Tbl_Estimaciones]) T6
	  ON T5.[Id_Estimacion] = T6.[Id_Estimacion] AND T5.[Id_Contrato] = T6.[Id_Contrato] AND T5.[No_Estimacion] = T6.[No_Estimacion]	 
	  FULL OUTER JOIN
	  (SELECT DISTINCT * FROM [WSICOM_2012].[dbo].[Tbl_Estimaciones]) T7
	  ON T6.[Id_Estimacion] = T7.[Id_Estimacion] AND T6.[Id_Contrato] = T7.[Id_Contrato] AND T6.[No_Estimacion] = T7.[No_Estimacion]	 
	  FULL OUTER JOIN
	  (SELECT DISTINCT * FROM [WSICOM_2011].[dbo].[Tbl_Estimaciones]) T8
	  ON T7.[Id_Estimacion] = T8.[Id_Estimacion] AND T7.[Id_Contrato] = T8.[Id_Contrato] AND T7.[No_Estimacion] = T8.[No_Estimacion]	 
	  FULL OUTER JOIN
	  (SELECT DISTINCT * FROM [WSICOM_2010].[dbo].[Tbl_Estimaciones]) T9
	  ON T8.[Id_Estimacion] = T9.[Id_Estimacion] AND T8.[Id_Contrato] = T9.[Id_Contrato] AND T8.[No_Estimacion] = T9.[No_Estimacion]	 
	  WHERE T9.[Id_Estimacion] IS NOT NULL;