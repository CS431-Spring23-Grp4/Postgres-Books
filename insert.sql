-- Set future types to affect group4 schema by default 
SET search_path TO group4, public;

-- Values for genre table
insert into genre (name) values 
('Fantasy'),
('Technology'),
('Political Satire'),
('Science Fiction'),
('Fiction'),
('Romance');

-- Values for series table
insert into series (title) values
('Harry Potter'),
('The Hunger Games'),
('Folger Shakespeare Library');

-- Values for series table
insert into book_author (isbn, author_id) values
('9780747532699', 1),
('074754624X', 1),
('9780135957059', 5),
('9780135957059', 6),
('9780451526342', 4),
('9780553214208', 2),
('439023483', 3);