# Write your MySQL query statement b
WITH Firstime AS (
    SELECT player_id , MIN(event_date) AS first FROM Activity
    GROUP BY player_id

)
SELECT ROUND(COUNT(a.player_id)/(SELECT COUNT(*) FROM Firstime ),2) AS fraction FROM Firstime f
LEFT JOIN Activity a ON f.player_id = a.player_id
AND a.event_date = DATE_ADD(f.first, INTERVAL 1 DAY)
