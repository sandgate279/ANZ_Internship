select sum(b.balance) as Total_balance ,b.customer_id,b.age from [WK9].[dbo].[ANZ] as b

group by 
b.customer_id,b.long_lat,b.age
order by 

b.customer_id desc


select sum(b.amount) as Annual_salary ,b.customer_id from [WK9].[dbo].[ANZ] as b
where b.txn_description='PAY/SALARY'

group by 
b.customer_id
order by 

b.customer_id desc