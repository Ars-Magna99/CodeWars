/*
Return a results table - sailor_senshi, real_name, cat and school - of all characters, 
containing each character's high school, their civilian name and the cat who introduced 
them to their magical crime-fighting destiny.

Keep in mind some senshi were not initiated by a cat guardian and one is not in high school. 
The field can be left blank if this is the case.
*/


SELECT s.senshi_name AS sailor_senshi,s.real_name_jpn AS real_name,c.name AS cat,p.school AS school
FROM sailorsenshi s
LEFT JOIN cats   c
ON s.cat_id = c.id
LEFT JOIN schools p
ON s.school_id = p.id


--其实full join也可以得到同样的结果。要好好研究一下SQL里面的各种JOIN的区别？
