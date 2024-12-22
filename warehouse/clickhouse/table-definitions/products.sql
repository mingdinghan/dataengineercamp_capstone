CREATE TABLE products (
    id UInt64,
    title String,
    category String,
    vendor String,
    price Float64,
    description String,
    color String,
    size String,
    material String
) ENGINE = MergeTree ORDER BY (id)
