SELECT il.InvoiceLineId as 'Invoice ID', t.Name as 'Track Name', ar.Name as Artist
FROM Track t, Artist ar, Album al, InvoiceLine il
WHERE t.TrackId = il.TrackId
AND t.AlbumId = al.AlbumId
AND al.ArtistId = ar.ArtistId
ORDER BY ar.ArtistId;