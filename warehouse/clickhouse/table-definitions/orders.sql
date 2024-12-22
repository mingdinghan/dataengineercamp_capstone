CREATE TABLE orders (
    id String,
    product_id UInt64,
    customer_id UInt64,
    quantity UInt64,
    total_price Float64,
    created_at DateTime
) ENGINE = MergeTree ORDER BY (product_id, customer_id, created_at)
