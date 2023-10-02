USE HR_department;

/*  1. The HR department wants a query to display the last name, job identifier (JOB_ID), hire date and employee number for each employee, with the employee number as the first value. Specify the alias STARTDATE for the HIRE_DATE column.  */
SELECT employee_id, last_name, job_id, hire_date AS StartDate
FROM employees;

/*  2. HR requires a query to display all unique job identifiers (JOB_ID) from the EMPLOYEES table. Duplicates are to be avoided.  */
SELECT COUNT(DISTINCT job_id) AS TotalJobs
FROM jobs;

/*  3. The HR department wants more meaningful column headings for the reports related to employees. Use the statement from output 3.1 and give the columns the headings Emp #, Employee, Job and Hire Date. Run the query again.  */
SELECT employee_id AS 'EMP#',
       last_name   AS 'Employee',
       job_id      AS 'JOB',
       hire_date   AS 'Hire Date'
FROM employees;


/*  4. For budget purposes, HR needs a report that shows the last name and salary for employees earning more than $12,000. Run the query. */
SELECT last_name, salary
FROM employees
WHERE salary > 12000;

/*  5. Create a report to show the last name and department number for the employee with employee number 176.  */
SELECT last_name, department_id
FROM employees
WHERE employee_id = 176;

/*  6. Create a report to show the last name, job identifier (JOB_ID) and hire date for all employees. Sort the query in ascending order by hire date.  */
SELECT last_name, job_id, hire_date
FROM employees
ORDER BY hire_date;

/*  7. View last names and department numbers of all employees in Department 20, sorted alphabetically by last name in ascending order.  */
SELECT last_name, department_id
FROM employees
WHERE department_id = 20
ORDER BY last_name;

/*  8. Create a query that displays last names, salaries and commissions of all employees whose commission is 20%. Give the columns the headings Employee, Monthly Salary and Commission. */
SELECT last_name      AS 'Employee',
       salary         AS 'Monthly Salary',
       commission_pct AS 'Commission'
FROM employees
WHERE commission_pct = .20