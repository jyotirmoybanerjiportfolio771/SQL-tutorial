-- Joins
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- Always mention table names example employee_demographics.employee_id 
-- when you select specific columns mention the table name in front of the key value
-- if a value is not full in the original table it wont populate in the next one
SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	 ON dem.employee_id = sal.employee_id
;
   
-- Outer joins 

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	 ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	 ON dem.employee_id = sal.employee_id
;

-- self join
-- secret santa first employee last employee
SELECT emp1.employee_id AS emp_santa,emp2.first_name AS first_name_santa,emp1.first_name AS first_name_emp
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
  ON emp1.employee_id+1=emp2.employee_id
;

-- joining multiple tables

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	 ON dem.employee_id = sal.employee_id
 INNER JOIN parks_departments AS pd
     ON sal.dept_id =pd.department_id
;

SELECT*
FROM Parks_departments;



