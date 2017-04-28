SELECT il.InvoiceLineId, t.Name
FROM InvoiceLine il, Track t
WHERE t.TrackId = il.TrackId
GROUP BY il.InvoiceLineId;