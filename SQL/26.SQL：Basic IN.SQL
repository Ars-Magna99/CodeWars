/*
Description: 
For this challenge you need to create a SELECT statement, 
this SELECT statement will use an IN to check whether 
a department has had a sale with a price over 98.00 dollars.
*/

SELECT d.id as id,d.name as name
FROM departments as d
WHERE d.id IN (
SELECT s.department_id
FROM sales as s
WHERE s.price > 98
);
