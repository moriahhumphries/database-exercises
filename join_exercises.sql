use employees;

SELECT

#2
       d.dept_name as 'Department Manager',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Name'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
        where dm.to_date > curdate()
        order by d.dept_name;

#3
SELECT

d.dept_name as 'Department Manager',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Name'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
        where dm.to_date > curdate() and e.gender = 'F'
        order by d.dept_name;

#4
select titles.title as Title, count(titles.emp_no) as Count
    from titles
    join  dept_emp de on titles.emp_no = de.emp_no
    join departments d on de.dept_no = d.dept_no
where titles.to_date > curdate()
and d.dept_name = 'Customer Service'
and de.to_date > curdate()
group by titles.title;

#5
SELECT
    d.dept_name as 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
    s.salary as Salary
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries as s
              ON e.emp_no = s.emp_no
WHERE dm.to_date > curdate() AND
        s.to_date > curdate()
ORDER BY d.dept_name;


