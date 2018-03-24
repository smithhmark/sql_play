
/*
The query here is based on this query from
  https://rickosborne.org/blog/2008/01/sql-getting-top-n-rows-for-a-grouped-query/

SELECT c.*, d.ranknum
FROM girl AS c
  INNER JOIN (
    SELECT a.id, COUNT(*) AS ranknum
    FROM girl AS a
      INNER JOIN girl AS b ON (a.hair = b.hair) AND (a.score <= b.score)
    GROUP BY a.id
    HAVING COUNT(*) <= 3
  ) AS d ON (c.id = d.id)
ORDER BY c.hair, d.ranknum
*/

select a.product, a.state, a.device, count(*) as ranknum
from (select state, product, device, count(*) as cnt
        from device_usage
        group by state, product, device) as a
inner join (select state, product, device, count(*) as cnt
        from device_usage
        group by state, product, device) as b
on (a.state = b.state)
        and (a.product = b.product)
        /*and (a.device <> b.device)*/
        and (a.cnt <= b.cnt)
group by a.product, a.state, a.device, a.cnt
having count(*) <= 2
order by a.product, a.state, ranknum ;
