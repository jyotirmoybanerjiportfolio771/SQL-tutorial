-- String Functions
-- LENGTH
SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

-- UPPER and LOWER
SELECT UPPER('sky');
SELECT LOWER('sky');

-- TRIM
SELECT TRIM('   sky.  ');
SELECT LTRIM('.   sky.  ');
SELECT RTRIM(' sky.  ');

-- SUBSTRING
SELECT first_name, 
LEFT(first_name,4),
RIGHT(first_name,4),
SUBSTRING(first_name,3,2),birth_date,SUBSTRING(birth_date,6,2)
FROM employee_demographics
;

-- REPLACE
SELECT first_name,
REPLACE(first_name,'a','z')
FROM employee_demographics
;

-- LOCATE
SELECT first_name,
LOCATE('AN',first_name)
FROM employee_demographics
;

-- CONCAT
SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) as full_name
FROM employee_demographics
;

