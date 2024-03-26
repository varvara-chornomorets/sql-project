use schema_salon;

# SELECT
# = with non-correlated subqueries result
# Select employee with the biggest salary
SELECT *
FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);

# IN with non-correlated subqueries result
# Select all appointments with service price > 2000
SELECT *
FROM appointment
WHERE service_id IN (
    SELECT id
    FROM service
    WHERE price > 2000
);

# NOT IN with non-correlated subqueries result
# Select all appointments with service price <= 2000
SELECT *
FROM appointment
WHERE service_id NOT IN (
    SELECT id
    FROM service
    WHERE price > 2000
);

# EXISTS with non-correlated subqueries result
# Select all info about all services if there exists employee with salary > 25000
SELECT *
FROM service
WHERE EXISTS (
              SELECT *
              FROM employee
              WHERE salary > 25000
          );

# NOT EXISTS with non-correlated subqueries result
# Select all info about all products if there does not exist payment with amount 720
SELECT *
FROM product
WHERE NOT EXISTS (
        SELECT *
        FROM payment
        WHERE amount = 720
    );


# = with correlated subqueries result
# Customers who made exactly 2 appointments
SELECT *
FROM customer c
WHERE 2 = (
    SELECT COUNT(*)
    FROM appointment a
    WHERE a.customer_id = c.id
);

# IN with correlated subqueries result
# Select services which were cancelled
SELECT *
FROM service s
WHERE s.id IN (
    SELECT a.service_id
    FROM appointment a
    WHERE a.service_id = s.id
      AND a.status = 'cancelled'
);

# NOT IN with correlated subqueries result
# Select all customers that did not make payment for more than 1000 hryvnas
SELECT *
FROM customer c
WHERE c.id NOT IN (
    SELECT p.customer_id
    FROM payment p
    WHERE p.customer_id = c.id
      AND p.amount > 1000
);


# EXISTS with correlated subqueries result
# select all employees who have at least 1 appointment this month
SELECT *
FROM employee e
WHERE EXISTS(
              SELECT 1
              FROM appointment a
              WHERE a.employee_id = e.id
                AND MONTH(a.date_time) = MONTH(CURRENT_DATE)
          );


# NOT EXISTS with correlated subqueries result
# select all products that are not connected with any services
SELECT *
FROM product p
WHERE NOT EXISTS(
        SELECT 1
        FROM services2products s2p
        WHERE p.id = s2p.product_id
    );





-- UPDATE
-- = with non-correlated subqueries result
-- raise salary by 10% for the person with the lowest salary
UPDATE employee e
SET e.salary = 1.1 * e.salary
WHERE e.salary = (
    SELECT MIN(e2.salary) FROM employee e2
);

-- IN with non-correlated subqueries result
-- for all past appointments that were arranged, change status to done
UPDATE appointment a
SET a.status = 'done'
WHERE a.id IN (
    SELECT a2.id
    FROM appointment a2
    WHERE a2.status = 'arranged'
      AND DATE(a2.date_time) < CURRENT_DATE
);

-- NOT IN with non-correlated subqueries result
-- set appointment status to done if appointment is in the past and does not have status 'done' or 'cancelled'
UPDATE appointment a
SET a.status = 'done'
WHERE a.id NOT IN (
    SELECT a2.id
    FROM appointment a2
    WHERE (a2.status = 'done' OR a2.status = 'cancelled')
      AND DATE(a2.date_time) < CURRENT_DATE
);

-- EXISTS with non-correlated subqueries result
-- raise salaries 10 times if there is a very big payment
UPDATE employee e
SET e.salary = 10*e.salary
WHERE EXISTS(
              SELECT 1 FROM payment WHERE payment.amount > 9000000000000000000000
          );

-- NOT EXISTS with non-correlated subqueries result
-- raise salaries by 1% if there is no very big payment
UPDATE employee e
SET e.salary = 1.01*e.salary
WHERE NOT EXISTS(
        SELECT 1 FROM payment WHERE payment.amount > 9000000000000000000000
    );

-- = with correlated subqueries result
-- substract numbers of products that were used in "done" appointments
UPDATE product p
SET p.quantity = p.quantity - (
    SELECT COUNT(*)
    FROM appointment a
             INNER JOIN service s ON a.service_id = s.id
             INNER JOIN services2products s2p ON s2p.service_id = s.id
    WHERE s2p.product_id = p.id AND a.status = 'done'
);

-- IN with correlated subqueries result
-- raise price by 5% for services that have 3+ appointments
UPDATE service s
SET s.price = 1.05 * s.price
WHERE s.id IN (
    SELECT a.service_id
    FROM appointment a
    WHERE a.service_id = s.id
    GROUP BY a.service_id
    HAVING COUNT(a.id) > 3
);

-- NOT IN with correlated subqueries result
-- drop price by 5% for services that do not have 2 or more appointments
UPDATE service s
SET s.price = 0.95 * s.price
WHERE s.id NOT IN (
    SELECT a.service_id
    FROM appointment a
    WHERE a.service_id = s.id
    GROUP BY a.service_id
    HAVING COUNT(a.id) > 1
);

-- EXISTS with correlated subqueries result
-- add 'kyiv' to adress of customers who have had at lest 1 appointment in the last month
UPDATE customer c
SET c.address = CONCAT(c.address, ', Kyiv')
WHERE EXISTS(
              SELECT 1 FROM appointment a
              WHERE c.id = a.customer_id
                AND DATE(a.date_time) > DATE(CURRENT_DATE) - INTERVAL 30 DAY
          );

-- NOT EXISTS with correlated subqueries result
-- take away salary from employee who do not have any appointments for the last 3 month
UPDATE employee e
SET e.salary = 0
WHERE NOT EXISTS(
        SELECT 1
        FROM appointment a
        WHERE
                a.employee_id = e.id
          AND DATE(a.date_time) > DATE(CURRENT_DATE) - INTERVAL 90 DAY
    );