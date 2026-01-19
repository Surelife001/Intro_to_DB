CREATE TABLE Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
)


CREATE Table  Books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id(Foreign Key (author_id) REFERENCES Authors (author_id)), 
    price DOUBLE,
    Published_date Date
    
)

CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(255)
    address TEXT
)

CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)

CREATE TABLE Order_Details(
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
)


