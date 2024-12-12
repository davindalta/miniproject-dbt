{{ config(materialized='table', schema='raw') }}

SELECT 
    {{ dbt_utils.star(source('public', 'inventory')) }}
FROM {{ source('public', 'inventory')}}