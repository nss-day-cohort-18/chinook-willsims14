SELECT i.BillingCountry as Country, COUNT(i.InvoiceId) as 'Number of Invoices'
FROM Invoice i
GROUP BY i.BillingCountry;