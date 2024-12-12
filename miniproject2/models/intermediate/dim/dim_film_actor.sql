{{ config(materialized='table', schema='intermediate') }}

SELECT 
    {{ dbt_utils.star(ref('raw_film_actor'))}}
FROM {{ ref('raw_film_actor') }}