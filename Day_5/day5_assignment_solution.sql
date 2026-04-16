SELECT * FROM orders;
SELECT * FROM returns;
SELECT * FROM dept;
SELECT * FROM employee;


-- Q1- write a query to get region wise count of return orders
SELECT region, COUNT(DISTINCT o.order_id) as total_return FROM orders o inner join returns r on r.order_id = o.order_id
group by region;

-- Q2- write a query to get category wise sales of orders that were not returned
SELECT category, sum(sales) from orders o left join returns r on o.order_id = r.order_id
where r.order_id is null
group by category;

-- Q3- write a query to print dep name and average salary of employees in that dep.
SELECT d.dep_name, avg(e.salary) as avg_sal from dept d inner join employee e on d.dep_id = e.dept_id
GROUP by d.dep_name 

-- Q4- write a query to print dep names where none of the emplyees have same salary.
SELECT d.dep_name from dept d inner join employee e on d.dep_id = e.dept_id
group by d.dep_name
having count(e.emp_id)=count(distinct e.salary)

-- Q5- write a query to print sub categories where we have all 3 kinds of returns (others,bad quality,wrong items)
SELECT o.sub_category from returns r inner join orders o on r.order_id = o.order_id
GROUP by o.sub_category
having count(distinct r.return_reason) = 3

-- Q6- write a query to find cities where not even a single order was returned.
SELECT o.city from orders o left join returns r on o.order_id = r.order_id
group by o.city
having count(r.order_id) = 0

-- Q7- write a query to find top 3 subcategories by sales of returned orders in east region
Select sub_category, sum(sales) as totalsales from orders o right join returns r on o.order_id = r.order_id
where o.region = 'East'
group by o.sub_category
order by totalsales DESC limit 3

-- Q8- write a query to print dep name for which there is no employee
select d.dep_name from dept d
where d.dep_id not in (select dept_id from employee)
-- or
select d.dep_id,d.dep_name
from dept d 
left join employee e on e.dept_id=d.dep_id
group by d.dep_id,d.dep_name
having count(e.emp_id)=0;

-- Q9- write a query to print employees name for dep id is not avaiable in dept table
Select e.emp_name from employee e left join dept d on e.dept_id = d.dep_id
group by e.emp_name
having count(d.dep_id)=0;
-- or
select e.emp_name from employee e left join dept d  on e.dept_id=d.dep_id
where d.dep_id is null;
