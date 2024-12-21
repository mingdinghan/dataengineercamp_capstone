SELECT
    id,
    product_id,
    customer_id,
    quantity,
    total_price,
    created_at
FROM {{ source('default', 'orders') }}
