SELECT g.title, count(*)
 FROM singergenger s 
 JOIN singer ON singer.id = s.singer_id 
 JOIN genre g ON g.id = s.genre_id
 GROUP BY g.title;

SELECT count(*) FROM track t 
JOIN album ON album.id = t.id_album 
WHERE album."year" BETWEEN  2019 AND 2021;
 
SELECT avg(time) FROM track;

SELECT s2.name 
FROM singeralbum s  
JOIN singer s2 ON s2.id = s.singer_id
JOIN album ON album.id = s.album_id 
WHERE album."year" <> 2020;

SELECT c2.name
FROM collectiongroup c
JOIN collection c2 ON c2.id = c.collection_id 
JOIN track t ON t.id = c.track_id 
JOIN singeralbum s ON s.album_id = t.id_album 
JOIN singer ON singer.id = s.singer_id 
WHERE singer."name" = 'Shakira';

SELECT singer.name, count(*) 
FROM singergenger s 
 JOIN singer ON singer.id = s.singer_id 
 JOIN genre g ON g.id = s.genre_id
 GROUP BY singer.name
 HAVING count(*) > 1;

SELECT DISTINCT t.name
FROM track t 
LEFT JOIN collectiongroup c ON c.track_id = t.id
WHERE  c.track_id  IS NULL;


SELECT singer.name, t.time 
FROM track t  
JOIN singeralbum s ON s.album_id = t.id_album 
JOIN singer ON singer.id = s.singer_id 
GROUP BY singer.name, t.time 
HAVING t.time = (SELECT min(time) FROM track)
ORDER BY singer.name;

SELECT DISTINCT a.name  
FROM track t  
JOIN album a ON a.id = t.id_album 
WHERE t.id_album IN (
    SELECT id_album
    FROM track
    GROUP BY id_album
    HAVING count(id) = (
        SELECT count(id)
        FROM track
        GROUP BY id_album
        ORDER BY count
        limit 1
    )
)
ORDER BY a.name











 
  
 
 