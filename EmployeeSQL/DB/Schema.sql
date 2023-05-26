--Load CSVs
--departments
Create table departments 
	(
	dept_no VARCHAR primary key, 
	dept_name VARCHAR unique 
	);
Select * from departments

--titles
Create table titles 
	(
	title_id VARCHAR primary key, 
	title VARCHAR unique 
	);
Select * from titles

--employees
Create table employees 
	(
	emp_no INT primary key, 
	emp_title_id VARCHAR references titles(title_id),
	birth_date	DATE,
	first_name VARCHAR,	
	last_name VARCHAR,
	sex	CHAR (1),
	hire_date DATE
	);
Select * from employees

--dept_emp
Create table dept_emp 
	(
	emp_no INT references employees (emp_no), 
	dept_no VARCHAR references departments (dept_no),
	primary key (emp_no, dept_no)
	);
Select * from dept_emp 

--dept_manager
Create table dept_manager
	(
	dept_no VARCHAR references departments (dept_no),
	emp_no INT references employees (emp_no), 
	primary key (dept_no, emp_no)
	);
Select * from dept_manager 

--salaries
Create table salaries
	(
	emp_no INT references employees (emp_no),
	salary INT,
	primary key (emp_no)
	);
Select * from salaries

