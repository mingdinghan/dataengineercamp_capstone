SELECT
    id,
    title,
    category,
    vendor,
    price,
    description,
    color,
    size,
    material
FROM {{ source('default', 'products') }}
