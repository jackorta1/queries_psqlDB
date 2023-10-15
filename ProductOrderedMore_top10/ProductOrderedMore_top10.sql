SELECT
    p.product_name,
    COUNT(*) AS ProductOrderedMore_top10
FROM
    order_details AS od
    INNER JOIN products AS p ON od.product_id = p.product_id
GROUP BY
    p.product_name
ORDER BY
    ProductOrderedMore_top10 DESC
limit 10
  


--select * from products