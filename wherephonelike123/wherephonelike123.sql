SELECT c.customer_id, c.company_name ,contact_name, address  , orders.order_Date, orders.ship_city
,orders.ship_country ,phone
FROM Customers as c
INNER JOIN Orders ON c.Customer_id = Orders.Customer_ID
 where c.phone like '%123%'
;

--select * from customers