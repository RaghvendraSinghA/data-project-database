-- Q2 -> For the year 2014. Bar Chart of population of ASEAN countries.

SELECT t.country,SUM(population) AS population FROM (
    SELECT *
    FROM un_population
    WHERE group_name = 'ASEAN'
     AND year = 2014
  ) AS t
GROUP BY t.country;

