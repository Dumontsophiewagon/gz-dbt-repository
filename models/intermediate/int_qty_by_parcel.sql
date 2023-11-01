SELECT
parcel_id
,COUNT(model_mame) as nb_model
,ROUND(SUM(quantity),2) as quantity
FROM {{ref("stg_raw__parcel_product")}}
GROUP BY parcel_id
