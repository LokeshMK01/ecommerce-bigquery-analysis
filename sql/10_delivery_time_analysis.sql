#calculate days between purchasing,delivering and estimated delivery

select order_id,
Date_Diff(Date(order_delivered_customer_date),Date(order_purchase_timestamp),Day) as days_to_delivery,
Date_Diff(Date(order_delivered_customer_date),Date(order_estimated_delivery_date),Day) as diff_estimated_delivery
from `TARGET_SQL.order`;