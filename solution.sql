SELECT 
    c.ClassID,
    c.ClassName,
    c.Instructor,
    c.ScheduleDateTime,
    m.MemberID,
    m.FirstName,
    m.LastName
FROM Classes c
LEFT JOIN ClassRegistrations cr ON c.ClassID = cr.ClassID
LEFT JOIN Members m ON cr.MemberID = m.MemberID
WHERE c.ClassName = 'Zumba'
ORDER BY m.MemberID;

SELECT 
    DATE_FORMAT(PaymentDate, '%Y/%m') AS Month,
    SUM(Amount) AS TotalRevenue
FROM Payments
GROUP BY DATE_FORMAT(PaymentDate, '%Y/%m')
ORDER BY Month;

SELECT 
    DATE_FORMAT(p.PaymentDate, '%Y/%m') AS Month,
    mp.PlanName,
    SUM(p.Amount) AS TotalRevenue
FROM Payments p
JOIN Members m ON p.MemberID = m.MemberID
JOIN MembershipPlans mp ON m.MembershipPlanID = mp.MembershipPlanID
WHERE DATE_FORMAT(p.PaymentDate, '%Y/%m') = '2026/04'
GROUP BY DATE_FORMAT(p.PaymentDate, '%Y/%m'), mp.PlanName
ORDER BY TotalRevenue DESC;
