CREATE DATABASE IF NOT EXISTS alx_book_store
CREATE TABLE Books (
    bookid INT PRIMARY KEY, 
    title VARCHAR(130), 
    author_id INT FOREIGN KEY REFERENCES Authors, 
    price DOUBLE, 
    publication_date DATE);
Authors: Stores information about authors.
CREATE TABLE Authors(
    author_id INT PRIMARY KEY, 
    author_name VARCHAR(215), 
);
CREATE TABLE Customers(
    customer_id INT PRIMARY KEY, 
    customer_name VARCHAR(215), 
    email VARCHAR(215), 
    address TEXT
);
Orders: Stores information about orders placed by customers.
CREATE TABLE Orders(
    order_id INT PRIMARY KEY, 
    customer_id INT FOREIGN KEY REFERENCES Customers, 
    order_date DATE
);
Order_Details: Stores information about the books included in each order.
CREATE TABLE Order_Details(
    orderdetailid INT PRIMARY KEY, 
    order_id INT FOREIGN KEY REFERENCES Orders, 
    book_id INT FOREIGN KEY REFERENCES Books, 
    quantity DOUBLE
);