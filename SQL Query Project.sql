select * from dbo.[SQL Project]

select COUNTRY , YEAR_ID , PRODUCTLINE from dbo.[SQL Project]


--- Checking Unique values
select distinct city from dbo.[SQL Project]
select distinct year_id from dbo.[SQL Project]
select distinct country from dbo.[SQL Project]
select distinct dealsize from dbo.[SQL Project]
select distinct productline from dbo.[SQL Project]

--- Analysis
select CITY , sum(sales) Revenue
from dbo.[SQL Project]
group by CITY
order by 2 asc


select status , COUNT (quantityordered) product
from dbo.[SQL Project]
group by status
order by 2 asc 


select Year_Id , sum (sales) Revenue
from dbo.[SQL Project]
group by YEAR_ID
order by 2 desc

select PRODUCTLINE , sum (SALES) Revenue
from dbo.[SQL Project]
group by PRODUCTLINE
order by 2 desc

select DEALSIZE , sum(sales) Revenue
from dbo.[SQL Project]
group by DEALSIZE
order by 2 desc

--- what city has the highest number of sales in a specific country
select city , sum (sales) Revenue 
from dbo.[SQL Project]
where country = 'USA'
group by city
order by 2 desc 

select city , sum (sales) Revenue
from dbo.[SQL Project]
where COUNTRY = 'Australia'
group by CITY
order by 2 desc


--- which city has the highest number of productline 
select city , count (productline) Product 
from dbo.[SQL Project]
group by CITY
order by 2 desc



--- what is the best product in UK
select COUNTRY , YEAR_ID , PRODUCTLINE , sum(sales)
from dbo.[SQL Project]
where COUNTRY = 'UK'
group  by country , YEAR_ID , productline
order by 4 desc



--- what is the best product in FRANCE
select country , YEAR_ID , productline , sum(sales)
from dbo.[SQL Project]
where COUNTRY = 'FRANCE'
group by COUNTRY , YEAR_ID , PRODUCTLINE
order by 4 desc



--- What was the best month for sales in a specific year? How much was earned that month?
select month_id , SUM(sales) Revenue, COUNT(ordernumber) ordernumber
from dbo.[SQL Project]
where YEAR_ID = 2005
group by MONTH_ID
order by 2 desc




--- All the sales where value>5000 & year>2003
select * from dbo.[SQL Project]
where SALES > 5000 and YEAR_ID > 2003


--- Number of quantityordered between 20 to 40
select * from dbo.[SQL Project]
where QUANTITYORDERED between 20 and 40 ;



--- select all the contact first name that starts with F with pattern matching style
select * from dbo.[SQL Project]
where CONTACTFIRSTNAME like 'f%';




---  select all the sales under 5000 using case operater
select orderdate, sales,
       case when sales > 5000 then 'under5k'
	   end as 'sales category'
from dbo.[SQL Project]



















































































