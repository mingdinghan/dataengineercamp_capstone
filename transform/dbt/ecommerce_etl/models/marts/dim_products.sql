SELECT
    {{ dbt_utils.generate_surrogate_key(['products.id']) }} AS product_key,
    products.id AS product_id,
    products.title AS product_title,
    products.category AS product_category,
    products.vendor AS product_company,
    products.price AS product_price,
    products.description AS product_description,
    products.color AS product_color,
    products.size AS product_size,
    products.material AS product_material
FROM {{ ref('products') }} AS products
