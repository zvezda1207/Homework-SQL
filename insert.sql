insert into artists(name) values('Electro Waves'), ('Starlight Symphony'), ('Midnight Riders'), ('Neon Dreams');

update artists set name = 'Electro' where name = 'Electro Waves';

insert into genres(name) values('Electronic'), ('Rock'), ('Classical'), ('Synthwave');

insert into artist_genre(artist_id, genre_id) 
values(1, 1), (1, 4), (2, 3), (3, 2), (4, 1), (4, 4);

insert into albums(title, release_year) 
values('Digital Horizon', 2022), ('Eternal Echoes', 2021), ('Lost Highways', 2023), ('Neon Nights', 2020); 

insert into artist_album(artist_id, album_id) 
values(1, 1), (2, 2), (3, 3), (4, 4);

insert into tracks(title, duration, album_id) values
('Electric Sunrise', 225, 1),
('Binary Stars', 252, 1), 
('My Digital World', 195, 1),
('Moonlight Sonata', 390, 2),
('Starlight Overture', 290, 2),
('Мой ангел', 240, 2),
('Desert Run', 195, 3),
('Midnight Rider', 280, 3),
('My Broken Chains', 310, 3),
('Neon Pulse', 235, 4), 
('City Lights', 265, 4),
('Retro Drive', 365, 4);

insert into collections(title, release_year) values
('Best of Electronic 2023', 2023),
('Rock Anthems Vol. 5', 2022),
('Classical Remixed', 2021),
('Synthwave Vibes', 2020); 

insert into collection_track(collection_id, track_id) 
values (1, 1), (1, 2), (2, 7), (2, 8), (2, 9), (3, 4), (3, 5), (4, 10), (4, 11); 

