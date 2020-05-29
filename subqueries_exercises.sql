use employees;

SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    where emp_no = 101010
);