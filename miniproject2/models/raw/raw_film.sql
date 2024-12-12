{{ config(materialized='table', schema='raw') }}

SELECT 
    {{ dbt_utils.star(source('public', 'film')) }}
FROM {{ source('public', 'film')}}