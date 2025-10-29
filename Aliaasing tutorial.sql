-- Limit & Aliasing --

SELECT *
FROM emoloyee_demographics
LIMIT 3 #top 3
;

SELECT *
FROM emoloyee_demographics
ORDER BY age DESC
LIMIT 3,1
;

-- Aliasing 

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;
