-- Quiz --
-- The Month WHICH THE MOST SUCCEEDED total_sales transactions--

-- SPECIAL STAGE --

SELECT
    strftime('%m', sales_date) AS month,
    SUM(total_sales) AS sales,
    COUNT(status) AS Succeeded
FROM Purchase
WHERE status = 'Success'
GROUP BY month
ORDER BY Succeeded DESC
    LIMIT 1