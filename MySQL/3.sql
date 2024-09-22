-- 3.	Identify the highest-priced pizza.

-- select pizza_types.name, pizzas.price
-- from pizza_types join pizzas
-- on pizza_types.pizza_type_id = pizzas.pizza_type_id;

-- Above is for name and price extraction of pizza's from two tables 
-- Now after this we have to find highest price pizza by {order by pizzas.price desc/ Asce limit 1;}

SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
-- LIMIT 1;