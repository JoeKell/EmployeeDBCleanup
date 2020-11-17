SELECT column_name
  FROM information_schema.columns
 WHERE table_name   = 'film'
 order by column_name
     ;
--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT
	e.emp_no as "Employee #",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	e.sex as Sex,
	s.salary as Salary
from employees e
LEFT JOIN salaries s on
e.emp_no = s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT
	e.emp_no as "Employee #",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	e.hire_date as "Hire Date"
from employees e
where
EXTRACT(ISOYEAR FROM e.hire_date) = 1986
;


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


--4. List the department of each employee with the following information: employee number, last name, first name, and department name.


--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


