SELECT
    {{ dbt_utils.generate_surrogate_key(['shipments.order_id']) }} AS shipment_key,
    shipments.vendor_id AS shipping_vendor_id,
    shipments.status AS shipping_status,
    shipments.shipping_method_id AS shipping_method_id,
    shipments.cost AS shipping_cost,
    shipments.modified_at AS shipped_at,
    toDate(shipments.modified_at) AS shipped_date
FROM {{ ref('shipments') }} AS shipments
WHERE shipments.status = 1
