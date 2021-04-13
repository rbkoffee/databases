-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 

-- Question 1: What is the average salary for the company?
-- Table: Salaries
SELECT AVG(salary) FROM salaries;
-- 63810.744836143706

-- Question 2: What year was the youngest person born in the company?
-- Table: employees
SELECT MAX(birth_date) FROM employees;
-- 1965


-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 

-- Question 1: How many towns are there in france?
-- Table: Towns
SELECT COUNT(code) FROM towns;
-- 36684

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage
SELECT COUNT(isofficial) from countrylanguage;
--984

-- Question 2: What is the average life expectancy in the world?
-- Table: country
SELECT AVG(lifeexpectancy) from country;
--66.48603611164265

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city
SELECT AVG(population) from city WHERE countrycode = 'NLD';
-- 185001.75