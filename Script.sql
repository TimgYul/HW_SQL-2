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
name varchar(80) not null);

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

INSERT INTO 
	Album(name) 
VALUES 
	('Сборник 1980'),
	('Сборник 1990'),
	('Сборник 2000'),
	('Сборник 2005'),
	('Сборник 2010'),
	('Сборник 2015'),
	('Сборник 2020'),
    ('Сборник 2022') ;

INSERT INTO 
	singer(name) 
VALUES 
	('Ани Лорак'),
	('Валерий Меладзе'),
	('Shakira'),
	('София Ротару'),
	('Юлия Чичерина'),
	('Олег Газманов'),
	('Алла Пугачева'),
    ('Юлиана Караулова') ;

INSERT INTO 
	genre(title) 
VALUES 
	('Поп-музыка'),
	('Рок-музыка'),
	('Диско'),
	('Джаз'),
	('Опера');

INSERT INTO 
	singergenger(singer_id, genre_id) 
VALUES 
	( 1, 1 ),
	( 2, 1 ),
	( 3, 3 ),
	( 4, 1 ),
	( 5, 2 ),
	( 6, 1 ),
	( 7, 1 ),
    ( 8, 3 ) ;
   
INSERT INTO 
	SingerAlbum(singer_id,album_id) 
VALUES 
	( 1, 6 ),
	( 2, 4 ),
	( 3, 5 ),
	( 4, 3 ),
	( 5, 4 ),
	( 6, 8 ),
	( 7, 2 ),
    ( 8, 4 ) ;
   

   INSERT INTO 
	track(name, time, id_album) 
   VALUES 
	( 'Миллионы алых роз', 180 , 2 ),
	( 'Жара', 150 , 4 ),
	( 'Хуторянка', 190 , 3 ),
	( 'Материк', 180 , 6 ),
	( 'Юпитер', 180 , 3 ),
	( 'Waca Waca', 200 , 5 ),
    ( 'Красиво', 205 , 4 ),
  	( 'Небеса', 205 , 4 ),
    ( 'Доченька', 150 , 2 ),
    ( 'Градусы', 200 , 3 ),
    ( 'Белый снег', 205 , 8 ),
    ( 'Whenever Wherever', 210 , 5 ); 
   
   INSERT INTO 
	collection(name, year) 
	VALUES 
		('Дискотека 80-90', 1990),
		('Дискотека 00', 2000),
		('Дискотека 21 век', 2010),
		('Современные', 2022),
	    ('Ностальгия', 2020),
	    ('Суперновинки', 2005),
	    ('Настоящий русский', 1999);
	   
	INSERT INTO 
	   collectiongroup(track_id, collection_id) 
	VALUES 
		(2, 1),
		(2, 7),
		(3, 2),
		(3, 7),
	    (4, 1),
	    (4, 7),
	    (5, 4),
	    (5, 7),
	    (6, 3),
	    (7, 2),
	    (7, 7),
	    (8, 6),
	    (8, 7),
	    (9, 7),
	    (9, 5),
	    (10, 5),
	    (11, 5),
	    (12, 2);
