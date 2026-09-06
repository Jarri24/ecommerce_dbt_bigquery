{{ config(materialized='table') }}

with ventas as (
    select * from {{ source('raw_ecommerce', 'ventas_cloud') }}
)

select
    ciudad_envio,
    count(distinct venta_id) as total_pedidos,
    round(sum(monto_usd), 2) as facturacion_total_usd,
    round(avg(monto_usd), 2) as ticket_promedio_usd
from ventas
group by ciudad_envio
order by facturacion_total_usd desc