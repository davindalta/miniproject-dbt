{{ config(materialized='table', schema='raw') }}

SELECT 
    {{ dbt_utils.star(source('public', 'address')) }}
FROM {{ source('public', 'address')}}