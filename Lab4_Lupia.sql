/* Question 1 */

SELECT city
FROM Agents
WHERE aid in (
	SELECT aid
	FROM Orders
	WHERE cid = 'c006'
	);

/* Question 2 */

SELECT distinct pid
FROM Orders
WHERE aid in (
		SELECT aid
		FROM Orders
		WHERE cid in 
		(
			SELECT cid
			FROM Customers
			WHERE city = 'Kyoto'
			)
			);
/* Question 3 */

SELECT cid, name
FROM Customers
WHERE cid in (
	SELECT cid
	FROM Orders
	WHERE aid != 'a03');
/* Question 4 */

SELECT cid
FROM Customers
WHERE cid in (
	SELECT cid
	FROM Orders
	WHERE pid = 'p01' Intersect(
	SELECT cid
	FROM Orders 
	WHERE pid = 'p07')
	);
/* Question 5 */

SELECT distinct pid
FROM Orders
WHERE cid NOT in (	
	SELECT cid
	FROM Orders
	WHERE aid = 'a08'
	)
ORDER By pid DESC;

/* Question 6 */

SELECT name, discount, city
FROM Customers
WHERE cid in(
	SELECT cid
	FROM Orders
	WHERE aid in(
		SELECT aid
		FROM Agents
		WHERE city = 'Dallas' OR city = 'New York'
		)
	);

/* Question 7 */

SELECT name
FROM Customers
WHERE discount in (
	SELECT discount
	FROM Customers
	WHERE city = 'London' OR city = 'Dallas' );	
/* Question 8 */
/* 
Check Constraints are perameters which determine what kind of, or range of values can be inserted into a column or group of columns. 
They are useful because they keep the integrity of the data intact. Values which dont belong in a certain columns can't be inputed.
A good example of check constraints would be not allowing words to be inputed into a column which designates age with integers. A 
poor example of a check constraint would be using it to keep referencial integrity because issues can arise. */

