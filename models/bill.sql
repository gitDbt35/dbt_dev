select o.order_id, sum(m.price)
from {{ ref("orders") }} as o
inner join {{ ref("menu") }} as m on o.item_id = m.menu_item_id
group by 1
order by 1
