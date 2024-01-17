-- Query 1
SELECT
    e.emp_no AS Employee_Number,
    e.last_name AS Last_Name,
    e.first_name AS First_Name,
    e.sex AS Gender,
    s.salary AS Salary
FROM employees AS e
Inner join salaries AS s
ON e.emp_no = s.emp_no
    
-- Query 2
SELECT
    first_name AS First_Name,
    last_name AS Last_Name,
    hire_date AS Hire_Date
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31'
ORDER BY hire_date ASC

-- Query 3
SELECT
    m.dept_no as Manager_Department_Number,
    d.dept_name as Department_Name,
    m.emp_no as Manager_Employee_Number,
    e.last_name as Manager_Last_Name,
    e.first_name as Manager_First_Name
FROM dept_manager as m
Inner Join departments as d
ON m.dept_no = d.dept_no
Inner Join employees as e
ON m.emp_no = e.emp_no
ORDER BY m.emp_no

-- Query 4
SELECT
    de.emp_no as Employee_Number,
    e.last_name as Last_Name,
    e.first_name as First_Name,
    d.dept_name as Department_Name
FROM dept_emp as de
Left JOIN employees as e
ON e.emp_no = de.emp_no
Left JOIN departments as d
ON de.dept_no = d.dept_no

-- Query 5
SELECT
    first_name as First_Name,
    last_name as Last_Name,
    sex as Gender
FROM employees
WHERE first_name = 'Hercules'
    and last_name like 'B%'

-- Query 6
SELECT
    b.emp_no AS Employee_Number,
    e.last_name AS Last_Name,
    e.first_name AS First_Name,
    d.dept_name AS Department_Name
FROM dept_emp as b
Inner Join employees as e
ON b.emp_no = e.emp_no
Inner Join departments as d
ON d.dept_no = b.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY b.emp_no

-- Query 7
SELECT
    b.emp_no AS Employee_Number,
    e.last_name AS Last_Name,
    e.first_name AS First_Name,
    d.dept_name AS Department_Name
FROM dept_emp as b
Inner Join employees as e
ON b.emp_no = e.emp_no
Inner Join departments as d
ON d.dept_no = b.dept_no
WHERE d.dept_name = 'Sales'
    or d.dept_name = 'Development'
ORDER BY b.emp_no

-- Query 8
Select
    last_name AS Last_Name,
    COUNT(last_name) AS Count_Of_Last_Name
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) Desc