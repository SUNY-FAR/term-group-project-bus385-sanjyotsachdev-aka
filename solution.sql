SELECT 
    c.ClassID,
    c.ClassName,
    c.Instructor,
    DATE_FORMAT(c.ScheduleDateTime, '%Y-%m-%d %H:%i:%s'),
    m.MemberID,
    m.FirstName,
    m.LastName
FROM Classes c
LEFT JOIN ClassRegistrations cr ON c.ClassID = cr.ClassID
LEFT JOIN Members m ON cr.MemberID = m.MemberID
WHERE c.ClassName = 'Zumba'
ORDER BY m.MemberID;
