WITH contest_counts AS (
  SELECT contest_id, COUNT(DISTINCT user_id) AS cnt
  FROM Register
  GROUP BY contest_id
)
SELECT c.contest_id, 
       ROUND((cnt * 100.0 / (SELECT COUNT(*) FROM Users)), 2) AS percentage
FROM contest_counts c
ORDER BY percentage DESC, c.contest_id ASC;
