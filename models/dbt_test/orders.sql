


select order_details_id from 
 {{ source('restaurant', 'order_details_inc') }}
 order by order_details_id asc , order_id asc  limit 10 
