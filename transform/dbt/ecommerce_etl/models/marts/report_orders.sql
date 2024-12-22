select
    {{ dbt_utils.star(from=ref('fct_orders'), relation_alias='fct_orders',
        except=["order_key", "product_key", "customer_key"]) }},
    {{ dbt_utils.star(from=ref('dim_products'), relation_alias='dim_products',
        except=["product_key"]) }},
    {{ dbt_utils.star(from=ref('dim_customers'), relation_alias='dim_customers',
        except=["customer_key"]) }}
from {{ ref('fct_orders') }} as fct_orders
left join
    {{ ref('dim_products') }} as dim_products
    on fct_orders.product_key = dim_products.product_key
left join
    {{ ref('dim_customers') }} as dim_customers
    on fct_orders.customer_key = dim_customers.customer_key
