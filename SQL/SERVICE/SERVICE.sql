SELECT
    "customer name",
    COUNT(*) AS service_amounts
FROM service_data
GROUP BY "customer name"
ORDER BY service_amounts DESC;


SELECT
    brand,
    COUNT(*) AS guarantee_amounts
FROM service_data
WHERE warranty_status = 'Yes'
GROUP BY brand
ORDER BY guarantee_amounts DESC;


SELECT
    technician,
    AVG(julianday(finished) - julianday(confirmed)) AS day_average
FROM service_data
WHERE item = 'TV'
GROUP BY technician
ORDER BY day_average ASC;


SELECT
    technician,
    AVG(julianday(finished) - julianday(confirmed)) AS day_average
FROM service_data
WHERE technician = 'Rina Marlina'
GROUP BY technician;


SELECT
    city,
    SUM(total_cost) AS costs
FROM service_data
GROUP BY city
ORDER BY costs ASC;


SELECT
    brand,
    SUM(total_cost) AS costs
FROM service_data
WHERE warranty_status = 'No'
GROUP BY brand
ORDER BY costs DESC;
