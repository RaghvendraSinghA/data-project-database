

-- Q6 -> Number of matches won per team per year in IPL.

-- Ans-> team -> season -> win_count

SELECT season,winner,COUNT(*) FROM matches GROUP BY season,winner ORDER BY season ASC;
