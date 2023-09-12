create table genre (
	genre_id integer primary key,
	title varchar(60) not null unique
);

create table performer (
	performer_id integer primary key,
	_name varchar(60) not null unique
);

create table album (
	album_id integer primary key,
	title varchar(60) not null,
	year_of_release date
);

create table track (
	track_id integer primary key,
	title varchar(60) not null,
	duration time check (duration > '00:00:00'),
	album_id integer references album(album_id)
);

create table collection (
	collection_id integer primary key,
	title varchar(60) not null,
	year_of_release date
);

create table ganre_performer (
	ganre_performer_id integer primary key,
	genre_id integer references genre(genre_id),
	performer_id integer references performer(performer_id)
);

create table performer_album (
	performer_album_id integer primary key,
	performer_id integer references performer(performer_id),
	album_id integer references album(album_id)
);

create table track_collection (
	track_collection_id integer primary key,
	track_id integer references track(track_id),
	collection_id integer references collection(collection_id)
);