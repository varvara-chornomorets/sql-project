USE schema_salon;

# how much money was spent on materials last month (30 days) by categories
SELECT p.name, p.id, p.cost,
       SUM(IF(((a.status = 'done' or 'arranged') AND DATE(a.date_time) >= CURRENT_DATE - 30), p.cost, 0))             AS total_cost,
       COUNT(CASE WHEN ((a.status = 'done' or 'arranged') AND DATE(a.date_time) >= CURRENT_DATE - 30) THEN p.id END) AS total_count
FROM appointment a
         INNER JOIN service s ON a.service_id = s.id
         INNER JOIN services2products s2p ON s.id = s2p.service_id
         INNER JOIN product p ON s2p.product_id = p.id
GROUP BY p.id
ORDER BY total_cost DESC;

# how much money was spent on materials last month (30 days) in total
SELECT SUM(IF(((a.status != 'done') AND DATE(a.date_time) >= CURRENT_DATE - INTERVAL 30 DAY), p.cost, 0)) AS total_cost
FROM appointment a
         INNER JOIN service s ON a.service_id = s.id
         INNER JOIN services2products s2p ON s.id = s2p.service_id
         INNER JOIN product p ON s2p.product_id = p.id;
;