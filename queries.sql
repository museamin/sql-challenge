SELECT * FROM employees

SELECT  first_name, last_name, hire_date 
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


SELECT D.dept_no, D.dept_name, DM.emp_no, E.last_name, E.first_name
FROM departments as D
left join dept_manager as DM
on D.dept_no = DM.dept_no
left join employees as E
on DM.emp_no = E.emp_no;


SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM employees as E
left join dept_emp as DE
on E.emp_no = DE.emp_no
left join departments as D
on DE.dept_no = D.dept_no;


SELECT first_name, last_name,  sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM employees as E
left join dept_emp as DE
on E.emp_no = DE.emp_no
left join departments as D
on DE.dept_no = D.dept_no
WHERE D.dept_name = 'Sales';


SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM employees as E
left join dept_emp as DE
on E.emp_no = DE.emp_no
left join departments as D
on DE.dept_no = D.dept_no
WHERE D.dept_name = 'Sales' OR D.dept_name = 'Development';


SELECT last_name, count(last_name) as Frequency
FROM employees
Group By last_name 
ORDER BY count(last_name) DESC;