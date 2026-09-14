# Análisis Operativo y Costos de Flota Vehicular en México

Modelo analítico desarrollado en **Power BI** para evaluar, simular y optimizar el costo operativo por kilómetro de una flota vehicular mixta (Gasolina, Diésel, Híbrido y Eléctrico) utilizando datos históricos (2017–2026).

## 📊 Vista Previa del Tablero
![Vista General del Reporte](AUTOS_MX_.png)

## 🚀 Características Principales
* **Simulador Dinámico de Distancias:** Permite calcular el gasto operativo exacto según los kilómetros que el usuario decida consultar de forma interactiva.
* **Modelado en Estrella Limpio:** Separación eficiente entre el catálogo estático de vehículos (`dim_vehiculo`) y las series temporales de precios históricos (`precios_historico`).
* **Lógica para Vehículos Híbridos:** Ponderación basada en factores de uso mixto (gasolina y electricidad) para evitar la duplicación de costos por recorrido.

## 📝 Notas Metodológicas y Fuentes de Datos
* **Tratamiento de Datos:** Los precios de gasolina regular se procesaron mediante promedios anuales basados en registros diarios, mientras que la electricidad y combustibles alternos se estructuraron a partir de series de registros mensuales.
* **Fuentes de Información y Fabricantes:** Para complementar las especificaciones técnicas, rendimientos y costos de los vehículos y energéticos se consultaron bases de datos oficiales y catálogos de marcas:
  * [CONUEE - Rendimiento de combustible en vehículos ligeros](https://www.gob.mx/conuee/documentos/rendimiento-de-combustible-en-vehiculos-ligeros-de-venta-en-mexico)
  * [Comisión Nacional de Energía (CNE) - Datos Abiertos](https://www.gob.mx/cne/articulos/consulta-de-datos-abiertos)
  * [CFE (Comisión Federal de Electricidad)](https://www.cfe.gob.mx/Pages/default.aspx)
  * Portales de fabricantes y distribuidores de vehículos en México: [BYD México](https://www.byd.com/mx), [Changan México](https://www.changan.mx/), [Geely México](https://www.geelymexico.com/), [Chevrolet México](https://www.chevrolet.com.mx/), [GMC México](https://www.gmc.com.mx/) y [Avatr](https://www.avatr.com/en).
