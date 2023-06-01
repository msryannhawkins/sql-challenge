--List the employee number, last name, first name, sex, and salary of each employee.
SELECT i.emp_no, i.last_name, i.first_name, i.sex, f.salary
FROM employees i
JOIN salaries f
ON (i.emp_no = f.emp_no)

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE extract (year FROM hire_date) = 1986

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT i.dept_no, f.dept_name, i.emp_no, n.last_name, n.first_name
FROM dept_manager i
JOIN departments f
ON (i.dept_no = f.dept_no)
JOIN employees n 
ON (i.emp_no = n.emp_no)


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT i.dept_no, i.emp_no, n.last_name, n.first_name, f.dept_name
FROM dept_emp i
JOIN departments f
ON (i.dept_no = f.dept_no)
JOIN employees n 
ON (i.emp_no = n.emp_no)

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
Select n.emp_no, n.last_name, n.first_name, x.dept_name
From employees n 
Join dept_emp d
on (n.emp_no = d.emp_no)
Join departments x
on (x.dept_no = d.dept_no)
Where dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select n.emp_no, n.last_name, n.first_name, x.dept_name
From employees n 
Join dept_emp d
on (n.emp_no = d.emp_no)
Join departments x
on (x.dept_no = d.dept_no)
Where dept_name = 'Sales' or dept_name = 'Development';
--Where dept_name IN ('Sales', 'Development');


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*)  AS last_name_frequency
FROM employees
GROUP BY last_name
Order by last_name_frequency desc;