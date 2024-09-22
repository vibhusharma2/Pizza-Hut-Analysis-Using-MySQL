-- 13. Determine the top 3 most ordered pizza types based on revenue for each pizza category.
-- here, firstly we find the complete value then ranked that table and atlast we need top 3 rank 
-- since we cannot use rank directly in where, so we make another sub-query for where rn<=3 .

select category, names, revenue 
from
(select category, names, revenue,
rank() over(partition by category order by revenue desc) as rn
from
(select pizza_types.category as category, pizza_types.name as names,
round(sum(pizzas.price * order_details.quantity), 2) as revenue
from pizza_types join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details on order_details.pizza_id = pizzas.pizza_id 
group by category, names) as a) as b 
where rn<=3; 