# Find out the top 5 states with the highest & lowest average delivery 

select 
c.customer_state,
avg(extract(Date from o.order_delivered_customer_date) - Extract(date from o.order_purchase_timestamp)) as avg_time_to_delivery
from `TARGET_SQL.order` as o
join `TARGET_SQL.order_items` as oi
on o.order_id= oi.order_id
join `TARGET_SQL.customers` as c
on o.customer_id = c.customer_id
group by customer_state
order by avg_time_to_delivery desc
limit 5;



select 
c.customer_state,
avg(extract(Date from o.order_delivered_customer_date) - Extract(date from o.order_purchase_timestamp)) as avg_time_to_delivery
from `TARGET_SQL.order` as o
join `TARGET_SQL.order_items` as oi
on o.order_id= oi.order_id
join `TARGET_SQL.customers` as c
on o.customer_id = c.customer_id
group by customer_state
order by avg_time_to_delivery asc
limit 5;