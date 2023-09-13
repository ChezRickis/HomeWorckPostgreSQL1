-- Задание 2

select max(title), max(duration)
from track;

select title
from track
where duration >= '00:03:30';

select title
from collection
where year_of_release  between '2018.01.01' and '2020.01.01';

select _name 
from performer
where _name not like '% %';

select title 
from track
where title ilike '%мой%' or title ilike '%my%';

-- Задание 3

select title, count(performer_id)
from genre g
left join ganre_performer gp  on g.genre_id = gp.genre_id
group by title;

select count(track_id)
from album a
left join track t on a.album_id = t.album_id
where a.year_of_release between '2019.01.01' and '2020.01.01';

select a.title, avg(duration)
from album a
left join track t on a.album_id = t.album_id
group by a.title;

select _name
from performer p 
left join performer_album pa on p.performer_id = pa.performer_id
left join album a on pa.album_id = a.album_id
where a.year_of_release not between '2020-01-01' and '2021-01-01'
group by _name;

select c.title
from collection c
left join track_collection tc on c.collection_id = tc.collection_id
left join track t on tc.track_id = t.track_id
left join performer_album pa on t.album_id = pa.album_id
left join performer p on pa.performer_id = p.performer_id
where p."_name" = 'Лиза'
group by c.title;