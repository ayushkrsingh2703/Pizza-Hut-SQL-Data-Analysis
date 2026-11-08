-- Group the orders by date and claculate the numbers of pizzas ordered per day .
SELECT 
    ROUND(AVG(total_quantity), 0) AS order_per_day
FROM
    (SELECT 
        orders.order_date,
            SUM(order_details.quantity) AS total_quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY order_date) AS order_quantity;