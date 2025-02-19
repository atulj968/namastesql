SELECT * FROM demo.Superstore_orders  ;

-- Ans 1
UPDATE demo.Superstore_orders 
SET City = null
WHERE Order_ID in ('CA-2020-161389' , 'US-2021-156909');

-- Ans 2
SELECT * FROM demo.Superstore_orders WHERE City  IS  NULL ;

-- Ans 3
SELECT Category , SUM(Profit) Total_profit, max(Order_Date) as Last_order_Date, min(Order_Date) as First_order_Date 
FROM demo.Superstore_orders
group by Category    


-- Ans 5
create table exams (student_id int, subject varchar(20), marks int);

insert into demo.exams values (1,'Chemistry',91),(1,'Physics',91),(1,'Maths',92)
,(2,'Chemistry',80),(2,'Physics',90)
,(3,'Chemistry',80),(3,'Maths',80)
,(4,'Chemistry',71),(4,'Physics',54)
,(5,'Chemistry',79);

SELECT * FROM demo.exams;

SELECT student_id, marks, count(*) as count_groupsize  FROM exams
WHERE subject in ('Physics', 'Chemistry')
group by marks, student_id 
HAVING COUNT(*) = 2 ;

-- Ans 6
SELECT Category, count(DISTINCT Product_ID) as Product_count  from demo.Superstore_orders
group by Category 

-- Ans 7
SELECT  Sub_Category, sum(Quantity) as total_quanity  from Superstore_orders
WHERE  Region  = 'West'
GROUP BY Sub_Category 
order by  total_quanity DESC  LIMIT 5;

-- Ans 8

