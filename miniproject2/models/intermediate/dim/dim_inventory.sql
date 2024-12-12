{{ config(materialized='table', schema='intermediate') }}

SELECT 
    {{ dbt_utils.star(ref('raw_inventory'))}}
FROM {{ ref('raw_inventory') }}