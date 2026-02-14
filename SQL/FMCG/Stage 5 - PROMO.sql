-- QUIZ 5 --

/* PROMO which successfully for total_sales with cooking oil productions */
/*	DOUBLE DATE VS PAYDAY SALES !? */

-- FINAL SPECIAL STAGE --

SELECT
    product_name,
    CASE
        WHEN strftime('%d', date(sales_date)) = strftime('%m', date(sales_date))
            THEN 'Double Date'
        WHEN strftime('%d', date(sales_date)) = '25'
            THEN 'Payday Sale'
    END AS sale_event,
    SUM(total_sales) AS total_sales
FROM purchase
WHERE product_name = 'Minyak Goreng'
  AND status = 'Success'
  AND (
        strftime('%d', date(sales_date)) = strftime('%m', date(sales_date))
        OR strftime('%d', date(sales_date)) = '25'
      )
GROUP BY product_name, sale_event
ORDER BY total_sales DESC


