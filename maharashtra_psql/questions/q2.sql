-- Q2 -> From the column, DATE_OF_REGISTRATION parse out the registration year. Using this data,
--            plot a bar plot of the number of company registrations, vs. year.



SELECT EXTRACT(year FROM companyregistrationdate_date) AS year,
COUNT(*) FROM mh_table
 WHERE
  EXTRACT(year FROM companyregistrationdate_date) != 5600 AND
  EXTRACT(year FROM companyregistrationdate_date) != 1111
 GROUP BY year
ORDER BY year;
