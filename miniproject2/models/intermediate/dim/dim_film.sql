{{ config(materialized='table', schema='intermediate') }}

SELECT 
    {{ dbt_utils.star(ref('raw_film'))}}
FROM {{ ref('raw_film') }}