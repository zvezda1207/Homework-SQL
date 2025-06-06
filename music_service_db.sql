create table Artists (
artist_id SERIAL primary key,
name VARCHAR(100) not null
);

create table Genres (
genre_id SERIAL primary key,
name VARCHAR(50) not null unique
);

create table Tracks (
track_id SERIAL primary key,
title VARCHAR(100) not null,
duration INTEGER not null CHECK (duration > 0),
album_id INTERGER not null references Albums(album_id)
);

create table Albums (
album_id SERIAL primary key,
title VARCHAR(100) not null,
release_year INTEGER CHECK (release_year >= 1900)
);

create table Collections (
collection_id SERIAL primary key,
title VARCHAR(100) not null,
release_year INTEGER CHECK (release_year >= 1900)
);

create table Artist_Genre (
artist_id INTEGER references Artist(artis_id) ON DELETE CASCADE,
genre_id INTEGER references Genres(genre_id) ON DELETE CASCADE,
primary key (artist_id, genre_id)
);

create table Artist_Album (
artist_id INTEGER references Artist(artis_id) ON DELETE CASCADE,
album_id INTEGER references Album(album_id) ON DELETE CASCADE,
primary key (artist_id, album_id),
);

create table Collection_Track (
collection_id INTEGER references Collections(collection_id) ON DELETE CASCADE,
track_id INTEGER references Tracks(track_id) ON DELETE CASCADE,
primary key (collection_id, track_id),
);