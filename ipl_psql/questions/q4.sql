
-- Q4 ->Plot a stacked bar chart of ...
--        number of games played
--        by team
--      by season

-- Ans Logic -: team --> season --> number of games.


--SELECT team1,season,COUNT(*) FROM matches GROUP BY team1,season ORDER BY season ASC;


SELECT merged_t.team,merged_t.season,COUNT(*) FROM
(SELECT team1 as team ,season FROM matches
UNION ALL
SELECT team2 as team,season FROM matches) AS merged_t
GROUP BY merged_t.team,merged_t.season
ORDER BY merged_t.season
ASC;

