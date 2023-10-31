SELECT
orders_id
,date_date
,((revenue+shipping_fee)-(purchase_cost+logcost+ship_cost)) as operational_margin
,revenue
,quantity
,purchase_cost
,margin
,shipping_fee
,ship_cost
,logcost
FROM {{ref("int_orders_margin")}} as margin_t
JOIN {{ref("stg_raw__ship")}} as ship
USING(orders_id)
