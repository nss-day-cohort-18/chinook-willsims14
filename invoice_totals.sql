SELECT ('$'||i.Total) as 'Invoice Total', (c.FirstName||' '||c.LastName) as 'Customer', c.Country, (e.FirstName||' '||e.LastName) as 'Sales Agent'
FROM Customer c, Employee e, Invoice i
WHERE e.EmployeeId = c.SupportRepId
AND i.CustomerId = c.CustomerId
ORDER BY c.FirstName ASC, c.LastName ASC;