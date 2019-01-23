/*
Given the following table 'decimals':

decimals table schema

id
number1
number2
Return a table with one column (result) which is the output of number1 raised to the power of number2.
*/

SELECT POWER(decimals.number1,decimals.number2) AS result 
FROM decimals;

/*
1. 变量名多打了_导致找不到
2. POWER() 
*/
