/*	Jonathan Rumley
	CIS_243 K. Wujcik
	02/08/2021
	LAB #2
*/

-- 1
SELECT category_name, product_name, list_price
FROM categories c JOIN products p
    ON c.category_id = p.category_id
ORDER BY category_name AND product_name ASC;

-- 2
SELECT first_name, last_name, line1, city, state, zip_code
FROM customers c JOIN addresses a
    ON c.customers_id = a= customer_id
WHERE c.email_address = 'allan.sherwood@yahoo.com';

-- 3
SELECT first_name, last_name, line1, city, state, zip_code
FROM customers c JOIN addresses a
    ON c.customer_id = a.customer_id AND c.shipping_address_id = a.address_id;
    
-- 4
SELECT last_name, first_name, order_date, product_name, item_price, discount_amount, quantity
FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    JOIN products p
        ON oi.products_id = p.product_id
ORDER BY last_name AND order_date AND product_name;

-- 5
SELECT p1.product_name, p1.list_price
FROM products p1 JOIN products p2
    ON p1.product_id <> p2.product_id AND p1.list_price = p2.list_price
ORDER BY p1.product_name;

-- 6
SELECT category_name, product_id
FROM categories c
    LEFT JOIN products p
        on c.category_id = p.category_id
WHERE product_id IS null;

-- 7
    SELECT order_id, order_date, 'SHIPPED' AS ship_status
    FROM orders
    WHERE ship_date IS NOT null
UNION
    SELECT order_id, order_date, 'NOT SHIPPED' AS ship_status
    FROM orders
    WHERE ship_date IS nill
ORDER BY order_date;