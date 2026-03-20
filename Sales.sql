select * from sales;
select country,product,units_sold from sales;
select * from sales limit 10;
select distinct(country) as unique_countries from sales;
select distinct(product) as unique_product from sales;
select count(*) from sales;

SELECT * FROM SALES WHERE COUNTRY = "CANADA";
SELECT * FROM SALES WHERE PRODUCT = "PANTS";
SELECT * FROM SALES WHERE UNITS_SOLD >=1000;
SELECT * FROM SALES WHERE YEAR='2014';
SELECT * FROM SALES WHERE PROFIT>= 100000;

SELECT * FROM SALES WHERE YEAR = 2013 ORDER BY TOTAL_SALES DESC;
SELECT * FROM SALES ORDER BY PROFIT ASC;
select product from sales order by product asc;
SELECT * FROM SALES order by units_sold asc;
SELECT * FROM SALES order by profit,year desc;

select sum(units_sold) as e from sales;
select sum(profit) as e from sales;
select avg(Price_Unit) as e from sales;
select max(profit) as e from sales;
select min(total_sales) as e from sales;

select country,sum(total_sales) as e from sales
group by country order by e desc;
select product,sum(profit) as e from sales
group by product order by e desc;
select product,sum(units_sold) as e from sales
group by product order by e desc;
select product,avg(units_sold) as e from sales
group by product order by e desc;
select year,sum(units_sold) as e from sales
group by year order by e desc;

select country,sum(total_sales) as e from sales
group by country order by e desc; 				(USA generated the highest total sales);
select product,SUM(units_sold) as e from sales
group by product order by e desc;  				(PRODUCT MASKS sold most units);

SELECT PRODUCT,SUM(PROFIT) AS E FROM SALES
GROUP BY PRODUCT ORDER BY E DESC;    			(TV generated the highest profit);

SELECT YEAR,SUM(TOTAL_SALES) AS E FROM SALES
GROUP BY YEAR ORDER BY E DESC;					(Year 2014 had highest total sales);

select country,sum(profit) as e from sales
group by country  order by e asc limit 1;		( Mexico had the lowest profit);

select * from sales 
order by profit desc limit 5;

select * from sales where profit >= 20000
order by profit desc limit 3;
 
select country,year,sum(profit) as e from sales
group by country,year;






select count(total_sales) from sales;
select count(*) as  total_sales from sales;
select count(distinct(country)) from sales;
select count(distinct(product)) as products from sales;
select distinct(year) as e from sales order by e asc;
select country,product, count(product)>1 as e from sales
group by country,product;

select country,sum(total_sales) as country_sales
from sales group by country order by country_sales desc;

select country,sum(profit) as p from sales
group by country order by p desc;

select product,total_sales,avg(profit) as e
from sales group by product,total_sales;

select product,sum(profit) as e from sales 
group by product order by e desc limit 3;

select country,sum(total_sales) as f from 
sales group by country order by f desc limit 2;

select country,sum(units_sold) as e from sales 
group by country having e >= 10000;

select country,sum(total_sales) as e from sales 
group by country order by e asc;

select year,sum(total_sales) as D from sales
group by year;

select year,sum(units_sold) as q from sales
group by year order by year desc;

select year,avg(total_sales) as D from sales
group by year;

select distinct(product) from sales as e
where total_sales > total_cost;

select * from sales as R
where profit> profit/100 ;


select * from sales
where profit > (0.30 * profit);

select * from sales where 
price_unit >= (2*cost_unit);

SELECT country,  AVG(profit) AS average_country_profit FROM sales
GROUP BY country HAVING AVG(profit) > (SELECT AVG(profit) FROM sales)
ORDER BY average_country_profit DESC;

SELECT DISTINCT(COUNTRY),YEAR,SUM(PROFIT) AS E FROM SALES
GROUP BY COUNTRY,YEAR ORDER BY E ASC;

SELECT COUNTRY,YEAR,SUM(UNITS_SOLD) AS UNITS, SUM(TOTAL_SALES) AS SALES, SUM(PROFIT) AS PROFIT
FROM SALES GROUP BY COUNTRY,YEAR ORDER BY YEAR DESC;

SELECT PRODUCT,YEAR,SUM(UNITS_SOLD) AS UNITS, SUM(TOTAL_SALES) AS SALES, SUM(PROFIT) AS PROFIT
FROM SALES GROUP BY PRODUCT,YEAR ORDER BY YEAR DESC;

SELECT PRODUCT, YEAR,SUM(UNITS_SOLD) AS U, SUM(TOTAL_SALES) AS S, SUM(PROFIT) AS P
FROM SALES GROUP BY PRODUCT,year ORDER BY YEAR;


SELECT COUNTRY,PRODUCT,SUM(TOTAL_SALES) AS performing from sales
group by country,product order by performing desc;

 