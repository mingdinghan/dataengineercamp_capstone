SELECT
    {{ dbt_utils.generate_surrogate_key(['products.id']) }} as product_key,
    products.id,
    products.title,
    products.category,
    products.vendor AS company,
    products.price,
    products.description,
    products.color,
    products.size,
    products.material
FROM {{ ref('products') }} AS products
