CREATE OR REPLACE STREAM orders_stream(
    id STRING,
    product_id INTEGER,
    customer_id INTEGER,
    quantity INTEGER,
    total_price STRING,
    created_at STRING
) WITH (
    KAFKA_TOPIC = 'orders',
    VALUE_FORMAT = 'JSON'
);
