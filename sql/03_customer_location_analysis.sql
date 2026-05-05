
#display the details Cities & States of customers who ordered during the given period. 
select
customer_city,customer_state
from `TARGET_SQL.order` as o
join `TARGET_SQL.customers` as c
on o.customer_id = c.customer_id
where EXTRACT(year from o.order_purchase_timestamp)=2018
and EXTRACT(month from order_purchase_timestamp) Between 1 and 3;