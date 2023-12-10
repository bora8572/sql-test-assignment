SELECT CASE 
	   WHEN toMonth(payment_date) = 1 THEN CONCAT('Январь ', toYear(payment_date))
	   WHEN toMonth(payment_date) = 2 THEN CONCAT('Февраль ', toYear(payment_date))
	   WHEN toMonth(payment_date) = 3 THEN CONCAT('Март ', toYear(payment_date))
	   WHEN toMonth(payment_date) = 4 THEN CONCAT('Апрель ', toYear(payment_date))
	   WHEN toMonth(payment_date) = 5 THEN CONCAT('Май ', toYear(payment_date))
	   WHEN toMonth(payment_date) = 6 THEN CONCAT('Июнь ', toYear(payment_date))
	   WHEN toMonth(payment_date) = 7 THEN CONCAT('Июль ', toYear(payment_date))
	   WHEN toMonth(payment_date) = 8 THEN CONCAT('Август ', toYear(payment_date))
	   WHEN toMonth(payment_date) = 9 THEN CONCAT('Сентябрь ', toYear(payment_date))
	   WHEN toMonth(payment_date) = 10 THEN CONCAT('Октябрь ', toYear(payment_date))
	   WHEN toMonth(payment_date) = 11 THEN CONCAT('Ноябрь ', toYear(payment_date))
	   ELSE CONCAT('Декабрь ', toYear(payment_date))
	   END period,
       SUM(value) revenue_by_month,
       SUM(SUM(value)) OVER(ORDER BY MIN(id)) revenue_cumulative
FROM payments
GROUP BY period
