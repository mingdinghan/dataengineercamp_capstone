SELECT
    id,
    name,
    email,
    address,
    city,
    state,
    zipcode
FROM {{ source('default', 'customers') }}
