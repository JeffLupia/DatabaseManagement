/*Question 1*/

SELECT a.city 
FROM Agents a
INNER JOIN Orders o ON o.aid = o.aid
WHERE o.cid = 'c006';


/*Question 2*/

SELECT o.pid
FROM Orders o
INNER JOIN Customers c ON c.cid = o.cid
INNER JOIN Agents a ON a.aid = o.aid
WHERE c.city = 'Kyoto' and o.qty >= 1
ORDER BY pid DESC;

/*Question 3*/

SELECT name
FROM customers
WHERE cid not IN(
	SELECT cid
	FROM Orders
	);


/*Question 4*/

SELECT c.name
FROM Customers c
LEFT OUTER JOIN Orders o ON o.cid = c.cid
WHERE o.cid is null;

/*Question 5*/

SELECT c.name, a.name
FROM Customers c
INNER JOIN Orders o ON o.cid = c.cid
INNER JOIN Agents a ON a.aid = o.aid
WHERE a.city = c.city AND (
	SELECT count(o.cid)
	FROM Orders o, Agents a
	WHERE o.aid = a.aid) >= 1;

/*Question 6*/

SELECT DISTINCT a.name, c.name, a.city, c.city
FROM Customers c
INNER JOIN agents a ON a.city = c.city;

/*Question 7*/

SELECT c.name, c.city
FROM Customers c
INNER JOIN products p ON p.city = c.city
GROUP BY c.name, c.city
ORDER BY count(p.city) ASC
LIMIT 1;
