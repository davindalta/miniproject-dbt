{{ config(materialized='table', schema='intermediate') }}

SELECT 
    {{ dbt_utils.star(ref('raw_address'))}}
FROM {{ ref('raw_address') }}