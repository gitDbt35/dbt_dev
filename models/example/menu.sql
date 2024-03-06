
{{ config(full_refresh = true) }}


select * from 
 {{ source('restaurant', 'menu_items_inc') }}
