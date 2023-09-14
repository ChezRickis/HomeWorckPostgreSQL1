-- Задание 2

SELECT title, duration
FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

SELECT title
FROM track
WHERE duration >= '00:03:30';

SELECT title
FROM collection
WHERE year_of_release  BETWEEN '2018.01.01' AND '2020.12.31';

SELECT _name 
FROM performer
WHERE _name NOT LIKE '% %';

SELECT title 
FROM track
WHERE title ILIKE 'мой' OR title ILIKE 'my'
OR title ILIKE 'мой %' OR title ILIKE 'my %'
OR title ILIKE '% мой' OR title ILIKE '% my'
OR title ILIKE '% мой %' OR title ILIKE '% my %';

-- Задание 3

SELECT title, COUNT(performer_id)
FROM genre g
JOIN ganre_performer gp ON g.genre_id = gp.genre_id
GROUP BY title;

SELECT COUNT(track_id)
FROM album a
JOIN track t ON a.album_id = t.album_id
WHERE a.year_of_release BETWEEN '2019.01.01' AND '2020.12.31';

SELECT a.title, AVG(duration)
FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.title;

SELECT _name
FROM performer
WHERE _name NOT IN (
	SELECT _name
	FROM performer p
	JOIN performer_album pa ON pa.performer_id = p.performer_id
	JOIN album a ON a.album_id = pa.album_id
	WHERE a.year_of_release BETWEEN '2020.01.01' AND '2020.12.31'
);

SELECT c.title
FROM collection c
JOIN track_collection tc ON c.collection_id = tc.collection_id
JOIN track t ON tc.track_id = t.track_id
JOIN performer_album pa ON t.album_id = pa.album_id
JOIN performer p ON pa.performer_id = p.performer_id
WHERE p._name = 'Лиза'
GROUP BY c.title;