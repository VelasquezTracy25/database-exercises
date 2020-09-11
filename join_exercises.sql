USE employees;

-- write a query that shows each department alONg with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.lASt_name) AS 'Full Name'
FROM departments AS d
    JOIN dept_manager dm ON d.dept_no = dm.dept_no
    JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

-- Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.lASt_name) AS 'Full Name'
FROM departments AS d
    JOIN dept_manager dm ON d.dept_no = dm.dept_no
    JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

-- Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'Title', COUNT(*) AS 'Count'
FROM titles AS t
    JOIN employees e
        ON t.emp_no = e.emp_no
    JOIN dept_emp de
        ON e.emp_no = de.emp_no
    JOIN departments d
        ON de.dept_no = d.dept_no
WHERE de.to_date LIKE '9999%' AND d.dept_name = 'Customer Service' AND t.to_date LIKE '9999%'
group by t.title
ORDER BY t.title;

-- Find the current salary of all current managers.
SELECT distinct dept_name AS 'Department Name', CONCAT(first_name,' ',lASt_name), salary
FROM departments
    JOIN dept_manager dm ON departments.dept_no = dm.dept_no
    JOIN employees e ON dm.emp_no = e.emp_no
    JOIN salaries s ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01' and dm.to_date = '9999-01-01'
ORDER BY dept_name


