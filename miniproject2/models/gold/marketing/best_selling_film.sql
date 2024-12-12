{{ config(materialized='table', schema='mart')}}

SELECT 
    df.title AS film_title, 
    SUM(fp.amount) AS total_sales
FROM {{ ref('fact_payment') }} fp
LEFT JOIN {{ ref('dim_rental') }} dr ON fp.rental_id = dr.rental_id
LEFT JOIN {{ ref('dim_inventory') }} di ON dr.inventory_id = di.inventory_id
LEFT JOIN {{ ref('dim_film') }} df ON di.film_id = df.film_id
GROUP BY 1
ORDER BY 2 DESC