# sql_retail_sales




1 data base creation

```sql 
create database sql_project1
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
```

##2data exploration and cleaning

```sql
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
```
##Data Analysis & Findings
1 SQL query to retrieve all columns for sales made on '2022-11-05:
 
```sql
 select  * from retail_sales 
 where sale_date = '2022-11-05'
```
2 SQL query to calculate the total sales (total_sale) for each category.:
SELECT 
``` sql
select 
category,
sum(total_sale ) as net_sale,
count(*)as total_orders
from retail_sales
group by 1
```
3 SQL query to find all transactions where the total_sale is greater than 1000.:
```sql
select * from retail_sales
where total_sale > 1000
```
4 SQL query to find the total number of transactions (transaction_id) made by each gender in each category.:
```sql
select 
category,
gender,
count(*) as total_trans
from retail_sales
group by
category,
gender
order by 1
```
5  SQL query to calculate the average sale for each month. Find out best selling month in each year:

```sql
select 
  extract(year from sale_date) as year,
  extract (month from sale_date) as month,
  AVG(total_sale)  as avg_sale
  from retail_sales
  group by 1,2
  order by 1,3 DESC
```
SQL query to find the top 5 customers based on the highest total sales **:
```sql
  SELECT
  CUSTOMER_ID,
  SUM(TOTAL_SALE) 
  FROM RETAIL_SALES
  GROUP BY 1 
  ORDER BY 2 DESC
```
SQL query to find the number of unique customers who purchased items from each category.:
```sql
SELECT  
  CATEGORY,
  count(distinct customer_id ) as cnt_unique
  from retail_sales
  group by category
```



