SELECT
    product_id,
    SUM(CAST(total_price AS DOUBLE)) as total_price
FROM ORDERS_STREAM
WINDOW tumbling (SIZE 30 MINUTES)
GROUP BY product_id
EMIT CHANGES;
