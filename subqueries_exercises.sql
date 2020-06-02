use employees;

#1
SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    where emp_no = 101010
);

#2
SELECT distinct title
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
    );


#3
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
) AND gender = 'F';

select *
from employees
order by first_name
limit 10 offset 5;
