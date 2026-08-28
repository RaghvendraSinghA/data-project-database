

-- Q5 -> Number of matches played per year for all the years in IPL.




SELECT season,COUNT(*) FROM matches GROUP BY season ORDER BY season ASC;
