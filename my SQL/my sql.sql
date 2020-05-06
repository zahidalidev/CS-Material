USE sql_store;
SELECT name, unit_price, unit_price * 1.1 AS 'new price' FROM products;

SELECT * FROM orders WHERE order_date = '2019-01-30';
SELECT * FROM order_items WHERE order_id = 6 AND quantity * unit_price > 30;
SELECT * FROM order_items;

-- IN operator
SELECT * FROM products WHERE quantity_in_stock IN (49, 38, 72);

-- BETWEEN operator
SELECT * FROM customers WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

-- LIKE operator      '_ for character and % for number of characters'
SELECT * FROM customers WHERE address LIKE '%TRIAL%' OR address LIKE '%AVENUE%';
SELECT * FROM customers WHERE phone NOT LIKE '%9';

-- REGEX operator
	-- ^ begining
	-- $ end
	-- | logical OR
	-- [abcd]i any word including ai, bi, ci or di
	-- [a-f] range from a to flush
SELECT * FROM customers WHERE first_name REGEXP 'ELKA|AMBUR';
SELECT * FROM customers WHERE last_name REGEXP 'EY$|ON$';
SELECT * FROM customers WHERE last_name REGEXP '^MY|SE';
SELECT * FROM customers WHERE last_name REGEXP 'B[RU]';

-- IS NULL
SELECT * FROM orders WHERE shipped_date IS NOT NULL; 
SELECT * FROM orders WHERE shipped_date IS NULL;

-- ORDER BY
SELECT * FROM order_items WHERE order_id = 2 ORDER BY unit_price * quantity DESC;

-- LIMIT
SELECT * FROM customers ORDER BY points DESC LIMIT 3;

                      -- JOIN (explicit syntax) or INNER JOIN, INNER keyword is optional -- 
SELECT  order_id, p.product_id, name, quantity, oi.unit_price FROM order_items oi JOIN products p ON oi.product_id = p.product_id;

-- JOIN tables from different data bases
SELECT * FROM order_items oi JOIN sql_inventory.products sq ON oi.product_id = sq.product_id;

-- self JOIN 
USE sql_hr ;
SELECT e.employee_id, e.first_name AS employee_name, m.first_name AS manager 
	FROM employees e 
	JOIN employees m 
	ON e.reports_to = m.employee_id;


-- JOIN multiple tables
 USE sql_invoicing;
 SELECT  p.payment_id, p.date, p.amount, cl.name, pm.name AS payment_method
	FROM payments p
	JOIN clients cl ON p.client_id = cl.client_id
	JOIN payment_methods pm ON pm.payment_method_id = p.payment_method;
	
-- compound JOIN condition
USE sql_store;
SELECT * FROM order_items oi
	JOIN order_item_notes oin
	ON oi.order_id = oin.order_Id
    AND oi.product_id = oin.product_id;

-- join ( implicit syntaxt bad practice)
SELECT  order_id, p.product_id, name, quantity, oi.unit_price FROM order_items oi, products p WHERE oi.product_id = p.product_id;

-- OUTER JOIN (LEFT JOIN or RIGHT JOIN so OUTER keyword is optional)
SELECT p.product_id, p.name, oi.quantity
	FROM products p
	LEFT JOIN order_items oi
    ON p.product_id = oi.product_id;
SELECT p.product_id, p.name, oi.quantity
	FROM products p
	RIGHT JOIN order_items oi
    ON p.product_id = oi.product_id;
    
-- OUTER JOIN and INNER JOIN between multiple tables 
SELECT o.order_date, o.order_id, cu.first_name, sh.name AS shipper, os.name AS status
	FROM orders o
    LEFT JOIN customers cu ON o.customer_id = cu.customer_id
    LEFT JOIN shippers sh ON o.shipper_id = sh.shipper_id
    JOIN order_statuses os ON o.status = os.order_status_id;

-- self OUTER JOIN 
USE sql_hr ;
SELECT e.employee_id, e.first_name AS employee_name, m.first_name AS manager 
	FROM employees e 
	LEFT JOIN employees m 
	ON e.reports_to = m.employee_id;

-- USING keyword and JOIN
USE sql_invoicing;
SELECT pa.date, cl.name AS client, pa.amount, pm.name AS payment_method
	FROM payments pa
	JOIN clients cl USING(client_id)
    JOIN payment_methods pm ON pa.payment_method = pm.payment_method_id;
    
-- NATURAL JOIN (bad practice because this JOIN automatically detect the common column between two tables)
USE sql_invoicing;
SELECT pa.date, cl.name AS client, pa.amount
	FROM payments pa
    NATURAL JOIN clients cl;

-- CROSS JOIN 
USE sql_store;
		-- implicit syntax
        SELECT * FROM products CROSS JOIN shippers sh ORDER BY sh.name;
        -- explicit syntax
        SELECT * FROM products, shippers sh ORDER BY sh.name;

-- UNION (number of column in each query should be same and the column name of first query will be used for new column eg. here 'Type')
SELECT customer_id, first_name, points, 'BRONZE' AS Type FROM customers WHERE points < 2000
UNION
SELECT customer_id, first_name, points, 'Silver' FROM customers WHERE points BETWEEN 2000 AND 3000
UNION
SELECT customer_id, first_name, points, 'Gold' FROM customers WHERE points > 3000
ORDER BY first_name;

-- inserting hierarchical Rows
INSERT INTO orders (customer_id, order_date, status) VALUES (1, '2019-01-02', 1);
INSERT INTO order_items VALUES (LAST_INSERT_ID(), 1, 1, 2.95);

-- copy of table and sub query
USE sql_invoicing;
CREATE TABLE invoices_archived AS 
	SELECT  i.invoice_id, i.number, c.name AS client, i.invoice_total, i.payment_total, i.invoice_date, i.payment_date, i.due_date
		FROM invoices i
		JOIN clients c USING(client_id) 
        WHERE payment_date IS NOT NULL;

-- UPDATE ROWS
UPDATE invoices 
	SET payment_total = invoice_total * 0.5, payment_date = due_date
	WHERE invoice_id = 3;
USE sql_store;
UPDATE customers
	SET points = points + 50
    WHERE birth_date <= '1990-01-01';

-- UPDATE using sub queries
UPDATE orders 
	SET comments = 'GOLD customers'
	WHERE customer_id IN (
		SELECT customer_id FROM customers where points >= 3000
	);

-- DELETE using sub queries
USE sql_invoicing;
DELETE FROM invoices 
	WHERE client_id IN (
		SELECT client_id FROM clients where name = 'Myworks'
    );

-- Aggregate functions
SELECT 
	'First half of 2019' AS date_range,
	sum(invoice_total) AS total_sales,
    sum(payment_total) AS total_payments,
	sum(invoice_total - payment_total) AS what_we_expect 
	FROM invoices WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION
SELECT 
	'Second half of 2019' AS date_range,
	sum(invoice_total) AS total_sales,
    sum(payment_total) AS total_payments,
	sum(invoice_total - payment_total) AS what_we_expect 
	FROM invoices WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'
UNION
SELECT 
	'Total' AS date_range,
	sum(invoice_total) AS total_sales,
    sum(payment_total) AS total_payments,
	sum(invoice_total - payment_total) AS what_we_expect 
	FROM invoices WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-31';

-- GROUP BY Clause (use to group items base on column eg. customer for each cusomer to calculate total points)
USE sql_store;
select sum(points) from customers Group BY customer_id ;
USE sql_invoicing;
SELECT client_id, SUM(invoice_total) AS total_sales
	FROM invoices
    WHERE invoice_date >= '2019-07-01'
    GROUP BY client_id
    ORDER BY total_sales DESC;
SELECT state, city, SUM(invoice_total) AS total_sales   -- group by multiple column and JOIN
	FROM invoices i
    JOIN clients USING (client_id)
    GROUP BY state, city;
SELECT p.date, pm.name, SUM(p.amount) as Total_payments
	FROM payments p
    JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
    GROUP BY p.date, pm.name
    ORDER BY p.date;
    
-- HAVING CLAUSE filter
SELECT p.date, pm.name, SUM(p.amount) as Total_payments
	FROM payments p
    JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
    GROUP BY p.date, pm.name
    HAVING Total_payments > 80
    ORDER BY p.date;
    
USE sql_store;
SELECT c.customer_id, c.first_name, c.last_name , SUM(oi.quantity * oi.unit_price) As Total_sales
	FROM customers c
	JOIN orders o USING (customer_id)
	JOIN order_items oi USING (order_id)
	where c.state = 'VA'
	GROUP BY c.customer_id, c.first_name, c.last_name
	HAVING (Total_sales > 100);
  
-- WITH ROLLUP (to summarise data)
USE sql_invoicing;
SELECT pm.name AS payment_method , SUM(p.amount) AS total 
	FROM payments p
    JOIN payment_methods pm
		ON p.payment_method = pm.payment_method_id
    GROUP BY pm.name WITH ROLLUP;

-- SUB Queries
USE sql_hr;
SELECT first_name, salary
	FROM employees
    WHERE salary > (
		SELECT AVG(salary) 
		FROM employees
    );
USE sql_invoicing;
SELECT * FROM clients
    WHERE client_id NOT IN (
		select DISTINCT client_id
			FROM invoices
    );

-- JOIN and SUB Queries
USE sql_store;
			-- SUB Queries
SELECT customer_id, first_name, last_name
	FROM customers
    WHERE customer_id IN (
		SELECT customer_id 
		FROM orders
		WHERE order_id IN (
			SELECT order_id 
			FROM order_items 
			Where product_id = 3
		)
    );
			-- JOIN
SELECT DISTINCT c.customer_id, c.first_name, c.last_name
	FROM customers c
    JOIN orders o USING (customer_id)
    JOIN order_items oi USING (order_id)
    Where oi.product_id = 3;










