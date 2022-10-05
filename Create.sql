CREATE TABLE IF NOT EXISTS singer (
id serial PRIMARY KEY,
name varchar(60) NOT NULL 
);

CREATE TABLE IF NOT EXISTS genre (
id serial PRIMARY KEY,
title varchar(60) NOT NULL);

CREATE TABLE IF NOT EXISTS SingerGenger (
singer_id integer NOT NULL REFERENCES singer(id),
genre_id integer NOT NULL REFERENCES genre(id),
CONSTRAINT pk PRIMARY KEY (singer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Album (
id serial PRIMARY KEY,
name varchar(80) not null,
year integer);

CREATE TABLE IF NOT EXISTS SingerAlbum (
singer_id integer NOT NULL REFERENCES singer(id),
album_id integer NOT NULL REFERENCES Album(id),
CONSTRAINT py PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS track (
id serial PRIMARY KEY,
name varchar(80) NOT NULL,
time integer NOT NULL, 
id_album integer NOT NULL REFERENCES Album(id));

CREATE TABLE IF NOT EXISTS collection(
id serial PRIMARY KEY,
name varchar(60) NOT NULL,
year integer NOT NULL
CHECK (year BETWEEN 0000 AND 9999));

CREATE TABLE IF NOT EXISTS CollectionGroup(
track_id integer REFERENCES track(id),
collection_id integer REFERENCES collection(id),
CONSTRAINT pc PRIMARY KEY (track_id, collection_id));


