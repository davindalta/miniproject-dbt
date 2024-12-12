{{ config(materialized='table', schema='raw') }}

SELECT 
    {{ dbt_utils.star(source('public', 'staff')) }}
FROM {{ source('public', 'staff')}}