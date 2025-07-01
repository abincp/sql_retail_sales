create database sql_project1
drop table if exists retail_sales;
create table retail_sales
(  
transactions_id int primary key,
sale_date date,
sale_time time,
customer_id int,
gender varchar(15),
age	int,
category varchar(15),
quantiy int, 
price_per_unit float,
cogs float,
total_sale float);

delete  from retail_sales
where transactions_id is null
or
sale_date is null
or 
sale_time is null
or
customer_id is null
or 
gender is null
or
age is null
or
category is null
or
quantiy is null
or
price_per_unit is null
or
cogs is null
or 
total_sale is null



select count (*) as total_sale from retail_sales

select count(distinct customer_id) as total_sale from retail_sales

select distinct category from retail_sales

 

 select  * from retail_sales 
 where sale_date = '2022-11-05'

 
select 
category,
sum(total_sale ) as net_sale,
count(*)as total_orders
from retail_sales
group by 1

select * from retail_sales
where total_sale > 1000

select 
category,
gender,
count(*) as total_trans
from retail_sales
group by
category,
gender
order by 1


select 
  extract(year from sale_date) as year,
  extract (month from sale_date) as month,
  AVG(total_sale)  as avg_sale
  from retail_sales
  group by 1,2
  order by 1,3 DESC

  SELECT
  CUSTOMER_ID,
  SUM(TOTAL_SALE) 
  FROM RETAIL_SALES
  GROUP BY 1 
  ORDER BY 2 DESC


SELECT  
  CATEGORY,
  count(distinct customer_id ) as cnt_unique
  from retail_sales
  group by category











 
