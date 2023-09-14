CREATE TABLE genre (
	genre_id INTEGER PRIMARY KEY,
	title VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE performer (
	performer_id INTEGER PRIMARY KEY,
	_name VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE album (
	album_id INTEGER PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	year_of_release DATE
);

CREATE TABLE track (
	track_id INTEGER PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	duration TIME CHECK (duration > '00:00:00'),
	album_id INTEGER REFERENCES album(album_id)
);

CREATE TABLE collection (
	collection_id INTEGER PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	year_of_release DATE
);

CREATE TABLE ganre_performer (
	ganre_performer_id INTEGER PRIMARY KEY,
	genre_id INTEGER REFERENCES genre(genre_id),
	performer_id INTEGER REFERENCES performer(performer_id)
);

CREATE TABLE performer_album (
	performer_album_id INTEGER PRIMARY KEY,
	performer_id INTEGER REFERENCES performer(performer_id),
	album_id INTEGER REFERENCES album(album_id)
);

CREATE TABLE track_collection (
	track_collection_id INTEGER PRIMARY KEY,
	track_id INTEGER REFERENCES track(track_id),
	collection_id INTEGER REFERENCES collection(collection_id)
);