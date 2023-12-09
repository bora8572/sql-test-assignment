SELECT department, SUM(value) sum
FROM payments
JOIN (
	 SELECT replaceRegexpOne(email, '^(.)\.(.*)', '\\1\\2') email,
			COALESCE(replaceRegexpAll(department, '(.*)\ {2,}(.*)', '\\1\ \\2'), 'Отдел не определен') department
			FROM manager_departments
	 ) t1
	 ON t1.email = payments.manager_email
GROUP BY department