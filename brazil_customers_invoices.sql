SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Invoice LEFT JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
WHERE Customer.Country = 'Brazil'
ORDER BY Invoice.InvoiceId desc;