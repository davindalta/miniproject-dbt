{{ config(materialized='table', schema='intermediate') }}

SELECT 
    {{ dbt_utils.star(ref('raw_staff'))}}
FROM {{ ref('raw_staff') }}