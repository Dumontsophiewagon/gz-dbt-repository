SELECT 
date_date
,ROUND(SUM(ads_cost),2) as ads_cost
,ROUND(SUM(impression),2) as impression
,ROUND(SUM(click),2) as click
FROM {{ref("int_campaign")}}
GROUP BY date_date
ORDER BY date_date ASC