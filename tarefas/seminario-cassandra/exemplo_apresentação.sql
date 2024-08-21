
#Criação de tabela:

CREATE TABLE IF NOT EXISTS default_keyspace.movies (
    id UUID PRIMARY KEY,
    cast SET<TEXT>,
    country TEXT,
    director TEXT,
    duration INT,
    genre SET<TEXT>,
    language TEXT,
    rating FLOAT,
    release_date DATE,
    title TEXT
);

#Inserts de filmes 

INSERT INTO default_keyspace.movies (id, cast, country, director, duration, genre, language, rating, release_date, title)
VALUES (uuid(), {'Jared Leto', 'Matt Smith', 'Adria Arjona'}, 'USA', 'Daniel Espinosa', 104, {'Action', 'Adventure', 'Horror'}, 'English', 5.2, '2022-04-01', 'Morbius');

INSERT INTO default_keyspace.movies (id, cast, country, director, duration, genre, language, rating, release_date, title)
VALUES (uuid(), {'Tim Robbins', 'Morgan Freeman'}, 'USA', 'Frank Darabont', 142, {'Drama'}, 'English', 9.3, '1994-09-22', 'The Shawshank Redemption');

INSERT INTO default_keyspace.movies (id, cast, country, director, duration, genre, language, rating, release_date, title)
VALUES (uuid(), {'Marlon Brando', 'Al Pacino'}, 'USA', 'Francis Ford Coppola', 175, {'Crime', 'Drama'}, 'English', 9.2, '1972-03-24', 'The Godfather');

INSERT INTO default_keyspace.movies (id, cast, country, director, duration, genre, language, rating, release_date, title)
VALUES (uuid(), {'Christian Bale', 'Heath Ledger'}, 'USA', 'Christopher Nolan', 152, {'Action', 'Crime', 'Drama'}, 'English', 9.0, '2008-07-18', 'The Dark Knight');

INSERT INTO default_keyspace.movies (id, cast, country, director, duration, genre, language, rating, release_date, title)
VALUES (uuid(), {'Tom Hanks', 'Robin Wright'}, 'USA', 'Robert Zemeckis', 142, {'Drama', 'Romance'}, 'English', 8.8, '1994-07-06', 'Forrest Gump');

INSERT INTO default_keyspace.movies (id, cast, country, director, duration, genre, language, rating, release_date, title)
VALUES (uuid(), {'Leonardo DiCaprio', 'Joseph Gordon-Levitt'}, 'USA', 'Christopher Nolan', 148, {'Action', 'Adventure', 'Sci-Fi'}, 'English', 8.8, '2010-07-16', 'Inception');

INSERT INTO default_keyspace.movies (id, cast, country, director, duration, genre, language, rating, release_date, title)
VALUES (uuid(), {'Uma Thurman', 'David Carradine'}, 'USA', 'Quentin Tarantino', 111, {'Action', 'Crime', 'Thriller'}, 'English', 8.1, '2003-10-10', 'Kill Bill: Vol. 1');


select * from default_keyspace.movies;

SELECT title, director FROM default_keyspace.movies WHERE director = 'Christopher Nolan' ALLOW FILTERING;