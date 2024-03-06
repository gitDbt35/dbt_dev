{{ config(materialized='view', sort='order_id') }}

select o.order_id, sum(m.price) as bill
from {{ ref("orders") }} as o
inner join {{ ref("menu") }} as m on o.item_id = m.menu_item_id
group by o.order_id
