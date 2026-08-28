-- Q4 -> Plot a Grouped Bar Plot by aggregating registration counts over ...

-- Year of registration
-- Principal Business Activity
-- Plot only top 5 Prinicipal Business Activity for last 10 years



SELECT EXTRACT(year FROM companyregistrationdate_date) AS year,
 (string_to_array(companyindustrialclassification,' '))[1] AS business_activity,
 COUNT(*)
 FROM mh_table WHERE
 EXTRACT(year FROM companyregistrationdate_date) BETWEEN 2016 AND 2026
  GROUP BY year,business_activity
  ORDER BY year ASC;
