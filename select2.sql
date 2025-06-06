select g.name as genre_name, count(ag.artist_id) as arists_count from genres g 
left join artist_genre ag on g.genre_id = ag.genre_id group by g.name order by arists_count desc;

select count(t.track_id) as track_count from tracks t join albums a on t.album_id = a.album_id 
where a.release_year between 2019 and 2020;

select a.title, avg(t.duration) from tracks t join albums a on t.album_id = a.album_id group by a.album_id, a.title;   

select distinct ar.name
from artists ar 
where ar.artist_id not in 
(select aa.artist_id from artist_album aa      
join albums al on aa.album_id = al.album_id where al.release_year = 2020);

select distinct c.title as collection_title 
from collections c 
join collection_track ct on c.collection_id = ct.collection_id
join tracks t on ct.track_id = t.track_id
join albums al on t.album_id = al.album_id
join artist_album aa on al.album_id = aa.album_id
join artists a on aa.artist_id = a.artist_id
where a.name = 'Electro';





 