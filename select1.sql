select title, duration from tracks where duration = (select max(duration) from tracks);

select title from tracks where duration >= 210;

select title from collections where release_year between 2018 and 2020;

select name from artists where name not like '% %';

select title from tracks where 
title ilike 'мой %' or title ilike 'my %'
or title ilike '% мой' or title ilike '% my'
or title ilike '% мой %' or title ilike '% my %'
or title ilike 'мой' or title ilike 'my';