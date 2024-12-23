{{
    config(
        materialized="table"
    )
}}

select
    orders.id as order_id,
    orders.created_at as order_created_at,
    shipments.modified_at as order_shipped_at,
    date_diff('DAY', orders.created_at, shipments.modified_at) as shipping_delay
FROM shipments
JOIN orders on orders.id = shipments.order_id
WHERE shipments.status = 1
