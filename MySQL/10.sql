-- 10.	Determine the top 3 most ordered pizza types based on revenue.

-- x Wrong method x

-- select pizzas.price, pizzas.pizza_id, count(order_details.quantity) as quantity 
-- from pizzas join order_details 
-- on pizzas.pizza_id = order_details.pizza_id
-- group by pizzas.price, pizzas.pizza_id
-- order by pizzas.price desc limit 3;

-- Right method would be : becuz its for revenue so we will multiply quantity and price to get it along with pizza name from pizza types.

SELECT 
    pizza_types.name AS names,
    SUM(pizzas.price * order_details.quantity) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY names
ORDER BY revenue DESC
LIMIT 3;


