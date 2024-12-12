{{ config(materialized='table', schema='mart')}}

SELECT
    to_char(fp.payment_date, 'FMMonth YYYY') as month_year,
    SUM(amount) as total_revenue
FROM {{ ref('fact_payment')}} as fp 
LEFT JOIN {{ ref('dim_rental')}} as dr ON fp.rental_id = dr.rental_id
GROUP BY 1
ORDER BY 1