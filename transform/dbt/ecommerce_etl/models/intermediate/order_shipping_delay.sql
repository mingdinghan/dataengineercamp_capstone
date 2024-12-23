{{
    config(
        materialized="table"
    )
}}

SELECT
    orders.id AS order_id,
    orders.created_at AS order_created_at,
    shipments.modified_at AS order_shipped_at,
    date_diff('DAY', orders.created_at, shipments.modified_at) AS shipping_delay
FROM orders
INNER JOIN shipments ON orders.id = shipments.order_id
WHERE shipments.status = 1
