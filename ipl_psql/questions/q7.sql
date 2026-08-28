
-- Q7 -> Extra runs conceded per team in the year 2016.




SELECT merged_t.season,merged_t.bowling_team,SUM(merged_t.extra_runs) FROM
(SELECT match_id,id,season,bowling_team,extra_runs FROM
 deliveries AS d
LEFT JOIN
matches as m ON d.match_id = m.id WHERE season = 2016)
 AS merged_t
GROUP BY merged_t.season,merged_t.bowling_team ORDER BY merged_t.season ASC;
