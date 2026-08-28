
-- Q2 -> Top batsman for Royal Challengers Bangalore


SELECT rcb_batsmans.batsman,SUM( rcb_batsmans.batsman_runs) AS score FROM
(SELECT * FROM deliveries
 WHERE batting_team = 'Royal Challengers Bangalore')
 AS rcb_batsmans
 GROUP BY rcb_batsmans.batsman ORDER BY score DESC LIMIT 10;

