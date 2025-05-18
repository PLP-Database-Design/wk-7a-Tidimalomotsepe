question 1
SELECT OrderID, CustomerName, TRIM(value) AS Product
FROM ProductDetail,
     JSON_TABLE(
        CONCAT('["', REPLACE(Products, ',', '","'), '"]'),
        '$[*]' COLUMNS (value VARCHAR(255) PATH '$')
     ) AS SplitProducts;

question 2
Orders table:
sql
Copy
Edit
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;


OrderItems table:
sql
Copy
Edit
SELECT OrderID, Product, Quantity
FROM OrderDetails;










