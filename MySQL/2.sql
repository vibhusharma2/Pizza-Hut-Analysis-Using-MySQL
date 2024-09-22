-- 2. Calculate the total revenue generated from pizza sales.


-- SELECT 
-- (order_details.quantity * pizzas.price) AS total_sales
-- FROM order_details JOIN pizzas ON pizzas.pizza_id = order_details.pizza_id;

--  Above is a intital code to execute
--  Now down one will be executed.


SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;
    
-- In above code we have just changed total sales sum and rounded its value to Two decimal places along with CTRL+ B for beautification of code.