SELECT SUM(i.Total) as TotalSales
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2011-01-01' AND '2011-12-31';