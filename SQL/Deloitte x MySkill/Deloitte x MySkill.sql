-- GAME START --


# Top 10 Most Expensive Products

/* CHECKING Top 10 Most Expensive Products ... */
SELECT name as product_name,
	cost as price,
	category as variant
FROM data_thelook_product 
ORDER BY 2 DESC 
LIMIT 10

# The Average of Prices Based by Top Averages

/* DETERMINING The Average of Prices Based by Top Averages ... */
SELECT 
    category,
    ROUND(AVG(CAST(cost AS REAL)), 2) AS avg_cost
FROM data_thelook_product
GROUP BY category
ORDER BY avg_cost DESC

# The Most UNIQUE Usernames [First & Last] Who Started with 'M' and SORTED by Last Alphabet

/* IDENTIFYING The Most UNIQUE Usernames [First & Last] Who Started with 'M' and SORTED by Last Alphabet ... */
SELECT first_name, 
	last_name 
FROM data_thelook_users 
WHERE LOWER(first_name) LIKE '%m%'
ORDER BY first_name DESC

# 	Total Amounts of Users BASED BY Genders

/* CALCULATING Total Amounts of Users BASED BY Genders ... */
SELECT gender,
	COUNT (gender) AS AMOUNTS
FROM data_thelook_users 
GROUP BY gender


-- STAGE CLEAR --


