SELECT
date_date
,COUNT(orders_id) as nb_transactions
,ROUND(SUM(revenue),2) as revenue
,ROUND(SUM(revenue)/COUNT(orders_id),2) as avg_basket
,ROUND(SUM(margin),2) as margin
,ROUND(SUM(operational_margin),2) as operational_margin
FROM {{ref("int_orders_operational")}}
GROUP BY  date_date
ORDER BY  date_date DESC