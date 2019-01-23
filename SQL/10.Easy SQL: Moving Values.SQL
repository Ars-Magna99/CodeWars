

--自己写的码，CAST这个方法是自己上网查的。
SELECT  LENGTH(m.name) AS id, 
        LENGTH(CAST(m.legs AS varchar)) AS name,
        LENGTH(CAST(m.arms AS varchar)) AS legs,
        LENGTH(m.characteristics) AS arms,
        LENGTH(CAST(m.id AS varchar)) AS characteristics
FROM monsters m;


--点赞第一的码
SELECT 
  length(name) AS id,
  length(legs::text) AS name,
  length(arms::text) AS legs,
  length(characteristics) AS arms,
  length(id::text) AS characteristics
FROM
  monsters
  
  
  --SQL里面一般不称作string，而是叫做varchar。
