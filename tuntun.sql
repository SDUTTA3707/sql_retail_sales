SELECT * FROM p1_retail_db.retail_sales;

select *
From retail_sales
limit 10;

select  count(*)
from retail_sales;

select * from retail_sales
where transactions_id IS NULL;

select * from retail_sales
WHERE 
	transactions_id IS null
    or
    sale_date IS null
    or 
    gender IS null
    or
    category IS null
    or
    quantity IS null
    or 
    cogs IS NULL 
    or
    total_sale IS null ;


-- data exploration 

-- how may sales we have?

select *
from retail_sales;

select  Count(*) as total_sale
from retail_sales;

select count(DISTINCT customer_id) as total_sale
from retail_sales;

select Distinct category
from retail_sales;

-- DATA analysis and business problems


-- write a sql query to retuive all colums for sales made on 2022_11_05

select *
from retail_sales
where sale_date = '2022-11-05';

--  write a sql quary that retive all transaction where the category is "clothing' and the uantity sold is more than 10 in the month of november

select *
from retail_sales
where category ='clothing' and quantity <10 and sale_date between  '2022-11-01' and '2022-11-30';


-- write an SQL query to calculate the toal sales )total_sales) for eacg catagory


select 
gender,
sum(total_sale) as net_sale,
count(*) as total_orders
from retail_sales
group by 2;


-- sverage age

SELECT 
ROUND(AVG(age),2) as avg_age
from retail_sales
where category ='Beauty';
-- write the sql query to find the total number of transaction made ny gender each catefory
select 
	category,
    gender,
    count(*) as total_trans
from retail_sales
	group by 
		gender,
        category
	order by 1;
    
    -- it is a specif question alter

select 
EXTRACT(year From sale_date) as years,
extract(month from sale_date) as months,


avg(total_sale) as avg_sale
From retail_sales
Group by 1,2
order By 1, 3 desc

