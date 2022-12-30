
drop table if exists singers_genres, singers_albums, singers, albums, genres, tracks;


CREATE table if NOT exists singers (
    singer_id SERIAL PRIMARY KEY,
    name varchar(100),
    age integer
);

CREATE table if NOT exists genres (
    genre_id SERIAL PRIMARY KEY,
    name varchar(100),
    description text
);

CREATE table if NOT exists albums (
    album_id SERIAL PRIMARY KEY,
    name varchar(100),
    year_div date
);

CREATE table if NOT exists tracks (
    track_id SERIAL PRIMARY KEY
    album_id INTEGER REFERENCES albums(album_id),
    name varchar(100),
    year_div date
);


CREATE table if NOT exists singers_genres (
    singer_id integer REFERENCES singers(singer_id),
    genre_id integer REFERENCES genres(genre_id),
    CONSTRAINT sg_pk PRIMARY KEY (singer_id, genre_id)
);

CREATE table if NOT exists singers_albums (
    singer_id integer REFERENCES singers(singer_id),
    album_id integer REFERENCES albums(album_id),
    CONSTRAINT sa_pk PRIMARY KEY (singer_id, album_id)
);




