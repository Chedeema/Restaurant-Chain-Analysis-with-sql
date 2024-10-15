
SELECT * FROM Menu;

--WHERE Clause:

SELECT * FROM Sales
WHERE quantity_sold > 30;

--INNER JOIN:

SELECT customers.customer_name, sales.sale_date, menu.menu_item
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN sales ON orders.sale_id = Sales.sale_id
JOIN menu ON sales.menu_id = menu.menu_id
WHERE menu.menu_item = 'Fried Chicken';

select * from sales
select * from menu

--LEFT JOIN:

SELECT branches.branch_name, menu.menu_item
FROM branches
LEFT JOIN sales ON branches.branch_id = sales.branch_id
LEFT JOIN menu ON sales.menu_id = menu.menu_id;

select * from branches
select * from employee
select * from sales
select * from customers
select * from order

--GROUP BY and COUNT:


SELECT branch_id, COUNT(*) as total_sales
FROM Sales
GROUP BY branch_id;

--HAVING Clause:


SELECT branch_id, COUNT(*) as total_sales
FROM Sales
GROUP BY branch_id
HAVING COUNT(*) > 2;

--UNION:


SELECT employee_name AS name
FROM employees
UNION
SELECT customer_name AS name
FROM customers;

--UPDATE Query:


UPDATE Menu
SET price = price * 1.1;

--ALTER TABLE:

ALTER TABLE Menu
ADD drink_menu VARCHAR(50);

--DELETE Query:


DELETE FROM Customers
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id FROM Orders
);

--CASE Statement:


SELECT menu_item, 
CASE 
    WHEN price < 200 THEN 'Low'
    WHEN price BETWEEN 200 AND 400 THEN 'Medium'
    ELSE 'High'
END AS price_category
FROM Menu;

--GROUP BY with HAVING COUNT:


SELECT Menu.menu_item, COUNT(Sales.quantity_sold) AS total_quantity
FROM Menu
JOIN Sales ON Menu.menu_id = Sales.menu_id
GROUP BY Menu.menu_item
HAVING COUNT(Sales.quantity_sold) > 20;

--JOIN with WHERE:


SELECT Employees.employee_name
FROM Employees
JOIN Branches ON Employees.branch_id = Branches.branch_id
WHERE Branches.location = 'Lagos';

--DROP COLUMN:

ALTER TABLE Customers
DROP COLUMN email;

--JOIN with GROUP BY:


SELECT Branches.branch_name, COUNT(Sales.quantity_sold) AS total_quantity_sold
FROM Branches
JOIN Sales ON Branches.branch_id = Sales.branch_id
GROUP BY Branches.branch_name;



