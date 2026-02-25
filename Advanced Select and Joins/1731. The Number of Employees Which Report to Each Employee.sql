SELECT e2.reports_to as employee_id,
    e1.name as name,
    COUNT(*) as reports_count,
    ROUND(AVG(e2.age)) as average_age
FROM employees e1
    JOIN employees e2 ON e1.employee_id = e2.reports_to
GROUP BY e2.reports_to,
    e1.name
ORDER BY employee_id;