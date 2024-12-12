{{ config(materialized='table', schema='raw') }}

SELECT 
    CAST(rental_id as INT) as rental_id,
    rental_date,
    CAST(inventory_id as INT) as inventory_id,
    CAST(customer_id as INT) as customer_id,
    return_date,
    CAST(staff_id as INT) as staff_id,
    last_update
FROM {{ source('public','rental')}}