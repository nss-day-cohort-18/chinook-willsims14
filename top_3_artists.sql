SELECT 		a.Name as Artist, COUNT(il.TrackId) as TrackCount
FROM 		Artist a INNER JOIN Album al ON a.ArtistId = al.ArtistId
INNER JOIN 	Track t
ON 			t.AlbumId = al.AlbumId
INNER JOIN 	InvoiceLine il
ON 			il.TrackId = t.TrackId
INNER JOIN 	Invoice i
ON 			i.InvoiceId = il.InvoiceId
GROUP BY 	a.ArtistId
ORDER BY	TrackCount desc
limit 3;