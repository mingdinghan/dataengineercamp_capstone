with customers_by_revenue as (
    select
        customers.name,
        SUM(orders.quantity) as total_quantity,
        SUM(orders.total_price) as total_revenue
    from orders
    inner join customers
        on orders.customer_id = customers.id
    group by customers.name
    order by total_revenue desc
)

select *
from customers_by_revenue
