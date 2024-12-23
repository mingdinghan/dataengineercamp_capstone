SELECT
    order_id,
    revision_number,
    status,
    vendor_id,
    shipping_method_id,
    cost,
    modified_at
FROM {{ source('default', 'shipments') }}
