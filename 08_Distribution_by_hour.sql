-- determine the distribution of the order by the hour of the day.
SELECT 
    HOUR(order_time) AS hour, COUNT(order_id)
FROM
    orders
GROUP BY hour