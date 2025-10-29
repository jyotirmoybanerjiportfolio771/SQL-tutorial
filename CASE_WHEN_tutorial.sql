-- Case Statments

SELECT first_name,
last_name,
age,
CASE
    WHEN age<= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'old'
    WHEN age>= 50 THEN "Oldd"
END AS Age_category
FROM employee_demographics;

-- Always make a new case when you want to choose from speperate salaries
SELECT sal.first_name,sal.last_name,
CASE
    WHEN sal.salary > 50000 THEN '5%'
    WHEN sal.salary <= 75000 THEN '2%'
END AS Bonus_category,
CASE
 WHEN pd.department_name='finance' THEN '10%'
END AS DEPT_BONUS
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON sal.employee_id=dem.employee_id
JOIN Parks_departments AS pd
ON  sal.dept_id=pd.department_id
;

SELECT * FROM employee_salary;


