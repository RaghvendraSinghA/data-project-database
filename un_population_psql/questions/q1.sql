-- Q1 -> India population over years.

SELECT country,year,population
 FROM un_population
  WHERE country = 'India'
  ORDER BY year;
