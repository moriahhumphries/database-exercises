# 1
use employees;

# 2
SELECT *
FROM employees
where first_name IN ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;

# 3
SELECT *
FROM employees
where last_name like 'E%'
order by emp_no desc;

# 4
Select *
from employees
where hire_date between '1990-01-01' and '1999-12-31';

# 5
SELECT *
from employees
where birth_date like '%-12-25';

#6
SELECT *
from employees
where last_name like '%q%';

#1.1
SELECT *
FROM employees
where first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';
#2.1
SELECT *
FROM employees
where (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M';

#3.1
SELECT *
FROM employees
where last_name like 'E%'
   OR last_name like '%E'
order by emp_no;
#4.1
SELECT concat(first_name, ' ', last_name) as 'Full Name', gender, hire_date, emp_no, birth_date
FROM employees
where last_name like 'E%'
  AND last_name like '%E'
order by emp_no;

#5.1
SELECT concat(first_name, ' ', last_name, ' ', datediff(now(), hire_date)) as 'Full name and days since hired'
from employees
where birth_date like '%-12-25'
  AND hire_date between '1990-01-01' and '1999-12-31'
order by birth_date, hire_date desc;



#6.1

SELECT *
from employees
where last_name like '%q%'
  and last_name not like '%qu%';






