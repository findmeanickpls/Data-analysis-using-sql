create database book;
use book;
show tables;
select * from books;
select * from authors;
select * from sales;

-- Exercise 1: Retrieve all books
-- Write a query to retrieve all the books in the bookstore, displaying the book title, author name, and price.
select b.title,concat(a.first_name,' ',a.last_name) as author_name,s.total_sales
from books b
join authors a on b.book_id=a.author_id
join sales s on a.author_id=s.sale_id;

-- Exercise 2: Find the authors born before 1900
-- Write a query to find all authors who were born before the year 1900.
select concat(first_name,' ', last_name) as authors,birth_year
from authors where birth_year<1900;

-- Exercise 3: List total sales for each book
-- Write a query to list the total sales for each book, showing the book title and the total sales (sum of total_sales in the Sales table).
select b.title, s.total_sales
from books b
join sales s on b.book_id=s.sale_id;

-- Exercise 4: Find the highest priced book
-- Write a query to find the book with the highest price in the bookstore.
select b.title, s.total_sales
from books b
join sales s on b.book_id=s.sale_id
order by s.total_sales desc limit 1;

-- Exercise 5: Find the number of books sold for each genre
-- Write a query to find out how many books of each genre have been sold, including the genre and total quantity sold.
select b.genre,b.title,count(s.quantity)
from books b
join sales s on s.sale_id=b.book_id
group by count(s.quantity)

