SELECT t.TrackId as TrackId, t.Name as TrackName, MyQuery.TrackCount
FROM Track t INNER JOIN InvoiceLine il ON t.TrackId = il.TrackId 
INNER JOIN 		(	SELECT COUNT(il.TrackId) as TrackCount
					FROM Track t INNER JOIN InvoiceLine il
					ON t.TrackId = il.TrackId
					GROUP BY il.TrackId
					ORDER BY TrackCount desc) as MyQuery
ON MyQuery.TrackCount = TrackCount
GROUP BY t.TrackId
HAVING TrackCount = MAX(MyQuery.TrackCount)
ORDER BY TrackCount desc;