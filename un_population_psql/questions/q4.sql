-- Q4 -> Grouped Bar Chart - ASEAN population vs years

SELECT t.year,t.country,SUM(t.population) AS population FROM (
    SELECT *
    FROM un_population
    WHERE group_name = 'ASEAN' AND year BETWEEN 2004 AND 2014
  ) AS t
GROUP BY t.year,t.country
ORDER BY t.year ASC;
