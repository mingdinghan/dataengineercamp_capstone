SELECT
    {{ dbt_utils.generate_surrogate_key(['customers.id']) }} as customer_key,
    customers.id,
    customers.name,
    customers.email,
    customers.address,
    customers.city,
    customers.state,
    customers.zipcode,
    'US' AS country
FROM {{ ref('customers') }} AS customers
