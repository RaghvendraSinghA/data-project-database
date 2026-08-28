
-- Q1 -> Total runs scored by each teams over the history of IPL

SELECT batting_team,SUM(total_runs) AS total_runs FROM deliveries GROUP BY batting_team;