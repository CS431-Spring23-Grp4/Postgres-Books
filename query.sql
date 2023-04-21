-- Set future types to affect nguyenm schema by default 
SET search_path TO group4, public;

-- Give the First and Last name of the authors of books that are part of a series
select distinct a.first_name, a.last_name from author a, book b, book_author ba where b.series_id > 1 and b.isbn = ba.isbn and ba.author_id = a.author_id;

-- List the Name of Publishers of Books which are in the Technology genre
select p.name 
from publisher p
inner join book b on b.publisher_id = p.publisher_id 
inner join book_genre bg on bg.isbn = b.isbn 
inner join genre g on g.genre_id = bg.genre_id 
where g."name" = 'Technology';

--  List the First Name and Last Name of Authors of Political Satire Books
select a.first_name, a.last_name 
from author a 
inner join book_author ba on ba.author_id = a.author_id 
inner join book_genre bg on bg.isbn = ba.isbn 
inner join genre g on g.genre_id = bg.genre_id 
where g."name" = 'Political Satire';

-- List the Title of Books with more than 200 Pages that are in the Fantasy genre
select b.title 
from book b 
inner join book_genre bg on bg.isbn = b.isbn 
inner join genre g on g.genre_id = bg.genre_id 
where b.num_of_pages > 200 and g."name" = 'Fantasy';