-- 5. List the top 5 most ordered pizza types along with their quantities.


--  X Wrong X  This is wrong method because by this we will get the quantity but of pizza id not the exact type of pizza
-- SELECT 
--     order_details.pizza_id,
--     COUNT(order_details.quantity) AS Quantity_Ordered
-- FROM
--     order_details
-- GROUP BY order_details.pizza_id
-- ORDER BY Quantity_Ordered DESC
-- LIMIT 5;

-- Correct method = By taking pizza_types and Order_details, To join this both tables we have to take another table of pizzas for making things in common.

-- initial approach
-- select pizza_types.name , order_details.quantity
-- from pizza_types join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
-- join order_details on order_details.pizza_id = pizzas.pizza_id;


SELECT 
    pizza_types.name, SUM(order_details.quantity) AS Quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY Quantity DESC
LIMIT 5;