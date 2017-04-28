SELECT p.Name as 'Playlist Name', COUNT(pt.TrackId) as 'Number of Songs'
FROM Playlist p, PlaylistTrack pt
WHERE p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId;