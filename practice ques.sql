/* select,where  and distinct*/

select * from date;
select count(distinct markets_code) from markets;

select *,sum(sales_amount) from transactions where market_code between 'Mark001' AND 'Mark006' group by customer_code 
having sum(sales_amount)>= 50000 order by sum(sales_amount) desc;

/*insert clause*/

/*
insert into table_name(columns1,...,columns m)
values(value1,....,valuen)
*/

/*update*/

/*
update table_name
set col1=new_value,....,colnn=new_valuen
where condition
*/

/*delete*/

/*
delete from table_name
where colname = conditon/value

to delete all the record at once 

delete from table_name
*/

/*min and max*/

select *,min(sales_amount) as minimum_price 
from transactions;

select *,max(sales_amount) as maximun_price
from transactions


/*select distinct market_code as amount 
from transactions 
where product_code = 'Prod001';
*/



