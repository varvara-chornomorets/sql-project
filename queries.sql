use schema_salon;

SELECT s.id, s.name, p.name
FROM service s
         RIGHT JOIN services2products sp ON sp.service_id = s.id
         INNER JOIN product p ON p.id = sp.product_id
;

-- top 5 clients most profitable for the last month
SELECT c.name, c.phone, c.email, 
    SUM(CASE WHEN DATE(p.date_time) >= DATE_ADD(CURRENT_DATE, INTERVAL -30 DAY) THEN p.amount ELSE 0 END) AS total_amount_last_month
    FROM customer c
    LEFT JOIN payment p ON c.id = p.customer_id
    GROUP BY c.name, c.phone, c.email
    ORDER BY total_amount_last_month DESC
    LIMIT 5;



-- list of the coming up appointments
SELECT a.date_time, a.status, c.name AS customer_name, c.phone AS cutomer_phone, s.name AS service_name
    FROM appointment a
    INNER JOIN customer c ON customer_id = c.id
    INNER JOIN service s ON service_id = s.id
    WHERE a.status = 'arranged'
    ORDER BY a.date_time;

-- task: appointments for today
SELECT a.date_time, a.status, c.name AS customer_name, c.phone AS cutomer_phone, s.name AS service_name
    FROM appointment a
    INNER JOIN customer c ON customer_id = c.id
    INNER JOIN service s ON service_id = s.id
    WHERE DATE(a.date_time) = CURRENT_DATE AND a.status = 'arranged'
    ORDER BY a.date_time;


-- -- top 5 customers by money spent
SELECT c.name, c.phone, SUM(p.amount) AS total_amount
    FROM customer c
    -- customers who didnt spend any money are also represented
    LEFT JOIN payment p ON c.id = p.customer_id 
    GROUP BY c.name, c.phone
    ORDER BY total_amount DESC;

-- customers that didn't buy anything in the last month (30 days)
SELECT c.name, c.phone, SUM(CASE WHEN DATE(p.date_time) > DATE_ADD(CURRENT_DATE, INTERVAL -30 DAY) THEN p.amount ELSE 0 END) AS total_amount
    FROM customer c
    LEFT JOIN payment p ON c.id = p.customer_id
    GROUP BY c.name, c.phone
    HAVING total_amount=0;

-- task: phones in format +380...
SELECT CONCAT('+', phone) as phone, name, position, email
    FROM employee;

-- profitable services
SELECT s.name, s.price, SUM(p.amount) AS total_amount, COUNT(p.amount) AS total_count
    FROM service s
    INNER JOIN appointment a ON s.id = a.service_id
    INNER JOIN payment p ON a.id = p.appointment_id
    GROUP BY s.name, s.price
    ORDER BY total_amount DESC;


-- products that are in small quantities
SELECT name, quantity
    FROM product
    HAVING quantity < 150;

SELECT s.id, s.name, COUNT(a.service_id) AS bookings_count
    FROM service s
    INNER JOIN appointment a ON s.id = a.service_id
    GROUP BY s.id, s.name
    HAVING bookings_count > 2;