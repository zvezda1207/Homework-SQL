--Названия альбомов, в которых присутствуют исполнители более чем одного жанра
select distinct al.title 
from albums al 
join artist_album aa on al.album_id = aa.album_id
join artist_genre ag on aa.artist_id = ag.artist_id
group by al.album_id, ag.artist_id
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

--Названия альбомов, содержащих наименьшее количество треков
select al.title
from albums al
join tracks t on al.album_id = t.album_id
group by al.album_id
having count(t.track_id) = (
select count(t1.track_id) from tracks t1
group by t1.album_id
order by 1
limit 1
);











