SELECT  id,
		value,
		client_id,
		client_name,
		payment_date,
		manager_name,
		manager_email,
		IF(ROW_NUMBER() OVER(PARTITION BY client_id ORDER BY payment_date, id) = 1, 'Новый', 'Действующий') client_state
FROM payments