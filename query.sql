-- Set future types to affect group4 schema by default 
SET search_path TO group4, public;

--1.) Give the First and Last name of the authors of books that are part of a series
select distinct a.first_name, a.last_name 
from author a, book b, book_author ba 
where b.series_id > 1 and b.isbn = ba.isbn and ba.author_id = a.author_id;

--5.) List the Name of Publishers of Books which are in the Technology genre
select distinct p.name 
from publisher p, book b, book_genre bg, genre g 
where p.publisher_id = b.publisher_id and b.isbn = bg.isbn and bg.genre_id = g.genre_id and g.name = 'Technology';

--6.) List the First Name and Last Name of Authors of Political Satire Books
select distinct a.first_name, a.last_name 
from author a, book_author ba, book_genre bg, genre g 
where a.author_id = ba.author_id and ba.isbn = bg.isbn and bg.genre_id = g.genre_id and g.name = 'Political Satire';

--7.) List the Title of Books with more than 200 Pages that are in the Fantasy genre
select distinct b.title 
from book b, book_genre bg, genre g 
where b.isbn = bg.isbn and bg.genre_id = g.genre_id and b.num_of_pages > 200 and g.name = 'Fantasy';
