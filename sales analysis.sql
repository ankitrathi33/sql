use sales; 
/*show total number of customers*/
select count(*) from customers;
 
/*Show transactions for Chennai market (market code for chennai is Mark001*/
select * from transactions where market_code = 'Mark001';
 
/*Show distinct product codes that were sold in chennai*/
select distinct product_code from transactions where market_code = 'Mark001';

/* Show transactions where currency is US dollars*/
select * from transactions where currency = 'USD';

/*Show transactions in 2020 join by date table*/
select transactions.*, date.*
from transactions 
inner join date
on transactions.order_date = date.date where date.year = 2020;

/*Show total revenue in year 2020*/
select sum(transactions.sales_amount) 
from transactions 
inner join date 
on transactions.order_date = date.date where year = 2020
and transactions.currency = 'INR\r' or transactions.currency = 'USD\r' ;

/*Show total revenue in year 2020, January Month*/
select sum(transactions.sales_amount)
from transactions 
inner join date
on transactions.order_date = date.date where year = 2020 
and month_name = 'january' 
and transactions.currency = 'INR\r' or transactions.currency = 'USD\r' ;

/*Show total revenue in year 2020 in Chennai*/

select sum(transactions.sales_amount)
from transactions
inner join date
on transactions.order_date = date.date where year = 2020
and transactions.market_code = 'Mark001';

/*union and union all*/

select customer_code from customers
union 
select customer_code from transactions
order by customer_code desc;

/*All*/

select market_code from transactions 
where market_code = all(select market_code from markets where market_code between 'Mark001' and 'Mark004')
order by market_code;

/*cummulative sum*/

select *, SUM(sales_amount) over(partition by market_code order by product_code) as runningsalestotal
from transactions;

/*case statement*/

select *, 
case
when sales_amount<50000 then "The amount is less than 50k"
when sales_amount<50000 and sales_amount<100000 then "The amount is between 50k and 100k"
else "The quantity is more than 100k"
end as abc
from transactions where currency = 'INR'
limit 10;

/*create view*/

create view chennai_market as 
select * from transactions where market_code = "Mark001";

select * from chennai_market;

/*Exists*/

select custmer_name
from customers
where exists(select product_code from transactions where customer_code = customers.customer_code and sales_amount > 60000);

/*rank,dense_rank and row_num*/

select *,
rank() over (order by market_code) as rnk,
dense_rank() over (order by market_code) as drnk
from transactions;

/*creating stored procedure*/

/*CREATE PROCEDURE chennai_markets ()
BEGIN
select * from transactions
where market_code = "Mark001";
END*/

/*group_by*/

select product_code,market_code, max(sales_amount)
from transactions
group by product_code

/*like operator*/

/*SELECT * from customers 
where custmer_name like '%Stores%';*/

/*subquery*/

/*select * from transactions 
where order_date in 
(select cy_date from date)*/

/* drugs join*/

/*select p.p_id,p.disease,d.disp_drug
from patient
join drug 
on p.p_id=d.p_id*/


/*inner join
select sales.transactions.order_date, sales.transactions.sales_amount, sales.date.cy_date 
from sales.transactions
inner join sales.date
on sales.date.cy_date = sales.transactions.order_date
where sales.date.year = 2019
limit 10;*/

/*self join*/

/*select c1.custmer_name, c1.customer_type,c2.custmer_name from customers c1 inner join customers c2
on c1.customer_type = c2.customer_type and c1.custmer_name > c2.custmer_name;
*/

/* select into */

/*
select * into chennai_market
from transactions
where market_code = 'Mark001';
*/



