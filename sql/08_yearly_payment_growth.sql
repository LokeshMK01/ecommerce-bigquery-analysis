#Get the % increase in the cost of orders from year 2017 to 2018 (include months between Jan to Aug only). 
#You can use the "payment_value" column in the payments table to get the cost of orders.

#step 1:calculate total payment per year
With yearly_totals as(
select
EXTRACT(year from o.order_purchase_timestamp) as year,
sum(p.payment_value) as total_payment
from `TARGET_SQL.payment` as p
join `TARGET_SQL.order` as o
on p.order_id = o.order_id
where EXTRACT(year from o.order_purchase_timestamp) in (2017,2018)
and EXTRACT(month from o.order_purchase_timestamp) between 1 and 8
group by  EXTRACT(year from o.order_purchase_timestamp)
),

#step 2: use lead window function to compare each year's paymenyt with the previous year

yearly_comparisons as (
select
year,
total_payment,
LEAD(total_payment) over (order by year desc) as prev_year_payment
from yearly_totals
)
#step 3:calculate % increase
select round(((total_payment-prev_year_payment) / prev_year_payment)*100,2)
from yearly_comparisons;