SELECT DATE_FORMAT(PaymentDate, '%Y/%m') AS Month,
       SUM(Amount) AS TotalRevenue
FROM Payments
GROUP BY DATE_FORMAT(PaymentDate, '%Y/%m')
ORDER BY Month;
