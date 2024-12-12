{{ config(materialized='table', schema='intermediate') }}

SELECT 
    {{ dbt_utils.star(ref('raw_actor'))}}
FROM {{ ref('raw_actor') }}