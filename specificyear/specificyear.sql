SELECT
    Orders.Order_ID,
    Orders.Order_Date
  
FROM
    Orders
INNER JOIN
    Customers ON Orders.Customer_ID = Customers.Customer_ID
WHERE
    EXTRACT(YEAR FROM Orders.Order_Date) = 1996;
	
	--select * from orders order by order_date
