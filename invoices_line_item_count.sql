SELECT i.InvoiceId, COUNT(il.InvoiceLineId) as 'Number of Line Items'
FROM Invoice i LEFT JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;