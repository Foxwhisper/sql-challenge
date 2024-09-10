--create a table for the departments
CREATE TABLE departments(
	dept_no CHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

--create a table  for the titles
CREATE TABLE titles(
	title_id CHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR(30) 
);	

--create a table for the employees
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title CHAR(5),
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30),
	hire_date DATE,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

--create a table for the department employees
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no CHAR(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--create a table for the department managers
CREATE TABLE dept_manager(
	dept_no CHAR(4),
	emp_no INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no))
	
--create a table for salaries
CREATE TABLE salaries(
	emp_no INT,
	salary FLOAT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

--check the tables
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;