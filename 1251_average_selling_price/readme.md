Table: Prices<br>
<br>
+---------------+---------+<br>
| Column Name   | Type    |<br>
+---------------+---------+<br>
| product_id    | int     |<br>
| start_date    | date    |<br>
| end_date      | date    |<br>
| price         | int     |<br>
+---------------+---------+<br>
(product_id, start_date, end_date) is the primary key (combination of columns with unique values) for this table.<br>
Each row of this table indicates the price of the product_id in the period from start_date to end_date.<br>
For each product_id there will be no two overlapping periods. That means there will be no two intersecting periods for the same product_id.<br>
 

Table: UnitsSold<br>
<br>
+---------------+---------+<br>
| Column Name   | Type    |<br>
+---------------+---------+<br>
| product_id    | int     |<br>
| purchase_date | date    |<br>
| units         | int     |<br>
+---------------+---------+<br>
This table may contain duplicate rows.<br>
Each row of this table indicates the date, units, and product_id of each product sold. <br>
 
<br>
Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places. If a product does not have any sold units, its average selling price is assumed to be 0.
<br>
Return the result table in any order.
<br>
The result format is in the following example.<br>

 <br>
<br>
Example 1:<br>
<br>
Input: <br>
Prices table:<br>
+------------+------------+------------+--------+<br>
| product_id | start_date | end_date   | price  |<br>
+------------+------------+------------+--------+<br>
| 1          | 2019-02-17 | 2019-02-28 | 5      |<br>
| 1          | 2019-03-01 | 2019-03-22 | 20     |<br>
| 2          | 2019-02-01 | 2019-02-20 | 15     |<br>
| 2          | 2019-02-21 | 2019-03-31 | 30     |<br>
+------------+------------+------------+--------+<br>
UnitsSold table:<br>
+------------+---------------+-------+<br>
| product_id | purchase_date | units |<br>
+------------+---------------+-------+<br>
| 1          | 2019-02-25    | 100   |<br>
| 1          | 2019-03-01    | 15    |<br>
| 2          | 2019-02-10    | 200   |<br>
| 2          | 2019-03-22    | 30    |<br>
+------------+---------------+-------+<br>
Output: <br>
+------------+---------------+<br>
| product_id | average_price |<br>
+------------+---------------+<br>
| 1          | 6.96          |<br>
| 2          | 16.96         |<br>
+------------+---------------+<br>
Explanation: <br>
Average selling price = Total Price of Product / Number of products sold.<br>
Average selling price for product 1 = ((100 * 5) + (15 * 20)) / 115 = 6.96<br>
Average selling price for product 2 = ((200 * 15) + (30 * 30)) / 230 = 16.96<br>
