Table: Views<br>
<br>
+---------------+---------+<br>
| Column Name   | Type    |<br>
+---------------+---------+<br>
| article_id    | int     |<br>
| author_id     | int     |<br>
| viewer_id     | int     |<br>
| view_date     | date    |<br>
+---------------+---------+<br>
<br>
There is no primary key (column with unique values) for this table, the table may have duplicate rows.
Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
Note that equal author_id and viewer_id indicate the same person.
 <br>

Write a solution to find all the authors that viewed at least one of their own articles.
<br>
Return the result table sorted by id in ascending order.
<br>
The result format is in the following example.
<br>
 

Example 1:
<br>
Input:<br> 
Views table:<br>
+------------+-----------+-----------+------------+<br>
| article_id | author_id | viewer_id | view_date  |<br>
+------------+-----------+-----------+------------+<br>
| 1          | 3         | 5         | 2019-08-01 |<br>
| 1          | 3         | 6         | 2019-08-02 |<br>
| 2          | 7         | 7         | 2019-08-01 |<br>
| 2          | 7         | 6         | 2019-08-02 |<br>
| 4          | 7         | 1         | 2019-07-22 |<br>
| 3          | 4         | 4         | 2019-07-21 |<br>
| 3          | 4         | 4         | 2019-07-21 |<br>
+------------+-----------+-----------+------------+<br>
Output: <br>
+------+<br>
| id   |<br>
+------+<br>
| 4    |<br>
| 7    |<br>
+------+<br>
