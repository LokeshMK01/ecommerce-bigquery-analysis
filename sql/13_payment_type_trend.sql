#Find the month on month no. of orders placed using different payment types. 

select
payment_type,
extract(year from o.order_purchase_timestamp) as year,
extract(month from o.order_purchase_timestamp) as month,
count(DISTINCT o.order_id) as order_count
From `TARGET_SQL.order`as o
inner join `TARGET_SQL.payment` as p
on o.order_id = p.order_id
GROUP BY payment_type,year,month
order by payment_type,year,month;