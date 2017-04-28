SELECT (e.FirstName||' '||e.LastName) as SalesAgent, SUM(i.Total) as TotalSales
FROM Employee e, Invoice i, Customer c
WHERE e.EmployeeId = c.SupportRepId
AND i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
GROUP BY e.EmployeeId
HAVING TotalSales = (	SELECT SUM(i.Total) as TotalSales
						FROM Employee e, Invoice i, Customer c
						WHERE e.EmployeeId = c.SupportRepId
						AND i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
						GROUP BY e.EmployeeId
						ORDER BY TotalSales desc
						LIMIT 1);