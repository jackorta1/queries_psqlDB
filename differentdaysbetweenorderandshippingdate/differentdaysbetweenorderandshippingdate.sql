-----different days between order product and shipping date if the shippping date is null that mean still pending 

SELECT
    p.product_name,
    CASE
        WHEN o.shipped_date IS NULL THEN 'Pending'
        ELSE (o.shipped_date - o.order_date)::text END AS differentdaysbetweenorderandshippingdate
FROM
    order_details AS od
    INNER JOIN products AS p ON od.product_id = p.product_id
    INNER JOIN orders AS o ON od.order_id = o.order_id
    INNER JOIN customers AS c ON o.customer_id = c.customer_id
WHERE
    o.shipped_date IS NOT NULL OR o.order_date IS NOT NULL
ORDER BY
    differentdaysbetweenorderandshippingdate DESC;



-- select * from customers 
-- select * from orders

-- select * from products
-- select * from order_details