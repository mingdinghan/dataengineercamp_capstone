SELECT
  products.category,
  SUM(orders.quantity) as total_quantity_per_category,
  SUM(CAST(orders.total_price AS DOUBLE)) as total_revenue_per_category
FROM ORDERS_STREAM as orders
INNER JOIN PRODUCTS_STREAM as products
  WITHIN 24 HOUR
  ON orders.product_id = products.id
GROUP BY products.category
EMIT CHANGES;
