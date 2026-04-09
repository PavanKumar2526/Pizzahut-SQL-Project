CREATE database pizzahut;
use	pizzahut;

Create Table orders(
Order_id INT Not null,
Order_date date not null,
Order_time time not null,
primary key(Order_id)
);	


Create Table orders_details(
orders_details_id int not null,
Order_id INT Not null,
pizza_id varchar(100),
Order_Qty INT not null,
primary key(orders_details_id)
);	

Drop Table orders_details;

Create Table orders_details(
orders_details_id int not null,
Order_id INT Not null,
pizza_id varchar(100),
Order_Qty INT not null,
primary key(orders_details_id)
);	

## -- Basic

-- 1. Retrieve the total number of orders placed.
Select count(Order_id) from orders;


-- 2. Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(orders_details.order_Qty * pizzahut.pizzas.price),
            2) AS Total_Revenue
FROM
    orders_details
        JOIN
    pizzahut.pizzas ON orders_details.pizza_id = pizzas.pizza_id;
    

-- 3. Identify the highest-priced pizza.

select pizzahut.pizza_types.name, pizzahut.pizzas.price
from pizzahut.pizza_types JOIN pizzahut.pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
order by pizzas.price desc limit 1;

-- 4. Identify the most common pizza size ordered.

SELECT 
    pizzahut.pizzas.size,
    COUNT(pizzahut.orders_details.orders_details_id) AS order_count
FROM
    pizzahut.pizzas
        JOIN
    pizzahut.orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC
LIMIT 1;

-- 5.List the top 5 most ordered pizza types, along with their quantities.

select pizza_types.name, sum(orders_details.Order_Qty) as quantity
from pizza_types 
join pizzas 
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
Group by pizza_types.name order by quantity desc limit 5;

## Intermediate 

-- 1. Join the necessary tables to find the total quantity of each pizza category ordered.?


select pizza_types.category, sum(orders_details.Order_Qty) as Total_Qty
from pizza_types
join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details on orders_details.pizza_id = pizzas.pizza_id
GROUP BY category;

-- 2. Determine the distribution of orders by hour of the day.?

SELECT 
    HOUR(orders.order_time) AS Peak_Hours,
    COUNT(order_id) AS Peak_orders
FROM
    orders
GROUP BY Peak_Hours
ORDER BY Peak_orders DESC
LIMIT 5;


-- 3. Join relevant tables to find the category-wise distribution of pizzas.

select pizza_types.category, count(name) 
from pizza_types
group by category;

-- 4. Group the orders by date and calculate the average number of pizzas ordered per day. ?

SELECT 
    ROUND(AVG(orders_per_day), 2) AS avg_pizzas_per_day
FROM
    (SELECT 
        orders.Order_date,
            SUM(orders_details.Order_Qty) AS orders_per_day
    FROM
        orders_details
    JOIN orders ON orders.Order_id = orders_details.Order_id
    GROUP BY orders.order_date) AS order_quantity;
    
-- 5. Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pizza_types.name,
    SUM(orders_details.Order_Qty * pizzas.price) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    orders_details ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY revenue DESC
LIMIT 3;


## Advance 

-- 1. Calculate the percentage contribution of each pizza type to total revenue.
select pizza_types.category, sum(pizzas.price * orders_details.Order_Qty) as revenue
from pizza_types
join orders_details on orders_details.pizza_id = pizzas.pizza_id
join pizza_types on pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.category;






