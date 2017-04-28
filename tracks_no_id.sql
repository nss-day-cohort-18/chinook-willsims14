SELECT t.Name AS 'Song Name', al.Title AS 'Album Title', mt.Name as 'Media Type', g.Name as 'Genre'
FROM Track t, Album al, MediaType mt, Genre g
WHERE t.AlbumId = al.AlbumId
AND mt.MediaTypeId = t.MediaTypeId
AND g.GenreId = t.GenreId
ORDER BY al.AlbumId;