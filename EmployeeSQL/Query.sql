--list the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY emp_no ASC;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986'
ORDER BY hire_date ASC;

--List the managers department number, department name, the manager's employee number, last name, first name.
SELECT m.dept_no, d.dept_name, m.emp_no,e.last_name, e.first_name
FROM dept_manager m
JOIN employees e 
ON m.emp_no = e.emp_no
JOIN departments d 
ON m.dept_no = d.dept_no;

--List the department of each employee with employee number, last_name, first_name and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN  dept_emp  
ON e.emp_no = dept_emp.emp_no
JOIN departments d
ON dept_emp.dept_no = d.dept_no;

--List first name, last name and sex for employees whose first name is 'Hercules' and last names begin with 'B'
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules' AND last_name iLIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN  dept_emp  
ON e.emp_no = dept_emp.emp_no
JOIN departments d
ON dept_emp.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN  dept_emp  
ON e.emp_no = dept_emp.emp_no
JOIN departments d
ON dept_emp.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales','Development');

--List the frequency count of employee's last name in desc order
SELECT last_name, COUNT(last_name) AS "Total"
FROM employees
GROUP BY last_name
ORDER BY "Total" DESC;
