#Find the no. of orders placed on the basis of the payment installments that have been paid.

select payment_installments,
count(DISTINCT order_id) as num_orders
from `TARGET_SQL.payment`
group by payment_installments