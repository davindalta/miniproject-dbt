{{ config(materialized='table', schema='raw') }}

SELECT 
    {{ dbt_utils.star(source('public', 'actor')) }}
FROM {{ source('public', 'actor')}}