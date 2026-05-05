#Find out the top 5 states with the highest & lowest average freight value. 

select 
c.customer_state,
avg(freight_value) as avg_freight_value
from `TARGET_SQL.order` as o
join `TARGET_SQL.order_items` as oi
on o.order_id= oi.order_id
join `TARGET_SQL.customers` as c
on o.customer_id = c.customer_id
group by customer_state
order by avg_freight_value desc
limit 5;