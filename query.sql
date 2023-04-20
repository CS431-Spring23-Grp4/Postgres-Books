-- Set future types to affect nguyenm schema by default 
SET search_path TO group4, public;

-- Give the First and Last name of the authors of books that are part of a series
select distinct a.first_name, a.last_name from author a, book b, book_author ba where b.series_id > 1 and b.isbn = ba.isbn and ba.author_id = a.author_id;

