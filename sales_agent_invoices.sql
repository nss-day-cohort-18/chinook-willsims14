SELECT  e.FirstName, e.LastName, i.InvoiceId
FROM Employee e, Invoice i, Customer c
WHERE c.SupportRepId = e.EmployeeId
AND c.CustomerId = i.CustomerId
ORDER BY e.EmployeeId;