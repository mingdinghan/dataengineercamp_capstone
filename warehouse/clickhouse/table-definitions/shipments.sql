CREATE TABLE shipments (
    order_id String,
    revision_number UInt8,
    status UInt8,
    vendor_id UInt64,
    shipping_method_id UInt8,
    cost Float64,
    modified_at DateTime
) ENGINE = MergeTree ORDER BY (order_id, revision_number)
