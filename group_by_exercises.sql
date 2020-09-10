USE employees;

-- In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT titles
FROM titles;

# -- Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
SELECT *
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

-- Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E';

-- Find the unique last names with a 'q' but not 'qu'. Your results should be:\\
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%Q'
  AND last_name NOT LIKE '%QU%';

-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT DISTINCT COUNT(last_name)
FROM employees
WHERE last_name LIKE '%Q'
  AND last_name NOT LIKE '%QU%';

-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
SELECT COUNT(gender),
gender FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
   GROUP BY gender;