
USE sql_store;
SELECT name, unit_price, unit_price * 1.1 AS 'new price' FROM products;

SELECT * FROM orders WHERE order_date = '2019-01-30';
SELECT * FROM order_items WHERE order_id = 6 AND quantity * unit_price > 30;
SELECT * FROM order_items;

--  --------------------------------------------- IN operator
SELECT * FROM products WHERE quantity_in_stock IN (49, 38, 72);

-- --------------------------------------------- BETWEEN operator
SELECT * FROM customers WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

-- --------------------------------------------- LIKE operator      '_ for character and % for number of characters'
SELECT * FROM customers WHERE address LIKE '%TRIAL%' OR address LIKE '%AVENUE%';
SELECT * FROM customers WHERE phone NOT LIKE '%9';

-- --------------------------------------------- REGEX operator
	-- ^ begining
	-- $ end
	-- | logical OR
	-- [abcd]i any word including ai, bi, ci or di
	-- [a-f] range from a to flush
SELECT * FROM customers WHERE first_name REGEXP 'ELKA|AMBUR';
SELECT * FROM customers WHERE last_name REGEXP 'EY$|ON$';
SELECT * FROM customers WHERE last_name REGEXP '^MY|SE';
SELECT * FROM customers WHERE last_name REGEXP 'B[RU]';

-- --------------------------------------------- IS NULL
SELECT * FROM orders WHERE shipped_date IS NOT NULL; 
SELECT * FROM orders WHERE shipped_date IS NULL;

-- --------------------------------------------- ORDER BY
SELECT * FROM order_items WHERE order_id = 2 ORDER BY unit_price * quantity DESC;

-- --------------------------------------------- LIMIT
SELECT * FROM customers ORDER BY points DESC LIMIT 3;

-- ------------------------------------------- JOIN ---------------------------------------------
-- JOIN (explicit syntax) or INNER JOIN, INNER keyword is optional -- 
SELECT  order_id, p.product_id, name, quantity, oi.unit_price FROM order_items oi JOIN products p ON oi.product_id = p.product_id;

-- JOIN tables from different data bases
SELECT * FROM order_items oi RIGHT JOIN sql_inventory.products sq ON oi.product_id = sq.product_id;
SELECT DISTINCT product_id FROM order_items;
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

-- --------------------------------------------- OUTER JOIN ---------------------------------------------
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

-- ------------------------------------------- NATURAL JOIN
-- NATURAL JOIN (bad practice because this JOIN automatically detect the common column between two tables)
USE sql_invoicing;
SELECT pa.date, cl.name AS client, pa.amount
	FROM payments pa
    NATURAL JOIN clients cl;

-- --------------------------------------------- CROSS JOIN 
USE sql_store;
		-- implicit syntax
        SELECT * FROM products CROSS JOIN shippers sh ORDER BY sh.name;
        -- explicit syntax
        SELECT * FROM products, shippers sh ORDER BY sh.name;

-- --------------------------------------------- UNION ---------------------------------------------
-- UNION (number of column in each query should be same and the column name of first query will be used for new column eg. here 'Type')
SELECT customer_id, first_name, points, 'BRONZE' AS Type FROM customers WHERE points < 2000
UNION
SELECT customer_id, first_name, points, 'Silver' FROM customers WHERE points BETWEEN 2000 AND 3000
UNION
SELECT customer_id, first_name, points, 'Gold' FROM customers WHERE points > 3000
ORDER BY first_name;

-- --------------------------------------------- inserting hierarchical Rows
INSERT INTO orders (customer_id, order_date, status) VALUES (1, '2019-01-02', 1);
INSERT INTO order_items VALUES (LAST_INSERT_ID(), 1, 1, 2.95);

-- --------------------------------------------- copy of table and sub query
USE sql_invoicing;
CREATE TABLE invoices_archived AS 
	SELECT  i.invoice_id, i.number, c.name AS client, i.invoice_total, i.payment_total, i.invoice_date, i.payment_date, i.due_date
		FROM invoices i
		JOIN clients c USING(client_id) 
        WHERE payment_date IS NOT NULL;

-- --------------------------------------------- UPDATE ROWS
UPDATE invoices 
	SET payment_total = invoice_total * 0.5, payment_date = due_date
	WHERE invoice_id = 3;
USE sql_store;
UPDATE customers
	SET points = points + 50
    WHERE birth_date <= '1990-01-01';

-- --------------------------------------------- UPDATE using sub queries
UPDATE orders 
	SET comments = 'GOLD customers'
	WHERE customer_id IN (
		SELECT customer_id FROM customers WHERE points >= 3000
	);

-- --------------------------------------------- DELETE using sub queries
USE sql_invoicing;
DELETE FROM invoices 
	WHERE client_id IN (
		SELECT client_id FROM clients WHERE name = 'Myworks'
    );

-- --------------------------------------------- Aggregate functions
SELECT 
	'First half of 2019' AS date_range,
	SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
	SUM(invoice_total - payment_total) AS what_we_expect 
	FROM invoices WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION
SELECT 
	'Second half of 2019' AS date_range,
	SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
	SUM(invoice_total - payment_total) AS what_we_expect 
	FROM invoices WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'
UNION
SELECT 
	'Total' AS date_range,
	SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
	SUM(invoice_total - payment_total) AS what_we_expect 
	FROM invoices WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-31';

-- --------------------------------------------- GROUP BY ---------------------------------------------
-- GROUP BY Clause (use to group items base on column eg. customer for each cusomer to calculate total points)
USE sql_store;
SELECT SUM(points) FROM customers GROUP BY customer_id ;
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
SELECT p.date, pm.name, SUM(p.amount) AS Total_payments
	FROM payments p
    JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
    GROUP BY p.date, pm.name
    ORDER BY p.date;
 
    
-- --------------------------------------------- HAVING CLAUSE filter
SELECT p.date, pm.name, SUM(p.amount) AS Total_payments
	FROM payments p
    JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
    GROUP BY p.date, pm.name
    HAVING Total_payments > 80
    ORDER BY p.date;
    
USE sql_store;
SELECT c.customer_id, c.first_name, c.last_name , SUM(oi.quantity * oi.unit_price) AS Total_sales
	FROM customers c
	JOIN orders o USING (customer_id)
	JOIN order_items oi USING (order_id)
	WHERE c.state = 'VA'
	GROUP BY c.customer_id, c.first_name, c.last_name
	HAVING (Total_sales > 100);
  
-- --------------------------------------------- WITH ROLLUP (to summarise data)
USE sql_invoicing;
SELECT pm.name AS payment_method , SUM(p.amount) AS total 
	FROM payments p
    JOIN payment_methods pm
		ON p.payment_method = pm.payment_method_id
    GROUP BY pm.name WITH ROLLUP;

-- --------------------------------------------- SUB Queries ---------------------------------------------
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
		SELECT DISTINCT client_id
			FROM invoices
    );

-- ------------------------------------ JOIN and SUB Queries
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
			WHERE product_id = 3
		)
    );
			-- JOIN
SELECT DISTINCT c.customer_id, c.first_name, c.last_name
	FROM customers c
    JOIN orders o USING (customer_id)
    JOIN order_items oi USING (order_id)
    WHERE oi.product_id = 3;

-- ---------------------------------- ALL 
USE sql_invoicing;
SELECT * FROM invoices
	WHERE invoice_total > ALL (
		SELECT invoice_total
			FROM invoices
            WHERE client_id = 3
    );
    
-- SOME and ANY are same (mean any of them like in following example if invoice_total is greater than any of them)
-- (IN) and (= ANY) are both same
SELECT * FROM invoices
	WHERE invoice_total > SOME (
		SELECT invoice_total
			FROM invoices
            WHERE client_id = 3
    );

-- co-rrelated SUB Query (here sub query is related to the main query)
USE sql_hr;
SELECT *
	FROM employees e
    WHERE salary > (
		SELECT AVG (salary)
        FROM employees 
        WHERE office_id = e.office_id
    );
USE sql_invoicing;
SELECT * 
	FROM invoices i
    WHERE invoice_total > (
		SELECT AVG (invoice_total)
        FROM invoices
        WHERE client_id = i.client_id
    );
    
-- ----------------------- EXISTS and co-related sub query
USE sql_store;
SELECT  DISTINCT product_id FROM order_items;
SELECT *
	FROM products p
    WHERE NOT EXISTS (
		SELECT product_id
        FROM order_items o
        WHERE o.product_id = p.product_id
    );

-- ----------------------- SUB Query in SELECT clause
USE sql_invoicing;
SELECT 
	client_id, name, 
    (SELECT SUM(invoice_total) FROM invoices i WHERE i.client_id = c.client_id) AS total_sales, 
    (SELECT AVG(invoice_total) FROM invoices) AS average,
    (SELECT total_sales - average) AS difference
	FROM clients c;
		
-- ---------------------- SUB query in FROM clause
SELECT * 
	FROM (
		SELECT 
			client_id, name, 
			(SELECT SUM(invoice_total) FROM invoices i WHERE i.client_id = c.client_id) AS total_sales, 
			(SELECT AVG(invoice_total) FROM invoices) AS average,
			(SELECT total_sales - average) AS difference
			FROM clients c
    ) AS Sales_summary
    WHERE total_sales IS NOT NULL;

-- --------------------------------------------- NUMARIC functions ---------------------------------------------
SELECT ROUND(4.12, 2);  -- second parameter is how many didgits want to round after decimal point
SELECT TRUNCATE(4.1979892, 2);  -- second parameter is how many didgits want after decimal point another will bi truncated
SELECT CEILING(7.1); -- return smallest integer that is greater than or equal to this number
SELECT FLOOR(7.1); -- return largest integer that is smaller than or equal to this number
SELECT ABS(-6.7); -- to calculate the absolute value, always return the positive value
SELECT RAND(); -- to generate random number

-- --------------------------------------------- STRING functions ---------------------------------------------
SELECT LENGTH('zahid');
SELECT UPPER('zahid');
SELECT LOWER('Zahid');
SELECT LTRIM('    zahid');
SELECT RTRIM('zahid   ');
SELECT TRIM('   zahid   ');
SELECT LEFT('zahid ali', 4);
SELECT RIGHT('zahid ali', 4);
SELECT SUBSTRING('zahid ali', 2, 6) AS sub_string;
SELECT LOCATE('a','zahid ali'); -- return the first occurance of character
SELECT LOCATE('hid','zahid ali'); -- return the first occurance of word
SELECT REPLACE('zahid ali', 'ali', 'ali ali'); -- 2nd paramter which we want to replace and the third one that we want to replace
SELECT CONCAT('zahid', ' ', 'ali'); -- to concate the strings

-- --------------------------------------------- DATE functions ---------------------------------------------
SELECT NOW(), CURDATE(), CURTIME(), YEAR(NOW()), MONTH(NOW()), DAY(NOW()), SECOND(NOW()), DAYNAME(NOW());
SELECT MONTHNAME(NOW());
SELECT EXTRACT( DAY FROM NOW());

-- --------------------------------------------- DATE FORMAT ---------------------------------------------
SELECT DATE_FORMAT(NOW(), '%y'); -- return two digit year 
SELECT DATE_FORMAT(NOW(), '%Y'); -- return four digit year
SELECT DATE_FORMAT(NOW(), '%m %Y'); -- m for two digit month
SELECT DATE_FORMAT(NOW(), '%M %Y'); -- M for month name
SELECT DATE_FORMAT(NOW(), '%M %d %Y'); -- d for two digit day
SELECT DATE_FORMAT(NOW(), '%M %D %Y'); -- D for day with english suffix ( eg. 2th)

-- ---------------------------------- TIME FORMAT ---------------------------------------------
SELECT TIME_FORMAT(NOW(), '%H:%i:%s %p');

-- Calculating dates and times
SELECT DATE_ADD(NOW(), INTERVAL 1 MONTH); -- interval maybe of NEXT month, year or day
SELECT DATE_SUB(NOW(), INTERVAL 1 MONTH); -- interval maybe of PREVIOUS month, year or day
SELECT DATEDIFF(NOW(), '2010-01-11'); -- return difference in days
SELECT TIME_TO_SEC('09:00'); -- return seconds since mid night
SELECT TIME_TO_SEC('09:02') - TIME_TO_SEC('09:00'); -- return diff in seconds

-- --------------------------------- IFNULL and COALESCE -------------------------------------------
USE sql_store;
SELECT 
	order_id, 
    IFNULL(shipper_id, 'Not Assigned') AS shipper  -- if shipper_id is null this will return 'Not Assigned'.
    FROM orders;
SELECT 
	order_id, 
    COALESCE(shipper_id, comments, 'Not Assigned') AS shipper -- if shipper_id is this will return comments and 
    FROM orders;                                              -- if comments is null this will return 'Not Assigned'.

SELECT
	CONCAT(first_name, ' ', last_name) AS customer,
    IFNULL(phone, 'Unknown') AS phone
    FROM customers;

-- ------------------------------------------------ IF -------------------------------------
-- IF (if condition is true this will return 2nd parameter and if false this will return 3rd parameter)
SELECT
	order_id, order_date,
    IF(YEAR(order_date) = YEAR(NOW()), 'Active', 'Archived') AS Category
    FROM orders;
		-- using sub query
SELECT product_id, name,
	(SELECT COUNT(order_id) FROM order_items o WHERE o.product_id = p.product_id ) AS orders,
    IF((SELECT orders) = 1, 'Once', 'Many times') AS frequency
	FROM products p;
		-- using JOIN and GROUP BY
SELECT p.product_id, name,
	COUNT(*) AS orders,
    IF(COUNT(*) = 1, 'Once', 'Many times') AS frequency
	FROM products p
    JOIN order_items USING (product_id)
    GROUP BY product_id, name;

-- --------------------------------- CASE-----------------------------------------
SELECT
	order_id, order_date,
	CASE
		WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
		WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Last Year'
		WHEN YEAR(order_date) < YEAR(NOW()) - 1 THEN 'Archived'
        ELSE 'Future'
	END AS category
    FROM orders;
SELECT CONCAT(first_name, ' ', last_name) AS customer, points,
	CASE 
		WHEN points > 3000 THEN 'Gold'
        WHEN points >= 2000 THEN 'Silver'
        ELSE 'Bronze'
	END AS category
	FROM customers
    ORDER BY (points) DESC;

-- ------------------------------------------ VIEW ---------------------------------------------------------------
-- view is a virtual table based on the result-set of an SQL statement. A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

-- CREATE VIEW (Benifits of VIEWS 1- simplify queries 2- reduce the impact of changes 3-restrict access to the data, provide security)
USE sql_invoicing;
CREATE VIEW clients_balance AS
	SELECT c.client_id, c.name,
		SUM(invoice_total - payment_total) AS balance
		FROM clients c
		JOIN invoices i USING (client_id)
		GROUP BY c.client_id, c.name;
SELECT * FROM clients_balance;

-- CREATE OR REPLACE VIEW 
CREATE OR REPLACE VIEW clients_balance AS
	SELECT c.client_id, c.name,
		SUM(invoice_total - payment_total) AS balance
		FROM clients c
		JOIN invoices i USING (client_id)
		GROUP BY c.client_id, c.name;
SELECT * FROM clients_balance;

-- UPDATE able views
			-- if vew does not have DISTINCT, AGGREGATE functions (MIN, MAX, etc), GROUP BY / HAVING, UNION 
			-- that view is called update able view USING this view we can update data in original table
		-- this is update able view
CREATE OR REPLACE VIEW invoice_with_balance AS
	SELECT invoice_id, number, client_id, invoice_total,
		payment_total, invoice_total- payment_total AS balance,
		invoice_date, due_date, payment_date
		FROM invoices	
		WHERE (invoice_total- payment_total) > 0;
	-- updating
DELETE FROM invoice_with_balance WHERE invoice_id = 1;
UPDATE invoice_with_balance 
	SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
	WHERE invoice_id = 2;
	
-- WITH CHECK OPTION (to prevent excludign rows in VIEW)
CREATE OR REPLACE VIEW invoice_with_balance AS
	SELECT invoice_id, number, client_id, invoice_total,
		payment_total, invoice_total- payment_total AS balance,
		invoice_date, due_date, payment_date
		FROM invoices	
		WHERE (invoice_total- payment_total) > 0
        WITH CHECK OPTION;

-- -----------------------------------------------------------------------------------------------------------------------------------

-- ----------------------------------------------- STORED PROCEDURE --------------------------------------------------------
-- store procedure or functon is data base object that contain block of SEQUEL Code 
-- -1-we use store procedure to store and organize SQL Code
-- -2-faster execution
-- -3-provide data security just like VIEWS (we can remove direct access to all the table and we
--       can use procedure to allow various operations like update and delete data)
-- -4- we can decide who can use which procedure this can limit what user can do with our data 
-- we are changing delimiter to consider whole procedure as single unit
DROP PROCEDURE IF EXISTS get_clients;
DELIMITER $$		-- DELIMITER command is used to change the standard delimiter of MySQL commands like here (;) to ($$)
CREATE PROCEDURE get_clients()
BEGIN 
	SELECT * FROM clients;
END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS get_invoices_with_balance;
DELIMITER $$
CREATE PROCEDURE get_invoices_with_balance()
BEGIN
	SELECT *,
		invoice_total - payment_total AS balance
		FROM invoices
		WHERE (invoice_total - payment_total) > 0;
END$$
DELIMITER ;

-- --------- procedure with parameter
DROP PROCEDURE IF EXISTS get_clients_by_state;
DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2))
BEGIN 
	SELECT * FROM clients c
		WHERE c.state = state;
END $$
DELIMITER ;
CALL get_clients_by_state('CA');      -- calling procedure with argument

DROP PROCEDURE IF EXISTS get_invoices_by_clients;
DELIMITER $$
CREATE PROCEDURE get_invoices_by_clients(client_id INT)
BEGIN 
	SELECT *
		FROM invoices i
        WHERE i.client_id = client_id;
END $$
DELIMITER ;
CALL get_invoices_by_clients(3);

-- ------- default paramter in procedure 
DROP PROCEDURE IF EXISTS get_invoices_by_clients_dafault;
DELIMITER $$
CREATE PROCEDURE get_invoices_by_clients_dafault(client_id INT)
BEGIN 
	IF client_id IS NULL THEN
		SET client_id = 3;
	END IF;
	SELECT *
		FROM invoices i
        WHERE i.client_id = client_id;
END $$
DELIMITER ;
CALL get_invoices_by_clients_dafault(NULL); -- calling with default value 

DROP PROCEDURE IF EXISTS get_invoices_by_clients_dafault;
DELIMITER $$
CREATE PROCEDURE get_invoices_by_clients_dafault(client_id INT)
BEGIN 
	IF client_id IS NULL THEN
		SELECT * FROM invoices;
	ELSE
		SELECT *
			FROM invoices i
			WHERE i.client_id = client_id;
	END IF;
END $$
DELIMITER ;
CALL get_invoices_by_clients_dafault(NULL); -- calling with default value 

DROP PROCEDURE IF EXISTS get_invoices_by_clients;
DELIMITER $$
CREATE PROCEDURE get_invoices_by_clients(client_id INT)
BEGIN 
	SELECT *
		FROM invoices i
        WHERE i.client_id = IFNULL(client_id, i.client_id);
END $$
DELIMITER ;
CALL get_invoices_by_clients(3);

DROP PROCEDURE IF EXISTS get_payments;
DELIMITER $$
CREATE PROCEDURE get_payments(client_id INT, payment_method_id TINYINT)
BEGIN
	SELECT *
		FROM payments p
        WHERE p.client_id = IFNULL(client_id, p.client_id) AND payment_method = IFNULL(payment_method_id, payment_method);
END $$
DELIMITER ;
CALL get_payments(NULL, 1);

-- ------------ Upate data in procedure and validations 
DROP PROCEDURE IF EXISTS make_payments;
DELIMITER $$
CREATE PROCEDURE make_payments(invoice_id INT, payment_amount DECIMAL(9, 2), payment_date DATE)
BEGIN
	IF payment_amount <= 0 THEN
		SIGNAL SQLSTATE '22003'
			SET MESSAGE_TEXT = 'Invalid payment amount';
	END IF;
	UPDATE invoices i 
		SET i.payment_total = payment_amount, i.payment_date = payment_date
        WHERE i.invoice_id = invoice_id;
END $$
DELIMITER ;
CALL make_payments(2, 100, '2019-01-01');

-- ------------ output parameters to return the values from PROCEDURE ----------------(bad practice)
DROP PROCEDURE IF EXISTS get_unpaid_invoices_for_client;
DELIMITER $$
CREATE PROCEDURE get_unpaid_invoices_for_client(client_id INT, OUT invoices_count INT, OUT invoices_total DECIMAL(9, 2)) -- note OUT keyword for getting values from procedure
BEGIN
	SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total   -- storing value into paramters
    FROM invoices i
    WHERE i.client_id = client_id AND payment_total = 0;
END $$
DELIMITER ;
-- user define variable (basically an object that we can use to store single value in memory)
SET @invoices_count = 0;
SET @invoices_total = 0;
CALL get_unpaid_invoices_for_client(3, @invoices_count, @invoices_total);
SELECT @invoices_count, @invoices_total;

-- --------------------------------------------- variables -------------------------------------------------------
-- ------ User or SESSION (this variables will be in memory during the entire session unitll user disconnect with my sql) 
SET @zahif = 0;
-- ----- Local variables (that we define inside the STORE PROCEDURE or in FUNCTIONS and dont stay in memory for entire user sessoion 
						-- stay in memory until the procedure finish the execution)
DELIMITER $$
CREATE PROCEDURE local_proc()
BEGIN 
	DECLARE zahid INT DEFAULT 0;  -- local procedure
    SELECT COUNT(*)
		INTO zahid   -- setting value in local procedure
		FROM invoices;
END $$
DELIMITER ;

-- -------------------------------------------------------------------------------------------------------------------------------------
-- --------------------------------------------------------- Functions ---------------------------------------------------------------
-- functions are like procedure but they can return only single value
-- functions cannot return result sets, columns or rows
DELIMITER $$
CREATE FUNCTION function_detail()
	RETURNS INTEGER  -- return type
	-- attributes every function should have minimumn one attribute
	DETERMINISTIC  -- if we give this function same set of value this always return same value
	READS SQL DATA  -- this mean you are going to have select statement in your function to read some data
	MODIFIES SQL DATA  -- this mean you are going to have insert, delete or update statement in your function
BEGIN
	SELECT client_id FROM clients WHERE client_id = 3;
	RETURN 1;
END $$ 
DELIMITER ;

USE sql_invoicing;
DROP FUNCTION IF EXISTS get_risk_factor_for_client;
DELIMITER $$
CREATE FUNCTION get_risk_factor_for_client(client_id INT)
	RETURNS INTEGER 
	READS SQL DATA
BEGIN 
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
	DECLARE invoices_total DECIMAL(9, 2);
	DECLARE invoices_count INT;
    
    SELECT COUNT(*), SUM(invoice_total)
	INTO invoices_count, invoices_total
    FROM invoices i
    WHERE i.client_id = client_id;
    SET risk_factor = invoices_total/invoices_count * 5;
    
	RETURN IFNULL(risk_factor, 0);
END $$
DELIMITER ;

-- SELECT statement with function
SELECT 
	client_id, name,
    GET_RISK_FACTOR_FOR_CLIENT(client_id) AS risk_factor
FROM clients;
    
-- -------------------------------------------------------------------------------------------------------------------------------------
-- --------------------------------------------------------- TRIGGER ---------------------------------------------------------------
-- A block of SQL code that automatically gets executed before or after an insert, update or delete statement
DROP TRIGGER IF EXISTS payment_after_insert;
DELIMITER $$
CREATE TRIGGER payment_after_insert
	AFTER INSERT ON payments   -- or BEFORE and INSERT, UPDATE or DELETE
	FOR EACH ROW               -- if changes in any row then call this trigger
BEGIN 
	UPDATE invoices  -- we can update any table except payments because if we update payments this trigger will called infintly
    SET payment_total = payment_total + NEW.amount     -- NEW to get the latest values
    WHERE invoice_id = NEW.invoice_id;
    
    INSERT INTO payments_audit  -- auditing mean tracking the opeartions throgh trigger and saving in payments_audit table
		VALUES (NEW.client_id, NEW.date, NEW.amount, 'INSERT', NOW());
END $$
DELIMITER ;
-- when we insert any value in payments table above trigger will be called after insertion
INSERT INTO payments
	VALUES(DEFAULT, 5, 4, '2019-01-01', 10, 1);

DROP TRIGGER IF EXISTS payment_after_delete;
DELIMITER $$
CREATE TRIGGER payment_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices 
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
    
    INSERT INTO payments_audit  -- auditing mean tracking the opeartions throgh trigger and saving in payments_audit table
		VALUES (OLD.client_id, OLD.date, OLD.amount, 'DELETE', NOW());
END $$
DELIMITER ;

DELETE FROM payments WHERE invoice_id = 4;

-- SHOW TRIGGERS in databse
SHOW TRIGGERS;
-- SHOW specific tables triggers
SHOW TRIGGERS LIKE 'payments%';

-- ---------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------- EVENTS ------------------------------------------------------------
-- A task (or block of SQL Code) that gets executed according to shedule
SHOW VARIABLES;  -- to show all the variables
SHOW VARIABLES LIKE 'event%';  -- to show the event variables

-- turn event_scheduler on off(this is for checking the events to execute)
SET GLOBAL event_scheduler  = OFF;
SET GLOBAL event_scheduler  = ON;

DELIMITER $$
CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
	-- AT '2019-05-01' -- use AT to execute only once
    -- EVERY 2 DAY  --every with interval to excecute on regular basis
	EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01' -- START and ENDS are optional
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
END $$
DELIMITER ;

-- show, update and delete EVENTS
SHOW EVENTS;
SHOW EVENTS LIKE 'yearly%';
DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;
ALTER EVENT yearly_delete_stale_audit_rows DISABLE;
ALTER EVENT yearly_delete_stale_audit_rows ENABLE;
-- alter event syntax same as CREATE
DELIMITER $$
ALTER EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
	-- AT '2019-05-01' -- use AT to execute only once
    -- EVERY 2 DAY  --every with interval to excecute on regular basis
	EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01' -- START and ENDS are optional
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
END $$
DELIMITER ;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------ TRANSACTIONS --------------------------------------------------------------------------
-- A group of SQL statement that represent a single unit of work
-- ---------- ACID properties -------------
-- 1-Atomicity (they are like atoms mean unbreak able in transaction each statement should succeed or all failed mean transactions are like single uint of work
			-- if all statements are succeeded then transaction will be commited if any of them is failed then transaction should roll back)
-- 2-Consistency (data remain consistent)
-- 3-Isolation (transaction are protected from each other even they are updating the same data they cannot interfare each other)
-- 4-Durability (its mean once transaction is commited the changes made by transcations are permanent
-- 5-Serializability (Ensure that the schedule for the concurrent execution of several transactions should yeild consistent result)

USE sql_store;
START TRANSACTION;
	INSERT INTO orders (customer_id, order_date, status)
		values(1, '2019-01-01', 1);
	INSERT INTO order_items
		VALUES(last_insert_id(), 1, 1, 1);
COMMIT;    -- to manually rollback transaction use ROLLBACK instead of COMMIT;

-- Concurrency is when two or more user trying to access same data at the same time 
-- --------------------------------------------------------------------------------------------------------------------------------------
-- --------------------------------------------- ISOLATION LEVEL ------------------------------------------------------------------------
-- ---------- Concurrency Problems ------------
-- --1- Lost updates (when two transactions trying to update same data and we dont use logs in this situation the transaction commit later 
				-- overide the changes made by previuos transactions)
-- --2- Dirty Reads (dirty reads happen when transaction reads data that has not commit yet to prevent this we provide 
				-- cover of isolation around transaction so the only commited data will visible for another transaction 
                -- this isolation level is called READ COMMITTED)
-- --3- Non-repeating Reads (when we read something twise during the course of transaction and get different result mean when in one transaction
				-- one statemnet read 10 points and at this stage another transaction update the points to 0 and and in that transaction
				-- the subquery again read the point and now get 0 point so we have diff results in one transaction that is 10 and 0
				-- to prevent this we isolate and this isolation level is called REPEATABLE READ with this level our reads are repeatable
                -- and consistent even if data gets change by another transaction we will see the snapshot that was establish by the 
                -- first read)
-- --4- Phantom (or ghost) Reads (when in 1st transaction we select all the customers that have more than 10 points at the same time another transaction
				-- update the points for another customer and that was not return by the 1st transaction this is what we called
				-- Phantom reads to prevent this isolation level used is called SERIALIZABLE this wil be guarantee that our transaction
                -- be aware of changes currently being made by another transaction to the data if there is another transaction that 
                -- can impect our data so 1st transaction will wait for them because this our transaction will be slow so we have to use 
                -- them when its important)
-- In my SQL the default level of isolaction in is REPEATABLE reads this level doesnot prevent phantom reads

SHOW VARIABLES LIKE 'transaction_isolation';
-- set transaction level this will set the transaction level for the next transaction
SET TRANSACTION isolation level READ uncommitted;   -- low level of isolation
SET TRANSACTION isolation level READ committed;  	-- 2nd level of isolation
SET TRANSACTION isolation level repeatable read;    -- 3rd level of isolation default level (in this level we have only phantom reads)
SET TRANSACTION isolation level serializable;		-- higher level of isolation
-- to set the transaction level for all feature transactions in current session or connection
SET SESSION TRANSACTION isolation level serializable;
-- to set the transaction level for all feature transactions in All session or connection Globaly
SET GLOBAL TRANSACTION isolation level serializable;
-- ------------------------------------------------------------------------------------------------------------
-- ---------------- Deadlocks -----------------------
-- deadlocks happens when different transactions connot complete because each transaction hold a lock that the other needs
-- so so both transactiona keep waiting for each other and never release their lock
-- -1--To prevent deadlock use same order in updating of different tables in different transactions
-- -2--Keep your transaction small and short duration so they are not likely collide another transaction 

-- ------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------- Data Types ---------------------------------------------
-- --------------------- STRINGS ----------------------
-- char(x)  -- fixed length
-- varchar(x) -- max: 65535 characters (~64kb)
-- mediumtext -- max: 16MB
-- longtext   -- max: 4GB
-- tinytext   -- max: 255 bytes
-- text       -- max: 64KB
-- --------------------- INTEGERS ----------------------
-- tinyint            1b [-128, 127]
-- unsigned tinyint      [0, 255]
-- smallint           2b [-32k, 32k]
-- mediumint          3b [-8M, 8M]
-- int                4b [-2B, 2B]
-- bigint             8b [-9Z, 9Z]
-- --------------------- RATIONALS ----------------------
 -- DECIMAL(p, s)
 -- DEC
 -- NUMARIC
 -- FIXED
 -- FLOAT  -- max: 4b
 -- DOUBLE -- max: 8b
 -- --------------------- BOOLEANS ----------------------
-- BOOL
-- BOOLEAN
 -- --------------------- DATE/TIME ----------------------
-- DATE 
-- TIME 
-- DATETIME   --max: 8b
-- TIMESTAMP  --max: 4b (up to 2038)
-- YEAR
 -- --------------------- BLOB ----------------------
-- to store the binary data of files etc.
-- ----------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------- JSON ------------------------------------------------------------
-- lightweight format for storing and transferring data over the internet
-- after setting the type in table we can set values like this
-- method 1
Update table_name set column_name = '
{
	"name": "zahid",
    "weights": [1, 2, 3],
    "colors": {"red": "#123432", "blue": "#879212"}
}
'
where id = 1;
-- method 2
Update table_name set column_name = JSON_OBJECT(
	'weight', 1,
    'dimension', JSON_ARRAY(1, 2, 3),
    'manufacture', JSON_OBJECT('name', 'zahid')
) 
where id = 1;
-- ------- getting values method 1
select JSON_EXTRACT (column_name, '$.weight')
FROM table_name
WHERE id = 1;
-- ------- getting values method 2
select column_name -> '$.weight'
FROM table_name
WHERE id = 1;
-- getting object vale without quotes
select column_name ->> '$.manufacture.name'
FROM table_name
WHERE id = 1;
-- ----- update specific properties
Update table_name set column_name = JSON_SET(
	column_name,
    '$.weight', 20,
    '$.age', 10
)
where id = 1;
-- ----- remove specific properties
Update table_name set column_name = JSON_REMOVE(
	column_name,
    '$.age'
)
where id = 1;

-- ---------------------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------- Database Design ----------------------------------------------------------------
-- ---------------------------------------------------------------------
-- ------------------------- Data Modeling -----------------------------
-- 1-- Undertand the requirements
-- 2-- Build Conceptual Model of the Business (this involves identifying entities, things or concepts of the business and the 
			-- relationship with each other this is a visual representation of the concepts that you use to communicate with the stack holders)
-- 3-- Build a Logical Model (an abstract data model that is independent of database technology its just shows tables, columns you need)
-- 4-- Build Physical Model (Refine the logical model to build physical model or specific database management system so physical model
			-- is the implementation of logical model for particular database technology in this model we should have exact data types
            -- default values for the columns whether thay are null or not the primary keys for the tables, and other objects like views, 
            -- store procedures, triggers and so on )
-- ---------------------------------------------------------------------
-- ------------------------- Normalization -----------------------------
-- is the process of reviewing of design and insuring that it following few pre define rules that prevent data duplication there are basically
-- seven rules also called seven normal forms and each rules assume that you have applied previous rules 99% we will use 1st three rules
-- 1st Normal Form (Each cell should have single value and we cannot have repeated columns)
-- 2nd Normal Form (1- be in first normal form 2- Every table should describe one entity, and every column in that table should describe that entity)
-- 3rd Normal Form (1- be in 2nd normal form 2- A column in a table should not be derived from other columns)

