-- Initialize schema
create schema if not exists group4;

-- Set future types to affect group4 schema by default 
SET search_path TO group4, public;

create table if not exists publisher (
    publisher_id serial,
    name text,
    location text,
    primary key (publisher_id)
);

create table if not exists author (
    author_id serial,
    first_name text,
    middle_name text,
    last_name text,
    gender text,
    primary key (author_id)
);

create table if not exists genre (
    genre_id serial,
    name text,
    primary key (genre_id)
);

create table if not exists series (
    series_id serial,
    title text,
    primary key (series_id)
);

create table if not exists book (
    isbn text,
    title text,
    publish_date date,
    num_of_chapters int,
    num_of_pages int,
    rating int,
    series_id serial,
    edition text,
    publisher_id serial,
    primary key (isbn),
    foreign key (series_id) references series(series_id),
    foreign key (publisher_id) references publisher(publisher_id)
);

create table if not exists book_genre (
    isbn text,
    genre_id serial,
    primary key (isbn, genre_id),
    foreign key (isbn) references book(isbn),
    foreign key (genre_id) references genre(genre_id)
);

create table if not exists book_author (
    isbn varchar(13),
    author_id serial,
    primary key (isbn, author_id),
    foreign key (isbn) references book(isbn),
    foreign key (author_id) references author(author_id)
);