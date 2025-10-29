-- Group by

SELECT *
FROM employee_demographics;

-- the valuse of select and group by need to be same unless there is an aggregate function running---
SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation,salary
FROM employee_salary
GROUP BY occupation,salary
;

-- ORDER BY --
-- order of the columns is very important
SELECT *
FROM employee_demographics
ORDER BY first_name DESC,age
;


