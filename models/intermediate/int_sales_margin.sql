select 
    s.revenue - (quantity * purchase_price) as margin,
    quantity * purchase_price as purchase_cost
from {{ ref("stg_raw__sales") }} as s
left join {{ ref('stg_raw__product') }} AS p
  on s.products_id = p.products_id