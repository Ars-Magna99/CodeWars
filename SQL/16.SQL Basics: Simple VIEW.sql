-目前做到的第一道五段的题目，算是一个试水。真的是难，看了别人写的代码也还是云里雾里。



--利用一个with clause来在view内先选出销售额超过10000的department，储存在mbyb里面
CREATE VIEW members_approved_for_voucher AS with mbyd AS
  (SELECT s.department_id, SUM(p.price) FROM sales s
  INNER JOIN products p
  ON s.product_id = p.id
  GROUP BY s.department_id
  HAVING SUM(p.price) > 10000)
--这一段实际上才是这个view的主体内容，但是会调用到mbyb中的department_id
SELECT s.member_id AS id, m.name, m.email, SUM(p.price) AS total_spending 
FROM sales s
LEFT JOIN members m ON s.member_id = m.id
LEFT JOIN products p ON p.id = s.product_id
WHERE s.department_id IN (SELECT department_id FROM mbyd) --只选择那些销售额超过10000的部门下的交易
GROUP BY (s.member_id, m.name, m.email)
HAVING SUM(p.price) > 1000
ORDER BY s.member_id ASC;

SELECT id, name, email, total_spending FROM members_approved_for_voucher
