SELECT
finance.date_date
,finance.nb_transactions
,finance.revenue
,finance.avg_basket
,finance.margin
,finance.operational_margin
,(finance.operational_margin-campaign.ads_cost) as ads_margin
,campaign.ads_cost
,campaign.impression
,campaign.click
FROM {{ref("finance_days")}} as finance
LEFT JOIN {{ref("int_campaigns_day")}} as campaign
USING(date_date)