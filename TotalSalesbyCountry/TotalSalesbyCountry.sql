SELECT

 round(sum(od.unit_price * od.quantity)::numeric ,2)as TotalSalesbyCountry        --, o.order_date,
,  c.country
FROM
     order_details AS od 
	 INNER JOIN products AS p ON od.product_id = p.product_id
INNER JOIN orders AS o ON od.order_id = o.order_id
INNER JOIN customers AS c ON o.customer_id = c.customer_id

group by country
order by TotalSalesbyCountry desc



-- select * from customers 
-- select * from orders

-- select * from products
-- select * from order_details