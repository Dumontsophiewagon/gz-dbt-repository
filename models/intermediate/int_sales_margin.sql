SELECT *
,ROUND(CAST(quantity as int64)*CAST(purchase_price as float64),2) as purchase_cost
,ROUND(CAST(revenue as float64)-(CAST(quantity as int64)*CAST(purchase_price as float64)),2) as margin
FROM {{ref("stg_raw__sales")}} as sales
JOIN {{ref("stg_raw__product")}} as product
USING(products_id)