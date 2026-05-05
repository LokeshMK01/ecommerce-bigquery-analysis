#2. Get the time range between which the orders were placed.

select 
min(order_purchase_timestamp) as start_time,
max(order_purchase_timestamp) as end_time
from `TARGET_SQL.order`;