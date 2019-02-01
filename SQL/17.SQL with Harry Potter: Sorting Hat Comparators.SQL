
/*
Slytherin are being quite strict this year and will only take students who are evil AND cunning.
Gryffindor will take students who are brave but only if their second quality is NOT evil.
Ravenclaw accepts students who are studious OR intelligent.
Hufflepuff will simply take those who have the quality hufflepuff.
*/

SELECT * 
FROM students
WHERE (quality1 = 'evil' AND quality2 = 'cunning')
OR (quality1 = 'brave'AND quality2 !='evil') --SQL里面表示不等于用<>或 !=
OR(quality1 = 'studious' OR quality2 = 'intelligent')
OR(quality1 = 'hufflepuff' OR quality2 ='hufflepuff')
