-- Set future types to affect group4 schema by default 
SET search_path TO group4, public;

-- Values for publisher table
insert into publisher (name, location) values 
('Bloomsbury', 'United Kingdom'),
('Addison-Wesley Professional', 'Boston'),
('Bantam Classics', 'New York'),
('Scholastic Press', 'New York'),
('Penguin Publishing Group', 'New York'),
('Simon & Schuster', 'New York')
;

-- Values for authors table
insert into author (first_name, middle_name, last_name, gender) values
('Joanne', 'J.K', 'Rowling', 'Female'),
('Jules', '', 'Verne', 'Male'),
('Suzanne', '', 'Collins', 'Female'),
('George', '', 'Orwell', 'Male'),
('Andrew', '', 'Hunt', 'Male'),
('David', '', 'Thomas', 'Male'),
('William ', '', 'Shakespeare', 'Male')
;

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