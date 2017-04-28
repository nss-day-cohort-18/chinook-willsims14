SELECT (e.FirstName||' '||e.LastName) as Employee, COUNT(c.SupportRepId) as 'Number of Customers'
FROM Employee e, Customer c
WHERE e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId;

