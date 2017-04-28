SELECT il.InvoiceId, COUNT(il.InvoiceId) as 'Num Line Items'
FROM InvoiceLine il
GROUP BY il.InvoiceId;
