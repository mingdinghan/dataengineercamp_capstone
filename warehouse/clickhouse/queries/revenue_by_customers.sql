select
    customers.name,
    SUM(orders.quantity) as total_quantity,
    SUM(orders.total_price) as total_revenue
from orders
join customers
on orders.customer_id = customers.id
GROUP BY customers.name
ORDER BY total_revenue DESC
