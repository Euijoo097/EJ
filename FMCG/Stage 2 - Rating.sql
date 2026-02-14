-- Quiz --
-- Average of rating based by customer_name [from lowest to highest] --

SELECT
    customer_name,
    AVG(rating) AS rating
FROM Purchase
group by customer_name
order by rating ASC
    LIMIT 13