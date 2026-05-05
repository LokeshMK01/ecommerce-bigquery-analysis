#Is there a growing trend in the no. of orders placed over the past years?

select 
EXTRACT(month from order_purchase_timestamp)as month,
count(order_id) as order_num
from `TARGET_SQL.order`
group by EXTRACT(month from order_purchase_timestamp)
order by order_num desc;
