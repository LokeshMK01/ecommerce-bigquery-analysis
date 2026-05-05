#During what time of the day, do the Brazilian customers mostly place their orders? (Dawn, Morning, Afternoon or Night) 
#■ 0-6 hrs : Dawn 
#■ 7-12 hrs : Mornings 
#■ 13-18 hrs : Afternoon 
#■ 19-23 hrs : Night 

select 
EXTRACT(hour from order_purchase_timestamp)as time,
count(order_id) as order_num
from `TARGET_SQL.order`
group by EXTRACT(hour from order_purchase_timestamp)
order by order_num desc;
