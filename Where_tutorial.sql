-- WHERE CLAUSE --
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM employee_demographics
WHERE gender != 'Female'
;
    -- DATE FORMAT --
SELECT *
FROM employee_demographics
WHERE birth_date > '1905-01-01'
;

-- LOGICAL OPERATORs -- AND OR NOT --
SELECT *
FROM employee_demographics
WHERE birth_date > '1905-01-01' and gender ='male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1905-01-01' or not gender ='male'
;


SELECT *
FROM employee_demographics
WHERE birth_date > '1905-01-01' or not gender ='male'
;

-- PEDMAS IS ALSO FOLLOWED ON LOGICAL OPERATORS--
SELECT *
FROM employee_demographics
WHERE (birth_date > '1905-01-01' or not gender ='male') OR age>55
;

-- LIKE Statement --
-- % means anything and _ means exact
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer__'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer_%'
;
-- You can use this with dates and integers as well --
SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;

