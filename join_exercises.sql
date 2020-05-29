use employees;

SELECT

       d.dept_name as 'Department Manager',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Name'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
        where dm.to_date > curdate()
        order by d.dept_name;


