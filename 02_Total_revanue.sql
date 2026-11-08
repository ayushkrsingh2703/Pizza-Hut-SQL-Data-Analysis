-- Calculate the total revanue generated from pizza sales. 

SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS 'Total Revanue'
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;