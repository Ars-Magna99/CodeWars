/*
1.Return name, won, and lost columns displaying the name, total number of wins and total number of losses. Group by the fighter's name.

2.Do not count any wins or losses where the winning move was Hadoken, Shouoken or Kikoken.

3.Order from most-wins to least

4.Return the top 6. Don't worry about ties.

*/

--写码包括后来的debug过程中一堆低级错误，做事不细致，太急躁。

SELECT a.name,sum(a.won) AS won,sum(a.lost) AS lost
FROM fighters a
WHERE move_id NOT IN (
  SELECT id
  FROM winning_moves
  WHERE move = 'Hadoken' OR move = 'Shouoken' OR move = 'Kikoken'
)
GROUP BY a.name
ORDER BY won DESC
LIMIT 6;

/*
1. won 和 lost 都是表示单场比赛胜负的数值，为1，0.而题目中要求是求每个选手一年内所有比赛的胜负总和。
一开始直接要求输出won 和 lost， 直接导致系统报错，无法运行。

2. 为了防止电脑混淆原表格中的won 和输出表格中的won,这里就要用到在fighters后面加上a,来让电脑明白。
*/
