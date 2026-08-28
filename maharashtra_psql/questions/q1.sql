-- Q1 -> Histogram of Authorized Cap
--Plot a histogram on the "Authorized Capital" (column: AUTHORIZED_CAP) with the following intervals

-- <= 1L
-- 1L to 10L
-- 10L to 1Cr
-- 1Cr to 10Cr
-- > 10Cr

SELECT t.ranges,COUNT(*) FROM
(SELECT
    CASE
        WHEN authorizedcapital BETWEEN 0 AND 100000 THEN '<= 1L'
        WHEN authorizedcapital BETWEEN 100000 AND 1000000 THEN '1L to 10L'
        WHEN authorizedcapital BETWEEN 1000000 AND 10000000 THEN '10L to 1Cr'
        WHEN authorizedcapital BETWEEN 10000000 AND 100000000 THEN '1Cr to 10Cr'
        WHEN authorizedcapital > 100000000 THEN '> 10Cr'

        ELSE 'NULL'
        END AS ranges
FROM mh_table) AS t
WHERE t.ranges != 'NULL'
GROUP BY t.ranges ORDER BY
    CASE t.ranges
        WHEN '<= 1L' THEN 1
        WHEN '1L to 10L' THEN 2
        WHEN '10L to 1Cr' THEN 3
        WHEN '1Cr to 10Cr' THEN 4
        WHEN '> 10Cr' THEN 5
        ELSE 6
    END;