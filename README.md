# 🍕 Pizza Hut Analysis Using MySQL 📊

## Introduction

**🍕 From Craving Pizza to Analyzing Data!**

After a long, tiring day at **VIT Bhopal**, with my "lion of VIT" energy standing outside the college gate, I craved some delicious **Pizza Hut** 🍕. I decided to indulge in a **Pepperoni Pizza** and, while savoring each bite, a curious thought struck me:  
**What if I could analyze the data behind this pizza experience?**

With a passion for **data analysis**, I couldn't resist diving deeper. I began to ponder various aspects like:

- Types of pizzas 🥧  
- Number of orders 🍽️  
- Revenue generated 💰  
- Customer preferences 🗣️  

So, I quickly grabbed my laptop, opened MySQL, and started laying the foundation for a **Pizza Hut Data Analysis** project — all while enjoying another slice of pizza from "Our Pleasure", my favorite cafe in the city.

This project is a deep dive into **Pizza Hut’s sales data**, focusing on identifying key insights and patterns that could help better understand pizza sales and customer behaviors. 🍕💻

---

## Objectives & Analysis

The goal of this project is to explore and analyze Pizza Hut’s sales data using **MySQL**. Here are the key questions I aimed to answer with the analysis:

1. **Retrieve the total number of orders placed**  
2. **Calculate the total revenue generated from pizza sales**  
3. **Identify the highest-priced pizza**  
4. **Identify the most common pizza size ordered**  
5. **List the top 5 most ordered pizza types along with their quantities**  
6. **Join the necessary tables to find the total quantity of each pizza category ordered**  
7. **Determine the distribution of orders by hour of the day**  
8. **Join relevant tables to find the category-wise distribution of pizzas**  
9. **Group the orders by date and calculate the average number of pizzas ordered per day**  
10. **Determine the top 3 most ordered pizza types based on revenue**  
11. **Calculate the percentage contribution of each pizza type to total revenue**  
12. **Analyze the cumulative revenue generated over time**  
13. **Determine the top 3 most ordered pizza types based on revenue for each pizza category**

---

## Data Reference

To conduct this analysis, I utilized the following datasets:

- **Orders.csv**: Contains order details such as order date and time.
- **Order_Detail.csv**: Contains details about the pizzas ordered in each order, such as pizza type and quantity.
- **Pizzas.csv**: Contains details about each pizza, including the price and size.
- **Pizza_Types.csv**: Lists all the pizza types offered by Pizza Hut.

---

## MySQL Queries

Here’s a summary of the key SQL queries used for the analysis:

1. **Total Orders**  
   ```sql
   SELECT COUNT(*) AS total_orders FROM orders;
   ```

2. **Total Revenue**  
   ```sql
   SELECT SUM(order_details.quantity * pizzas.price) AS total_revenue 
   FROM order_details 
   JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id;
   ```

3. **Highest-Priced Pizza**  
   ```sql
   SELECT pizza_name, MAX(price) FROM pizzas;
   ```

4. **Most Common Pizza Size**  
   ```sql
   SELECT pizza_size, COUNT(*) AS size_count 
   FROM pizzas 
   GROUP BY pizza_size 
   ORDER BY size_count DESC 
   LIMIT 1;
   ```

*...Additional queries are used for other objectives.*

---

## Results

By executing these queries, I was able to uncover various insights about Pizza Hut's operations:

- The most ordered pizza size and type.
- Revenue contribution by different pizza categories.
- Peak order times during the day.
- Top 3 most popular pizzas based on revenue.

The detailed results can be found in the **SQL scripts** within the repository.

---

## Tech Stack

This project was built using the following tools:

- **SQL (MySQL)**: For querying and analyzing the pizza data.
- **Excel**: For organizing and visualizing some of the data.
- **Jupyter Notebook**: Used for combining the queries and performing additional calculations.

---

## Conclusion

The analysis provided valuable insights into **Pizza Hut’s operations**, uncovering trends such as the most popular pizza sizes, top-selling pizzas, and peak order times. This data can help the business make better decisions in terms of **menu offerings**, **inventory management**, and **targeted promotions**.

---

## Hashtags

#PizzaHutAnalysis #DataAnalysis #SQL #MySQL #PizzaLovers #VITBhopal #PepperoniPizza #BusinessIntelligence #DataDriven #FoodAnalytics 

