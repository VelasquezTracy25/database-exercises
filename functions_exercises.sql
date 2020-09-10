USE employees;

-- Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
-- Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.

SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
    AND gender = 'M'
    ORDER BY last_name, first_name;

-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change! — 30,723 rows.
-- Now reverse the sort order for both queries.

SELECT *
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no DESC;

-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name) AS name
FROM employees
WHERE first_name LIKE 'E%E';


-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())

SELECT CONCAT(first_name, ' ', last_name) AS name, DATEDIFF(curdate(), hire_date) as days_employed
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
  ORDER BY birth_date ASC, hire_date DESC;
