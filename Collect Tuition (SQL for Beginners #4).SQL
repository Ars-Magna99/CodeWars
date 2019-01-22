SELECT *
FROM students
WHERE tuition_received = False;

--或者可以用WHERE NOT
SELECT *
FROM students
WHERE NOT tuition_received;
