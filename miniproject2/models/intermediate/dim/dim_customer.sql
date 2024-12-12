{{ config(materialized='table', schema='intermediate') }}

SELECT 
    {{ dbt_utils.star(ref('raw_customer'))}}
FROM {{ ref('raw_customer') }}