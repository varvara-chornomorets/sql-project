use schema_salon;


CREATE VIEW employee_schedule(
    employee_name,
    employee_services,
    time_range,
    service_kind
    )
AS
    SELECT e.name AS employee_name, GROUP_CONCAT(s.name) AS services, CONCAT(TIME(a.date_time),'-', TIME(DATE_ADD(a.date_time, INTERVAL s2.duration MINUTE))) AS time_range,
    s2.name AS service_name
    FROM appointment a
    INNER JOIN employee e ON a.employee_id = e.id
    INNER JOIN employee2service e2s ON e.id = e2s.employee_id
    INNER JOIN service s ON s.id = e2s.service_id
    INNER JOIN service s2 ON a.service_id = s2.id
    WHERE DATE(a.date_time) = CURRENT_DATE
    GROUP BY a.id
    ORDER BY e.position DESC, e.id;

SELECT * FROM employee_schedule;
