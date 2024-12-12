{{ config(materialized='table', schema='raw') }}

SELECT 
    {{ dbt_utils.star(source('public', 'film_actor')) }}
FROM {{ source('public', 'film_actor')}}