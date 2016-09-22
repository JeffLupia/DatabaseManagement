/*    QUESTION 1   */
SELECT ordnum, totalUSD
FROM orders;

/*    QUESTION 2   */
SELECT name, city
FROM Agents
WHERE name = 'Smith';

/*    QUESTION 3   */
SELECT pid, name, priceUSD
FROM Products
WHERE quantity > 201000;

 /*    QUESTION 4   */
SELECT name, city
FROM Customers
WHERE city = 'Duluth';

/*    QUESTION 5   */
SELECT name
FROM Agents
WHERE city != 'New York' AND city != 'Duluth';

/*    QUESTION 6   */
SELECT *
FROM Products
WHERE city != 'Dallas' AND city != 'Duluth' AND priceUSD > 1.00;

/*    QUESTION 7   */
SELECT *
FROM Orders
WHERE mon = 'feb' OR mon = 'mar';

/*    QUESTION 8   */
SELECT *
FROM Orders
WHERE mon = 'feb' AND totalUSD >= 600;

/*    QUESTION 9   */
SELECT *
FROM Orders
WHERE cid = 'c005';

