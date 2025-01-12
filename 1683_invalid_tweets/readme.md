Table: Tweets<br>
<br>
+----------------+---------+<br>
| Column Name    | Type    |<br>
+----------------+---------+<br>
| tweet_id       | int     |<br>
| content        | varchar |<br>
+----------------+---------+<br>
tweet_id is the primary key (column with unique values) for this table.
content consists of characters on an American Keyboard, and no other special characters.
This table contains all the tweets in a social media app.
 
<br>
Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
<br>
Return the result table in any order.
<br>
The result format is in the following example.
<br>
 

Example 1:<br>
<br>
Input: <br>
Tweets table:<br>
+----------+-----------------------------------+<br>
| tweet_id | content                           |<br>
+----------+-----------------------------------+<br>
| 1        | Let us Code                       |<br>
| 2        | More than fifteen chars are here! |<br>
+----------+-----------------------------------+<br>
Output: <br>
+----------+<br>
| tweet_id |<br>
+----------+<br>
| 2        |<br>
+----------+<br>
Explanation: <br>
Tweet 1 has length = 11. It is a valid tweet.<br>
Tweet 2 has length = 33. It is an invalid tweet.<br>
