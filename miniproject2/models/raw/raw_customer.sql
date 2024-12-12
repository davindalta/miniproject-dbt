{{ config(materialized='table', schema='raw') }}

SELECT 
    {{ dbt_utils.star(source('public', 'customer')) }}
FROM {{ source('public', 'customer')}}