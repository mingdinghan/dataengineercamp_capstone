select
    products.category,
    SUM(orders.quantity) as total_quantity,
    SUM(orders.total_price) as total_revenue
from orders
join products
on orders.product_id = products.id
GROUP BY products.category
ORDER BY total_revenue DESC
