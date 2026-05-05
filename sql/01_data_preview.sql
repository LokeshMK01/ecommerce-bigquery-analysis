 #Import the dataset and do usual exploratory analysis steps like checking the structure & characteristics of the dataset: 
#1. Data type of all columns in the "customers" table. 
#2. Get the time range between which the orders were placed.

Select * from
`TARGET_SQL.customers`
limit 10;


select * from `TARGET_SQL.geolocation`
limit 5;