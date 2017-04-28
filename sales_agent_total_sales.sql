SELECT (e.FirstName||' '||e.lastName) as EmployeeName, SUM(i.Total) as TotalSales
FROM Employee e, Invoice i, Customer c
WHERE e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId;