

select o.order_id,sum(m.price) from {{ ref('orders')}} as o
inner join {{ ref('menu') }}  as m
on o.ITEM_ID = m.MENU_ITEM_ID
group by 1

