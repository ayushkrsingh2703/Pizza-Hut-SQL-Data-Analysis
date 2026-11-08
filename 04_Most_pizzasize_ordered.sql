-- Identify the most pizza size ordered
use project;
SELECT 
    quantity, COUNT(order_details_id)
FROM
    order_details
GROUP BY quantity;

SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) AS order_count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;
