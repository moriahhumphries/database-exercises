use employees;
use titles;

describe employees;

describe titles;

#2
select distinct title, count(title)
from titles
group by title;

#3
SELECT distinct last_name, count(last_name)
FROM employees
where last_name like 'E%'
  AND last_name like '%E'
group by last_name;

#4
select distinct first_name, last_name
from employees
where last_name like 'E%'
  AND last_name like '%E'
group by  first_name, last_name
order by last_name;

#5
SELECT distinct last_name, count(last_name)
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name;

#6 - Refactoring

#7

SELECT count(*), gender
FROM employees
where first_name IN ('Irena', 'Vidya', 'Maya')
group by gender;

