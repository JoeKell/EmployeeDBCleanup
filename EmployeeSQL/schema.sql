CREATE TABLE departments(
dept_no varchar(4) PRIMARY KEY,
dept_name UNIQUE varchar
);

CREATE TABLE titles(
title_id varchar(4) PRIMARY KEY,
title UNIQUE varchar
);

CREATE TABLE employees(
emp_no integer PRIMARY KEY,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
birth_date date,
first_name varchar,
last_name varchar,
sex char,
hire_date date
);

CREATE TABLE salaries(
FOREIGN KEY (emp_no) REFERENCES employees(emp_no) PRIMARY KEY,
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