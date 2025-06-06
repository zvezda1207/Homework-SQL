--Названия альбомов, в которых присутствуют исполнители более чем одного жанра
select al.title from albums al 
join artist_album aa on al.album_id = aa.album_id
join artists a on aa.artist_id = a.artist_id
join artist_genre ag on a.artist_id = ag.artist_id
group by al.album_id, al.title
having count(distinct ag.genre_id) > 1;

--Наименования треков, которые не входят в сборники
select t.track_id, t.title
from tracks t 
where t.track_id not in (
select ct.track_id 
from collection_track ct);

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек
select distinct a.artist_id, a.name as artist_name
from artists a
join artist_album aa on a.artist_id = aa.artist_id
join albums al on aa.album_id = al.album_id
join tracks t on al.album_id = t.album_id 
where t.duration = (
select min(duration) from tracks
);





