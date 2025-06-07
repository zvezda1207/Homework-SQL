DROP TABLE IF EXISTS collection_track;
DROP TABLE IF EXISTS artist_album;
DROP TABLE IF EXISTS artist_genre;
DROP TABLE IF EXISTS tracks;
DROP TABLE IF EXISTS collections;
DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS artists;

create table artists (
artist_id SERIAL primary key,
name VARCHAR(100) not null
);

create table genres (
genre_id SERIAL primary key,
name VARCHAR(50) not null unique
);

create table albums (
album_id SERIAL primary key,
title VARCHAR(100) not null,
release_year INTEGER CHECK (release_year >= 1900)
);

create table tracks (
track_id SERIAL primary key,
title VARCHAR(100) not null,
duration INTEGER not null CHECK (duration > 0),
album_id INTEGER not null references albums(album_id)
);

create table collections (
collection_id SERIAL primary key,
title VARCHAR(100) not null,
release_year INTEGER CHECK (release_year >= 1900)
);

create table artist_genre (
artist_id INTEGER references artists(artist_id) ON DELETE CASCADE,
genre_id INTEGER references genres(genre_id) ON DELETE CASCADE,
primary key (artist_id, genre_id)
);

create table artist_album (
artist_id INTEGER references artists(artist_id) ON DELETE CASCADE,
album_id INTEGER references albums(album_id) ON DELETE CASCADE,
primary key (artist_id, album_id)
);

create table collection_track (
collection_id INTEGER references collections(collection_id) ON DELETE CASCADE,
track_id INTEGER references tracks(track_id) ON DELETE CASCADE,
primary key (collection_id, track_id)
);