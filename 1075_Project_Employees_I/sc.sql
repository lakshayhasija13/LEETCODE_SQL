SELECT p.project_id, ROUND(AVG(experience_years), 2) AS average_years
FROM Project AS p
INNER JOIN Employee AS e
USING (employee_id)
GROUP BY 1;
