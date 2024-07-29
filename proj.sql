DROP TABLE current_date CASCADE CONSTRAINT;
DROP TABLE order_list CASCADE CONSTRAINT;
DROP TABLE orders CASCADE CONSTRAINT;
DROP TABLE purchases_list CASCADE CONSTRAINT;
DROP TABLE purchases CASCADE CONSTRAINT;
DROP TABLE computer CASCADE CONSTRAINT;
DROP TABLE borrow_list CASCADE CONSTRAINT;
DROP TABLE borrow CASCADE CONSTRAINT;
DROP TABLE patron CASCADE CONSTRAINT;
DROP TABLE customer CASCADE CONSTRAINT;
DROP TABLE book_details CASCADE CONSTRAINT;
DROP TABLE book CASCADE CONSTRAINT;
DROP TABLE author CASCADE CONSTRAINT;
DROP TABLE location CASCADE CONSTRAINT;
DROP TABLE library CASCADE CONSTRAINT;


-- location Table
CREATE TABLE location (
    loc_id VARCHAR2(6) PRIMARY KEY CHECK (loc_id LIKE 'LOC%'),
    pincode NUMBER,
    street VARCHAR2(100),
    city VARCHAR2(100) NOT NULL,
    country VARCHAR2(100) NOT NULL
);

--library
CREATE TABLE library (
    library_id VARCHAR2(50) PRIMARY KEY CHECK (library_id LIKE 'L%'),
    library_name VARCHAR2(100),
    loc_id VARCHAR2(50) REFERENCES location(loc_id),
    year_established NUMBER,
    rating NUMBER(2,1) CHECK (rating BETWEEN 0 AND 5)
);

CREATE TABLE book_details (
    isbn NUMBER PRIMARY KEY,
    author_name VARCHAR2(50) ,
    title VARCHAR2(200),
    no_pages NUMBER,
    volume_no NUMBER,
    genre VARCHAR2(50),
    language VARCHAR2(50)
);

-- book Table
CREATE TABLE book (
    book_id VARCHAR2(4) CHECK (book_id LIKE 'B%'),
    library_id VARCHAR2(50) REFERENCES library(library_id),
    isbn NUMBER REFERENCES book_details(isbn),
    price NUMBER(5,2),
    availible NUMBER CHECK (availible IN (0, 1)),
    PRIMARY KEY (book_id, library_id)
);

-- customer Table
CREATE TABLE customer (
    cust_id VARCHAR2(4) PRIMARY KEY CHECK (cust_id LIKE 'C%'),
    cust_fn VARCHAR2(100),
    cust_ln VARCHAR2(100),
    cust_dob DATE NOT NULL,
    cust_phone VARCHAR2(20) NOT NULL,
    cust_email VARCHAR2(100)
);

-- patron Table
CREATE TABLE patron (
    patron_id VARCHAR2(4) CHECK (patron_id LIKE 'P%'),
    library_id VARCHAR2(4) REFERENCES library(library_id),
    cust_id VARCHAR2(4) REFERENCES customer(cust_id),
    expiry_date DATE,
    username VARCHAR2(50) UNIQUE,
    password VARCHAR2(50),
    status VARCHAR2(10) CHECK (status IN ('ACTIVE', 'INACTIVE')),
    due_amt NUMBER,
    PRIMARY KEY (patron_id, library_id)
);

-- borrow Table
CREATE TABLE borrow (
    borrow_id VARCHAR2(5) CHECK (borrow_id LIKE 'BR%'),
    library_id VARCHAR2(4),
    patron_id VARCHAR2(4),
    borrow_date DATE,
    return_date DATE,
    overdue_fees NUMBER,
    FOREIGN KEY (patron_id, library_id) REFERENCES patron(patron_id, library_id),
    PRIMARY KEY (borrow_id, library_id)
);

-- borrow_list Table
CREATE TABLE borrow_list (
    borrow_id VARCHAR2(5),
    library_id VARCHAR2(4),
    book_id VARCHAR2(4),
    FOREIGN KEY (borrow_id, library_id) REFERENCES borrow(borrow_id, library_id),
    FOREIGN KEY (book_id, library_id) REFERENCES book(book_id, library_id),
    PRIMARY KEY (borrow_id, library_id, book_id)
);

-- computer Table
CREATE TABLE computer (
    comp_no VARCHAR2(4) CHECK (comp_no LIKE 'C%'),
    library_id VARCHAR2(4),
    patron_id VARCHAR2(4),
    comp_model VARCHAR2(100),
    FOREIGN KEY (patron_id, library_id) REFERENCES patron(patron_id, library_id),
    PRIMARY KEY (comp_no, library_id)
);

-- purchases Table
CREATE TABLE purchases (
    purchase_id VARCHAR2(6) PRIMARY KEY,
    cust_id VARCHAR2(4) REFERENCES customer(cust_id),
    library_id VARCHAR2(4) REFERENCES library(library_id),
    purchase_date DATE
);

-- purchases_list Table
CREATE TABLE purchases_list (
    purchase_id VARCHAR2(6) REFERENCES purchases(purchase_id),
    book_id VARCHAR2(4),
    library_id VARCHAR2(4),
    quantity NUMBER,
    FOREIGN KEY (book_id, library_id) REFERENCES book(book_id, library_id),
    PRIMARY KEY (purchase_id, book_id) 
);

-- orders Table
CREATE TABLE orders (
    order_id VARCHAR2(4) CHECK (order_id LIKE 'O%'),
    library_id VARCHAR2(4) REFERENCES library(library_id),
    ordered_from VARCHAR2(100),
    ord_date DATE,
    delv_date DATE,
    PRIMARY KEY (order_id, library_id)
);

-- order_list Table
CREATE TABLE order_list (
    order_id VARCHAR2(4),
    library_id VARCHAR2(4),
    isbn NUMBER REFERENCES book_details(isbn),
    quantity NUMBER,
    cost_per_unit NUMBER,
    PRIMARY KEY (order_id, library_id, isbn),
    FOREIGN KEY (order_id, library_id) REFERENCES orders(order_id, library_id)
);

CREATE TABLE current_date (
    cur_date DATE
);

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER due_amt_trigger
AFTER UPDATE ON borrow
FOR EACH ROW
DECLARE
    overdue_fees_v NUMBER;
BEGIN
    SELECT SUM(b.overdue_fees) INTO overdue_fees_v
    FROM borrow b
    WHERE b.patron_id = :NEW.patron_id
    AND b.library_id = :NEW.library_id
    GROUP BY b.patron_id, b.library_id;

    UPDATE patron
    SET due_amt = overdue_fees_v
    WHERE :NEW.patron_id = patron_id; 
END;
/

show error;

CREATE OR REPLACE TRIGGER book_purchased
AFTER INSERT ON purchases_list
FOR EACH ROW
BEGIN
    UPDATE book
    SET availible = 0
    WHERE book_id = :NEW.book_id;
END;
/

show error;

CREATE OR REPLACE TRIGGER date_changed
AFTER INSERT OR UPDATE ON current_date
FOR EACH ROW
DECLARE
    CURSOR c1 IS
    SELECT borrow_id FROM borrow;

    bid borrow.borrow_id%TYPE;
BEGIN
    OPEN c1;

    LOOP
        FETCH c1 INTO bid;
        UPDATE borrow
        SET overdue_fees = (:NEW.cur_date - return_date) * 10
        WHERE borrow_id = bid;

        EXIT WHEN c1%NOTFOUND;
    END LOOP;
END;
/

@E:/inserts.sql






