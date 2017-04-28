SELECT  i.BillingCountry, MAX(SalesByCountry.TotalSales) as Sales
FROM Invoice i, (	SELECT i.BillingCountry as myCountry, SUM(i.Total) as TotalSales
					FROM Invoice i
					GROUP BY i.BillingCountry) as SalesByCountry
WHERE i.BillingCountry = SalesByCountry.myCountry;