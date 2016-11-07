var pgp = require('pg-promise')
var db = pgp({database:'coot'})

const getAllBooks =
`SELECT genres.id AS genre_id, authors.id AS author_id, books.id AS book_id, books.title, books.image_url, authors.name, genres.name
FROM books
JOIN book_genres ON book_genres.book_id = books.id
JOIN genres ON genres.id = book_genres.genre_id
JOIN book_authors ON book_authors.book_id=books.id
JOIN authors ON authors.id=book_authors.author_id
`
