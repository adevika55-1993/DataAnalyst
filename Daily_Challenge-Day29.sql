-- Daily Challenge - Day 29

create database onlinebookstore;
use onlinebookstore;

-- Define a primary key for Books(BookID) and a foreign key in Orders(BookID) referencing Books.
create table Books (BookID INT primary key, 
Title varchar(100),
Author varchar(100),
ISBN VARCHAR (30)
);

create table orders (orderID INT primary KEY,
orderdate date,
BookID INT,
foreign key (BookID) references Books(BookID)
);

-- Add a UNIQUE constraint to the ISBN column in Books--
alter table Books
ADD constraint unique_isbn unique (ISBN);

insert into books (BookID, Title, Author, ISBN) values (501, "Velpari", "venkatesan", 444);
insert into orders (orderID, orderdate, BookID) VALUES (723, "2025-02-26", 501);

-- DELETE removes selected rows --
delete from orders
Where orderID = 723;

-- TRUNCATE removes all rows quickly but keeps the table 
truncate table orders;





