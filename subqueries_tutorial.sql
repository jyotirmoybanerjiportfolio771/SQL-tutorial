-- Subqueries
-- Omly have one feild in subquery in operand


SELECT *
FROM employee_demographics
WHERE employee_id IN
(
SELECT employee_id
  FROM employee_salary
  WHERE dept_id=1)
;

-- Subquery in select are specially helpful when you dont want to use group by clause
-- if you want to put a label in the subquery do it outside the paranthesis
SELECT first_name,salary,(
SELECT AVG(salary) FROM employee_salary) As Average
FROM employee_salary;

-- Subquery in where clause
SELECT gender, AVG(age), MAX(age) as max, MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;


SELECT  AVG(max)
FROM
(SELECT gender, AVG(age), MAX(age) as max, MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender)AS AVG_table
;