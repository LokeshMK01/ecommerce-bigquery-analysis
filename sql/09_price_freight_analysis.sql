#mean & sum of price and frieght value by customer state

select
c.customer_state,
AVG(price) as avg_price,
SUM(price) as sum_price,
AVG(freight_value) as avg_freight,
SUM(freight_value)as sum_freight
from `TARGET_SQL.order` as o
join `TARGET_SQL.order_items` as oi
on o.order_id=oi.order_id
join `TARGET_SQL.customers` as c
on o.customer_id=c.customer_id
group by c.customer_state;