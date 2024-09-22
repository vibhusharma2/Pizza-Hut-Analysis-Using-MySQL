-- 11.	Calculate the percentage contribution of each pizza type to total revenue.

select pizza_types.category as category, 
round(sum(pizzas.price * order_details.quantity)
/ (SELECT ROUND(SUM(order_details.quantity * pizzas.price),2) AS total_sales
FROM order_details JOIN pizzas ON pizzas.pizza_id = order_details.pizza_id ) * 100, 2) as percentage_revenue
from pizza_types join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details on order_details.pizza_id = pizzas.pizza_id 
group by category
order by percentage_revenue

