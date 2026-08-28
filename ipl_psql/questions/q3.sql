
-- Q3 -> Number of umpires by in IPL by country;


SELECT country,COUNT(*) AS umpire_count FROM umpires GROUP BY country;