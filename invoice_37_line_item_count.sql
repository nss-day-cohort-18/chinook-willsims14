SELECT COUNT(il.InvoiceId)
FROM InvoiceLine il
GROUP BY il.InvoiceId
HAVING il.InvoiceId = 37;