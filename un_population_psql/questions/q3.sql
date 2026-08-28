-- Q3 -> Over the years, TOTAL population of SAARC countries

SELECT t.year,SUM(t.population) AS saarc_countries_population FROM (
    SELECT *
    FROM un_population
    WHERE group_name = 'SAARC'
  ) AS t
GROUP BY t.year ORDER BY t.year ASC;