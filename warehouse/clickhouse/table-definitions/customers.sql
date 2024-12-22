CREATE TABLE customers (
    id UInt64,
    name String,
    email String,
    address String,
    city String,
    state String,
    zipcode String
) ENGINE = MergeTree ORDER BY (id)
