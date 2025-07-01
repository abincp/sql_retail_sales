# sql_retail_sales





Objectives
Set up a retail sales database: Create and populate a retail sales database with the provided sales data.
Data Cleaning: Identify and remove any records with missing or null values.
Exploratory Data Analysis (EDA): Perform basic exploratory data analysis to understand the dataset.
Business Analysis: Use SQL to answer specific business questions and derive insights from the sales data.

Project Structure

1. Database Setup
Database Creation
Table Creation: A table named retail_sales is created to store the sales data. The table structure includes columns for transaction ID, sale date, sale time, customer ID, gender, age, product category, quantity sold, price per unit, cost of goods sold (COGS), and total sale amount.
** retrieve  sales**
'''sql 
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
'''



