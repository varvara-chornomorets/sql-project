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