SELECT
    {{ dbt_utils.generate_surrogate_key(['customers.id']) }} AS customer_key,
    customers.id AS customer_id,
    customers.name AS customer_name,
    customers.email AS customer_email,
    customers.address AS customer_address,
    customers.city AS customer_city,
    customers.state AS customer_state,
    customers.zipcode AS customer_zipcode,
    'US' AS customer_country
FROM {{ ref('customers') }} AS customers
