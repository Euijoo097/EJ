-- QUIZ 4 --

/* Channel which having least disc but become the most succeeded transactions */

SELECT
    channel,
    SUM(disc) AS disc_totals,
    COUNT(*) AS transaction_totals
FROM Purchase
WHERE status = 'Success'
GROUP BY channel
ORDER BY transaction_totals DESC
    LIMIT 1


