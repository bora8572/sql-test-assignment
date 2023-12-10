SELECT client_name,
       payment_date,
       value
FROM (
     SELECT client_name,
     payment_date,
     value,
     ROW_NUMBER() OVER(PARTITION BY client_id ORDER BY value DESC) value_rank
     FROM payments
     WHERE date_trunc('month', payment_date) = '2023-01-01'
     ) t1
WHERE value_rank = 1
