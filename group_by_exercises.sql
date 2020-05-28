use employees;
use titles;

describe employees;

describe titles;

#2
select distinct title
from titles;

#3
SELECT distinct last_name
FROM employees
where last_name like 'E%'
  AND last_name like '%E'
group by last_name;

#4
select distinct first_name, last_name
from employees
where last_name like 'E%'
  AND last_name like '%E';

#5
SELECT distinct last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%';


