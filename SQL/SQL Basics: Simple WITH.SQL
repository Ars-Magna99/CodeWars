/*
For this challenge you need to create a SELECT statement, this SELECT statement will use an IN to check whether a department has had a sale with a price over 90.00 dollars BUT the sql MUST use the WITH statement which will be used to select all columns from sales where the price is greater than 90.00, you must call this sub-query special_sales.

departments table schema
id
name
sales table schema
id
department_id (department foreign key)
name
price
card_name
card_number
transaction_date
resultant table schema
id
name
*/



WITH special_sales AS (
  SELECT *
  FROM sales
  WHERE price > 90.00

)

SELECT *
FROM departments
WHERE id IN(
SELECT department_id 
FROM sales 
WHERE (price) > 90.00); 


--用到了WITH 这个命令，还有WHERE IN这个方法。


/*
别的人写的回答
*/
WITH special_sales AS
  (select * from sales where price > 90)
  
  select id, name from departments
  
WHERE id IN (SELECT department_id FROM special_sales)


--注意点：
/*
WITH clause allows you to give a sub-query block a name (a process also called sub-query refactoring), 
which can be referenced in several places within the main SQL query.

WHERE IN : 

*/
