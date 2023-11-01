WITH int_finance_campaigns_day_month AS (
SELECT
EXTRACT(MONTH FROM date_date) as period
,*
FROM {{ref("int_finance_campaigns_day")}}
)

SELECT
period
,ROUND(SUM(nb_transactions),2) as nb_transactions
,ROUND(SUM(revenue),2) as revenue
,ROUND(SUM(revenue)/SUM(nb_transactions),2) as avg_basket
,ROUND(SUM(margin),2) as margin
,ROUND(SUM(operational_margin),2) as operational_margin
,ROUND(SUM(ads_margin),2) as ads_margin
,ROUND(SUM(ads_cost),2) as ads_cost
,ROUND(SUM(impression),2) as impression
,ROUND(SUM(click),2) as click
FROM int_finance_campaigns_day_month
GROUP BY period