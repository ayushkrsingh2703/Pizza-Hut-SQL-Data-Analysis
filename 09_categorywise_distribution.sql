-- Catogery wise distribution of the pizzas
SELECT 
    category, COUNT(name)
FROM
    pizza_types
GROUP BY category