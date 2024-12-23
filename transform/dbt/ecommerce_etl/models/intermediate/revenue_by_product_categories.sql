with product_categories_by_revenue as (
    select
        products.category,
        SUM(orders.quantity) as total_quantity,
        SUM(orders.total_price) as total_revenue
    from {{ ref('orders') }} as orders
    inner join {{ ref('products') }} as products
        on orders.product_id = products.id
    group by products.category
    order by total_revenue desc

)

select *
from product_categories_by_revenue
