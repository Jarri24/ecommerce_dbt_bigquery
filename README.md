# Analytics Engineering con dbt y Google BigQuery

Modelado de datos, linaje y pruebas de calidad automatizadas sobre Google Cloud BigQuery utilizando dbt (data build tool).

## Arquitectura del Proyecto
- **Fuente (`models/sources.yml`)**: Conexión con tabla cruda en BigQuery (`ecommerce_analytics.ventas_cloud`).
- **Modelo Analítico (`models/metricas_ciudades.sql`)**: Materialización de tabla con KPIs agregados por ciudad.
- **Data Quality Tests (`models/schema.yml`)**: Validación automática de unicidad e integridad (`unique`, `not_null`).

## Ejecución
1. Validar conexión: `dbt debug`
2. Ejecutar transformaciones: `dbt run`
3. Correr pruebas de calidad: `dbt test`
4. Servir documentación y linaje: `dbt docs serve`