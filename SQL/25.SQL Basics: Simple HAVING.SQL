/*For this challenge you need to create a simple HAVING statement, you want to count how many people have the 
same age and return the groups with 10 or more people who have that age.
*/

SELECT age,COUNT(*) as total_count
FROM people
GROUP BY age
HAVING COUNT(*) >= 10 

