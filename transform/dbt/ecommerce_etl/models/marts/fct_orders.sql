SELECT
    {{ dbt_utils.generate_surrogate_key(['orders.id']) }} as order_key,
    {{ dbt_utils.generate_surrogate_key(['orders.product_id']) }} as product_key,
    {{ dbt_utils.generate_surrogate_key(['orders.customer_id']) }} as customer_key,
    orders.id,
    orders.quantity,
    orders.total_price,
    orders.created_at
FROM {{ ref('orders') }} AS orders
