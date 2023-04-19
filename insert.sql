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