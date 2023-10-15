--Retrieve customer(company) information and their  orders:

SELECT Customers.company_name ,contact_name, address  , orders.order_Date, orders.ship_city
,orders.ship_country ,phone
FROM Customers
INNER JOIN Orders ON Customers.Customer_id = Orders.Customer_ID;

 
 