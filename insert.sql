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

--Values for the Book table
insert into Book (isbn, title, publish_date, num_of_chapters, num_of_pages, rating, series_id, edition, publisher_id) values 
('9780747532699', 'Harry Potter and the Philosopher's Stone',1997, 17, 223, 9, 1, ‘1st’, 1),
('074754624X', ‘Harry Potter and the Goblet of Fire’, 2000, 37, 636, 10, ‘1st’, 1),
('9780451526342', ‘Animal Farm’, 2004, 10, 140, 8, null, ‘75th Anniversary’, 5),
('743477111', ‘Romeo and Juliet’, 2004, 10, 336, 9, 3, ‘Updated’, 6),
('9780747532699', 'The Pragmatic Programmer: Your Journey To Mastery',2019, 9,  352, 9, null, ‘2nd’, 2),
('439023483', 'The Hunger Games',2008, 27, 223, 9, 1, ‘1st’, 1),
('9780553214208', 'From the Earth to the Moon',1993, 27, 240, 9, null, null, 3);
 
--Values for the Book_Genres tables
insert into Book_Genres (isbn, genre_id) values
('9780747532699',1),
('074754624X',1),
('9780451526342',3),
('743477111',6),
('9780747532699',2),
('439023483',4),
('9780553214208',4);

-- Values for book_author table
insert into book_author (isbn, author_id) values
('9780747532699', 1),
('074754624X', 1),
('9780135957059', 5),
('9780135957059', 6),
('9780451526342', 4),
('9780553214208', 2),
('439023483', 3);
