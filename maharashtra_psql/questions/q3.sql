--Q3 ->
-- Only consider registrations for the year 2015.
-- Find out the district of registration by the zip code. The zip code can be found at the end of the address column.
-- Count the registration by the district.
-- Plot a "Bar plot" of "Number of Registration" vs. district.
-- If the plot is unbalanced consider plotting only the top districts.



SELECT district,COUNT(*) AS counts FROM
(SELECT * FROM pincodes AS p JOIN
(SELECT substring(registered_office_address FROM '[0-9]{6}') AS pincode
  FROM mh_table WHERE
    EXTRACT(year FROM companyregistrationdate_date) = 2015)
     AS t
ON p.pincode = t.pincode::INTEGER) AS t2
GROUP BY district ORDER BY counts DESC
;

