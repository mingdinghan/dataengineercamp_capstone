SELECT
    {{ dbt_utils.generate_surrogate_key(['orders.id']) }} AS order_key,
    {{ dbt_utils.generate_surrogate_key(['orders.id']) }} AS shipment_key,
    {{ dbt_utils.generate_surrogate_key(['orders.product_id']) }}
        AS product_key,
    {{ dbt_utils.generate_surrogate_key(['orders.customer_id']) }}
        AS customer_key,
    orders.id AS order_id,
    orders.quantity AS order_quantity,
    orders.total_price AS order_total_price,
    orders.created_at AS order_created_at,
    toDate(orders.created_at) AS order_created_date
FROM {{ ref('orders') }} AS orders
