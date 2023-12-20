CREATE TABLE employees (
    emp_no PRIMARY KEY INTEGER,
    emp_title_id VARCHAR(5),
    birth_date date,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex VARCHAR(1),
    hire_date date);

CREATE TABLE departments (
    dept_no PRIMARY KEY VARCAHAR(4),
    dept_name VARCHAR(20));

CREATE TABLE dept_emp (
    emp_no INTEGER,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCAHAR(4),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCAHAR(4),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
    emp_no INTEGER,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    emp_no integer,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    salaries INTEGER
);

CREATE TABLE titles (
    title_id PRIMARY KEY VARCHAR(5),
    FOREIGN KEY (title_id) REFERENCES employees(emp_title_id)
    title VARCHAR(30)
);