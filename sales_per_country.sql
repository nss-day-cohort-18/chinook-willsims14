SELECT i.BillingCountry, SUM(i.Total) as 'Total Sales'
FROM Invoice i
GROUP BY i.BillingCountry;