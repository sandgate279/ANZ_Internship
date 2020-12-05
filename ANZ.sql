Select SUM(x.amount) as Annual_salary,SUM(x.balance)as Total_balance,x.age,x.customer_id
FROM
[WK9].[dbo].[ANZ] as x
where 
x.customer_id in

(select customer_id from [WK9].[dbo].[ANZ]
where
txn_description='PAY/SALARY')
group by
x.customer_id,x.age
