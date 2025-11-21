create database EL_5;

use el_5;

drop table sales;

CREATE TABLE sales_transactions (
    TransactionID INT PRIMARY KEY,
    Date DATE,
    ProductCategory VARCHAR(100),
    ProductName VARCHAR(255),
    UnitsSold INT,
    UnitPrice DECIMAL(10,2),
    TotalRevenue DECIMAL(12,2),
    Region VARCHAR(100),
    PaymentMethod VARCHAR(50)
);

-- SALES TREND ANALYSIS


select * from sales_transactions;

-- Total Revenue
select sum(totalrevenue) as TotalRevenue
from sales_transactions;

-- Total Units Sold
select sum(unitssold) as QuantitySold
from sales_transactions;


-- Monthly Sales
select date_format(Date,"%M") as MonthName, sum(totalrevenue) as TotalRevenue
from sales_transactions
group by date_format(Date,"%M");

-- Weekly sales
select dayname(date) as Day, sum(unitssold) as QuantitySold
from sales_transactions
group by dayname(date)
order by sum(unitssold) desc;

-- Quarterly Sales
select quarter(date) as Quarters, sum(totalrevenue) as TotalRevenue
from sales_transactions
group by quarter(date)
order by sum(totalrevenue) desc;


-- MOM Growth
with monthlysales as (
select date_format(Date,"%M") as MonthName, MONTH(Date) AS MonthNumber , sum(totalrevenue) as TotalRevenue
from sales_transactions
group by date_format(Date,"%M") ,  MONTH(Date) 
)
select MonthName,TotalRevenue,
       lag(TotalRevenue) over(order by MonthNumber) as PreviousMonthSales,
       round((TotalRevenue - lag(TotalRevenue) over(order by MonthNumber) ) *100/lag(TotalRevenue) over(order by MonthNumber),2)  as MontlyGrowth
from monthlysales;


-- QOQ Grwoth
with quarterlysales as (
	select quarter(date) as Quarters, sum(totalrevenue) as TotalRevenue
	from sales_transactions
	group by quarter(date)
	order by sum(totalrevenue) desc
)
select Quarters,TotalRevenue,
	   lag(totalRevenue) over(order by Quarters) as PreviousQuarterSales,
       round((TotalRevenue - lag(totalRevenue) over(order by Quarters)) * 100 / lag(totalRevenue) over(order by Quarters),2) as QuaterlyGrowth
from quarterlysales;
       

