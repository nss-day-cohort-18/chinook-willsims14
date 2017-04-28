SELECT SUM(i.Total) as TotalSales
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31';