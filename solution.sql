-- Write your SQL query below:
SELECT 
    c.ClassID,
    c.ClassName,
    c.Instructor,
    c.ScheduleDateTime,
    m.MemberID,
    m.FirstName,
    m.LastName
FROM classes c
LEFT JOIN classregistrations cr ON c.ClassID = cr.ClassID
LEFT JOIN members m ON cr.MemberID = m.MemberID
WHERE c.ClassName = 'Zumba'
ORDER BY c.ClassID;

SELECT 
    DATE_FORMAT(PaymentDate, '%Y/%m') AS Month,
    SUM(Amount) AS total_revenue
FROM Payments
GROUP BY DATE_FORMAT(PaymentDate, '%Y/%m')
ORDER BY Month;

SELECT 
    DATE_FORMAT(p.PaymentDate, '%Y/%m') AS Month,
    mp.PlanName AS plan_name,
    SUM(p.Amount) AS total_revenue
FROM Payments p
JOIN Members m ON p.MemberID = m.MemberID
JOIN MembershipPlans mp ON m.MembershipPlanID = mp.MembershipPlanID
WHERE DATE_FORMAT(p.PaymentDate, '%Y/%m') = '2026/04'
GROUP BY DATE_FORMAT(p.PaymentDate, '%Y/%m'), mp.PlanName
ORDER BY Month, total_revenue DESC;
