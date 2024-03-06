
 {{
    config(
        materialized='incremental'
    )
}}



select * from 
 {{ source('restaurant', 'order_details_inc') }}




{% if is_incremental() %}

  where order_details_id >= (select max(order_details_id) from {{ this }})   order by order_details_id asc , order_id asc   limit 10

{% endif %}
