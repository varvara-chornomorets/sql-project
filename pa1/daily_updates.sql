USE schema_salon;

# past appointments are either done or cancelled
UPDATE appointment a
SET a.status = 'done'
WHERE a.status = 'arranged' AND DATE(a.date_time) < CURRENT_DATE;

# past appointments payments are set to cash if no info
UPDATE payment p
SET p.payment_method = 'salon cash'
WHERE p.payment_method = 'NA' AND DATE(p.date_time) < CURRENT_DATE;