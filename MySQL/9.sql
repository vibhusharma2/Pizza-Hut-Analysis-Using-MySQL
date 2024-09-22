-- Q4.	Group the orders by date and calculate the average number of pizzas ordered per day.

-- Good Qustion

-- Intitial Approach

-- select (orders.order_date) as date , count(order_details.quantity)as quantity
-- from orders join order_details on orders.order_id = order_details.order_id
-- group by date;

SELECT 
    ROUND(AVG(quantity), 0) as AVG_pizza_ordered_perday
FROM
    (SELECT 
        (orders.order_date) AS date,
            COUNT(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY date) AS order_quantity




