/*
又在bug上卡了挺久的一道题，最后加上了group by 之后就正确了，不知道为什么。
*/

SELECT a.id,a.name,COUNT(*) as toy_count
FROM people a
INNER JOIN toys b 
on a.id = b.people_id
GROUP BY a.id;
