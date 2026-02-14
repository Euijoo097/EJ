-- Quiz --
-- Top 10 MOST EXPENSIVE of order_id, product_name and price with  --

SELECT
    order_id, product_name, price
FROM Purchase
ORDER BY price DESC
    Limit 10