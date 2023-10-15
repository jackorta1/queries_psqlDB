SELECT

   c.company_name,  p.product_name,od.unit_price, od.quantity, o.order_date,o.required_date,
    o.shipped_date,
    o.freight,
   
    c.contact_name,
    c.contact_title
FROM
     order_details AS od 
	 INNER JOIN products AS p ON od.product_id = p.product_id
INNER JOIN orders AS o ON od.order_id = o.order_id
INNER JOIN customers AS c ON o.customer_id = c.customer_id
order by c.company_name



-- select * from customers 
-- select * from orders

-- select * from products
-- select * from order_details