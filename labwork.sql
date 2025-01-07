create database labwork;
use labwork;
show tables;
select * from sales;
select * from products;

-- List the total sales revenue for each product.
select p.product_name,sum(p.price*s.quantity) as Total_Revenue
from sales s
join products p on p.product_id=s.product_id
group by p.product_name;

-- Find the total number of products sold in each category.
select p.category ,sum(s.quantity) as total_product_sold
from products p
join sales s on s.product_id=p.product_id
group by p.category;

-- Calculate the average quantity sold for each product.
select p.product_name, avg(s.quantity) as avg_quantity
from products p
join sales s on s.product_id=p.product_id
group by product_name
order by avg_quantity desc;

-- Find the top 3 products by total revenue. Sort by total revenue and limit the results to the top 3.
select p.product_name,sum(p.price*s.quantity) as total_revenue
from products p
join sales s on s.product_id=p.product_id
group by p.product_name
order by total_revenue desc limit 3;

-- List the total revenue for each category.
select p.category,sum(p.price*s.quantity) as total_revenue
from products p
join sales s on s.product_id=p.product_id
group by p.category
order by total_revenue desc ;


