--写于2019-2-19 
--第一次用到了IN这个语句，直接上网现查现用。
--要求：
/*
选出那些有超过98刀的交易的部门。有两个表格，一个是department一个是Sale。department表格只储存了部门的编号和名称。
要求不允许使用任何的JOIN
*/

SELECT d.id AS id ,d.name AS name
FROM departments d                                              --此处不允许使用JOIN，第一次还用错了。
WHERE d.id IN (SELECT department_id FROM sales WHERE price >98) 

--这里是第一次使用IN这个语句，第一次知道原来IN里面还可以嵌套一层SELECT语句。
