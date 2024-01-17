CREATE TABLE dept_manager (
    dept_no varchar(10),
    emp_no int Primary Key
);

CREATE TABLE departments (
    dept_no varchar(10) Primary Key,
    dept_name varchar(20)
);

CREATE TABLE dept_emp (
    emp_no int,
    dept_no varchar(10),
    eid varchar (15) PRIMARY KEY,
    FOREIGN KEY (emp_no)
        REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no)
        REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no)
        REFERENCES dept_manager(emp_no)
);

CREATE TABLE titles (
    title_id varchar(10) Primary Key,
    title varchar(20)
);

CREATE TABLE salaries (
    emp_no int Primary Key,
    salary int
);

CREATE TABLE employees (
    emp_no int Primary Key,
    emp_title_id varchar(10),
    birth_date date,
    first_name varchar(20),
    last_name varchar(20),
    sex varchar(1),
    hire_date date,
      FOREIGN KEY(emp_no)
	    REFERENCES salaries(emp_no),
      FOREIGN KEY(emp_title_id)
	    REFERENCES titles(title_id)
);