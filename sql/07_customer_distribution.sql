# Distribution of custoer across the states of brazil

select customer_state,customer_city,
count(DISTINCT customer_id)as customer_count
from `TARGET_SQL.customers`
group by customer_state,customer_city
order by customer_count desc;