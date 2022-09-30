create table if not exists singer (
id serial primary key,
name varchar(60) not null 
);

create table if not exists genre (
id serial primary key,
title varchar(60) not null);

create table if not exists SingerGenger (
singer_id integer not null references singer(id),
genre_id integer not null references genre(id),
constraint pk primary key (singer_id, genre_id)
);

create table if not exists Album (
id serial primary key,
name varchar(80) not null);

create table if not exists SingerAlbum (
singer_id integer not null references singer(id),
album_id integer not null references Album(id),
constraint py primary key (singer_id, album_id)
);

create table if not exists track (
id serial primary key,
name varchar(80) not null,
time_track time without time zone, 
id_album integer not null references Album(id));

create table if not exists collection(
id serial primary key,
name varchar(60) not null,
year integer not null );

create table if not exists CollectionGroup(
track_id integer references track(id),
collection_id integer references collection(id),
constraint pc primary key (track_id, collection_id));
