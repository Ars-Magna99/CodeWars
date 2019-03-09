/*
8 kyu
return the same table where all letters are lowercase in the race column.
*/

SELECT id,name,birthday,LOWER(race) AS race
FROM demographics;
