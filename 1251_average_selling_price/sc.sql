SELECT p.product_id, CASE WHEN ROUND(SUM(u.units), 2) IS NULL THEN 0
ELSE ROUND(SUM(units*price)/SUM(units * 1.0),2) END AS average_price
FROM Prices p LEFT JOIN UnitsSold u
ON p.product_id = u.product_id AND
u.purchase_date BETWEEN start_date AND end_date
group by p.product_id
