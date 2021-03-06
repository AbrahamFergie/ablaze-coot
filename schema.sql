DROP TABLE IF EXISTS books;

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  description VARCHAR NOT NULL,
  image_url VARCHAR NOT NULL,
  title VARCHAR NOT NULL
);

DROP TABLE IF EXISTS book_authors;

CREATE TABLE book_authors (
  book_id INTEGER NOT NULL,
  author_id INTEGER NOT NULL
);

DROP TABLE IF EXISTS book_genres;

CREATE TABLE book_genres (
  book_id INTEGER NOT NULL,
  genre_id INTEGER NOT NULL
);

DROP TABLE IF EXISTS genres;

CREATE TABLE genres (
  id SERIAL,
  name VARCHAR NOT NULL UNIQUE
);

DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
  id SERIAL,
  name VARCHAR NOT NULL
);
ALTER TABLE book_genres ADD FOREIGN KEY (book_id) REFERENCES books.id;
ALTER TABLE book_authors ADD FOREIGN KEY (book_id) REFERENCES books.id;
ALTER TABLE book_genres ADD FOREIGN KEY (genre_id) REFERENCES genres.id;
ALTER TABLE book_authors ADD FOREIGN KEY (author_id) REFERENCES authors.id;
