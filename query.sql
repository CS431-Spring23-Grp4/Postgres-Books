-- Set future types to affect group4 schema by default 
SET search_path TO group4, public;

--1.) Give the First and Last name of the authors of books that are part of a series
select distinct a.first_name, a.last_name 
from author a, book b, book_author ba 
where b.series_id > 1 and b.isbn = ba.isbn and ba.author_id = a.author_id;

--2.) List the ISBN and Title of books that are not part of a series
select b.title, b.isbn 
from book b 
where b.series_id = 1; 

--3.) List the title and publishing date of books sorted by publishing dates from earliest to latest
select b.title, b.publish_date 
from book b 
order by b.publish_date asc;

--4.) List the Title of Books published after 1990 in the Technology genre
select b.title 
from book b, book_genre bg 
where b.publish_date > '1990-01-01' and bg.isbn = b.isbn and bg.genre_id = 2;

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

--8.) List the Genres from the number of books from most to least 
select g.name
from genre g 
inner join book_genre bg on g.genre_id = bg.genre_id 
group by g.genre_id
order by count(name) DESC;

--9.) List the Titles of all Books From New York-based Publishers 
select b.title
from book b
inner join publisher p on p.publisher_id = b.publisher_id
where location = 'New York';

--10.) List the ISBN and title of books with more than 1 author
select distinct b.isbn, b.title
from book b
inner join book_author ba on b.isbn = ba.isbn
where author_id >= 5;
