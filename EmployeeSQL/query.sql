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


--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT
	d.dept_no as "Dept #",
	d.dept_name as "Dept Name",
	e.emp_no as "Manger Emp #",
	e.last_name as "Manager Last Name",
	e.first_name as "Manager First Name"
from dept_manager dm
Left join departments d on
	d.dept_no = dm.dept_no
LEFT JOIN employees e on 
	e.emp_no = dm.emp_no
ORDER BY d.dept_no, e.emp_no;


--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT
	e.emp_no as "Emp #",
	e.last_name as "Emp Last Name",
	e.first_name as "Emp First Name",
	d.dept_name as "Dept Name"
from dept_emp de
Left join departments d on
	d.dept_no = de.dept_no
LEFT JOIN employees e on 
	e.emp_no = de.emp_no
ORDER BY e.emp_no, d.dept_no;

--5. List first name, last name, and sex for employees 
--whose first name is "Hercules" and last names begin with "B."
SELECT
	first_name as "First Name",
	last_name as "Last Name",
	sex as "Sex"
from employees
where 	
	first_name = 'Hercules' and
	last_name like 'B%'
;


--6. List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
SELECT
	e.emp_no as "Emp #",
	e.last_name as "Emp Last Name",
	e.first_name as "Emp First Name",
	d.dept_name as "Dept Name"
from employees e
LEFT JOIN dept_emp de on
	de.emp_no = e.emp_no
Left join departments d on
	d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
;


--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT
	e.emp_no as "Emp #",
	e.last_name as "Emp Last Name",
	e.first_name as "Emp First Name",
	d.dept_name as "Dept Name"
from employees e
LEFT JOIN dept_emp de on
	de.emp_no = e.emp_no
Left join departments d on
	d.dept_no = de.dept_no
WHERE d.dept_name in ('Sales','Development')
ORDER BY e.emp_no
;

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


