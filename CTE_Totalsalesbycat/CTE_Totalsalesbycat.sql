WITH CategorySales AS (
    SELECT
        Categories.Category_Name,
       round( SUM(Order_Details.Unit_Price * Order_Details.Quantity)::numeric,2 )AS Totalsalesbycat
    FROM
        Categories  
    LEFT JOIN
        Products  ON Categories.Category_ID = Products.Category_ID
    LEFT JOIN
        Order_Details   ON Products.Product_ID = Order_Details.Product_ID
    GROUP BY
       Categories.Category_Name
)
SELECT
    Category_Name,
    Totalsalesbycat
FROM
    CategorySales
ORDER BY
    Totalsalesbycat DESC;

--select * from categories