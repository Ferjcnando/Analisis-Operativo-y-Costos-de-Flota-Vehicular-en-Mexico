-- =====================================================
-- ANÁLISIS OPERATIVO Y COSTOS DE FLOTA VEHICULAR
-- Consultas realizadas en Google BigQuery
-- =====================================================


-- =====================================================
-- 1. Rendimiento promedio por tipo de combustible
-- =====================================================

SELECT
  combustible_tipo,
  COUNT(*) AS cantidad_vehiculos,
  ROUND(AVG(rendimiento_combinado), 2) AS rendimiento_promedio
FROM `omega-ability-454915-n9.eficiencia_vehicular.vehiculos`
GROUP BY combustible_tipo
ORDER BY rendimiento_promedio DESC;


-- =====================================================
-- 2. Costo estimado para recorrer 35 km
-- Precios de combustible correspondientes a 2026
-- =====================================================

SELECT
  v.marca,
  v.modelo,
  v.combustible_tipo,
  v.rendimiento_combinado,
  c.precio AS precio_combustible,
  ROUND((35 / v.rendimiento_combinado) * c.precio, 2) AS costo_35_km
FROM `omega-ability-454915-n9.eficiencia_vehicular.vehiculos` AS v
JOIN `omega-ability-454915-n9.eficiencia_vehicular.precios_combustibles` AS c
  ON v.combustible_tipo = c.tipo_energia_costo
WHERE v.combustible_tipo IN ('GASOLINA', 'DIESEL')
  AND c.`año` = 2026
ORDER BY costo_35_km ASC;


-- =====================================================
-- 3. Top 10 vehículos con mayores emisiones
-- =====================================================

SELECT
  marca,
  modelo,
  combustible_tipo,
  ROUND(co2_combinado_gkm, 2) AS co2_combinado_gkm
FROM `omega-ability-454915-n9.eficiencia_vehicular.vehiculos`
WHERE co2_combinado_gkm IS NOT NULL
ORDER BY co2_combinado_gkm DESC
LIMIT 10;


-- =====================================================
-- 4. Emisiones promedio por tipo de combustible
-- =====================================================

SELECT
  combustible_tipo,
  ROUND(AVG(co2_combinado_gkm), 2) AS co2_promedio_gkm
FROM `omega-ability-454915-n9.eficiencia_vehicular.vehiculos`
WHERE co2_combinado_gkm IS NOT NULL
GROUP BY combustible_tipo
ORDER BY co2_promedio_gkm DESC;
