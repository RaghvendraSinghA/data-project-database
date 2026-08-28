-- Q8 -> Top 10 economical bowlers in the year 2015.




SELECT bowler,SUM(t.total_runs) AS runs ,COUNT(*) AS balls,
TRUNC(SUM(t.total_runs) / (COUNT(*)/6.0),2) AS economy FROM(
SELECT * FROM
 deliveries AS d
LEFT JOIN
matches as m ON
d.match_id = m.id
WHERE season = 2015)
AS t
GROUP BY t.bowler ORDER BY economy ASC LIMIT 10;

