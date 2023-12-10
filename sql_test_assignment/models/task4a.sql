SELECT CONCAT(DATENAME('month', payment_date), ' ', DATENAME('year', payment_date)) period,
       SUM(value) revenue_by_month,
       SUM(SUM(value)) OVER(ORDER BY MIN(id)) revenue_cumulative
FROM payments
GROUP BY period
