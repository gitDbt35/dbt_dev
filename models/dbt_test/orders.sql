
 {{
    config(
        materialized='incremental'
    )
}}



select * from 
 {{ source('restaurant', 'order_details_inc') }}
 order by order_details_id asc , order_id asc  



{% if is_incremental() %}

  where order_details_id >= (select max(order_details_id) from {{ this }})   limit 10

{% endif %}
