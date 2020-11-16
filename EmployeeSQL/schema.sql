DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments(
dept_no varchar(4) PRIMARY KEY,
dept_name varchar UNIQUE
);

CREATE TABLE titles(
title_id varchar(4) PRIMARY KEY,
title varchar UNIQUE
);

CREATE TABLE employees(
emp_no integer PRIMARY KEY,
emp_title_id varchar(4) NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
birth_date date,
first_name varchar,
last_name varchar,
sex char,
hire_date date
);

CREATE TABLE salaries(
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (emp_no),
salary INTEGER
);

CREATE TABLE dept_emp(
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no varchar(4) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_manager(
dept_no varchar(4) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (dept_no, emp_no)
);