WITH Top10Sellercompany AS (
    SELECT
        customers.company_name,
       customers.contact_name,
       customers.contact_title,
        COUNT(orders.order_id) AS order_count,
        DENSE_RANK() OVER (ORDER BY COUNT(orders.order_id) DESC) AS company_rank
    FROM
        order_details  
        INNER JOIN products ON order_details.product_id = products.product_id
        INNER JOIN orders   ON order_details.order_id = orders.order_id
        INNER JOIN customers   ON orders.customer_id = customers.customer_id
    GROUP BY
       customers.company_name, customers.contact_name, customers.contact_title
)
SELECT
    company_name,
    contact_name,
    contact_title,
    company_rank,
    order_count
FROM
    Top10Sellercompany
WHERE
    company_rank <= 10;
