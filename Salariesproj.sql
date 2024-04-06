create database data_new;
select * from data_new.salaries;
use data_new;
select * from salaries where 1;
-- to show all columns and rows in the table
-- to show only the employeename and job title column;
select EmployeeName, JobTitle from salaries;
-- to show the number of employees in the table
select count(*) from salaries;
-- to show the unique job titles in the table
select distinct JobTitle from salaries;
select count(distinct JobTitle) from salaries;
-- show the job title and overtime pay for all employees with overtime pay greater than 5000;
select JobTitle, OvertimePay from salaries where OvertimePay> 5000;
-- show the average base pay for all employees
select Avg(BasePay) as "AverageBasePay" from salaries;
-- show top 10 highest paid employee
select EmployeeName, TotalPay from salaries order by TotalPay desc limit 10;
-- show the average of basepay, overtimepay and otherpay for each employee; 
select * from salaries;
select EmployeeName, (BasePay + OvertimePay + OtherPay)/3 as Averageof3column from salaries;
-- Show all the employee with manager title;
select EmployeeName, JobTitle from salaries where JobTitle Like '%Manager%';
-- Show all employees with a job title not equal to manager
select * from salaries;
select EmployeeName, JobTitle from salaries where JobTitle <>'Manager';
-- show all employees with a total pay between 5000 and 7000
select * from salaries; 
select * from salaries where TotalPay>=5000 and TotalPay<=7000;
select * from salaries where TotalPay between 5000 and 7000;
-- show all employees with a base pay less than 5000 or a total pay greater than 6000
select * from salaries where BasePay < 5000 or BasePay >6000;
-- show all employees with a total pay benefits value between 5000 and 10000 and a job title containing the wrod director
select * from salaries;
select * from salaries where TotalPayBenefits between 5000 and 10000 and JobTitle Like '%Director%';
-- show all employees ordered by their total pay benefits in descending order
select * from salaries order by TotalPayBenefits desc;
-- show all jobtitles with an average basepay of atleast 5000 and order them by the average base pay in descending order
Select JobTitle, AVG(BasePay) as "avgbasepay" from salaries group by JobTitle having avg(BasePay)>=1000  order by avgbasepay desc;
-- delete column
select * from salaries;
alter table salaries drop column OtherPay;
select * from salaries;
-- update the base pay of all employees with the job title containing Manager by increasing it by 10%
select * from salaries; 
update salaries set BasePay = BasePay *1.1 where JobTitle like '%Manager%';
-- delete with no  overtimepay
select count(*) from salaries where OvertimePay = 0;
delete from salaries;
select * from salaries;

