#Get the month on month no. of orders placed in each state.

select 
extract(month from order_purchase_timestamp) as month,
extract(year from order_purchase_timestamp) as year,
count(*) as num_of_order
from `TARGET_SQL.order`
group by year,month
order by  year,month;
