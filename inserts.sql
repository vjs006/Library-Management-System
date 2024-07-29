--location
INSERT INTO location (loc_id, pincode, street, city, country) VALUES ('LOC001', 110001, 'Connaught Place', 'New Delhi', 'India');
INSERT INTO location (loc_id, pincode, street, city, country) VALUES ('LOC002', 400001, 'Nariman Point', 'Mumbai', 'India');
INSERT INTO location (loc_id, pincode, street, city, country) VALUES ('LOC003', 600001, 'Mount Road', 'Chennai', 'India');
INSERT INTO location (loc_id, pincode, street, city, country) VALUES ('LOC004', 700001, 'Park Street', 'Kolkata', 'India');
INSERT INTO location (loc_id, pincode, street, city, country) VALUES ('LOC005', 560001, 'MG Road', 'Bangalore', 'India');

-- Insert 5 entries into the library table
INSERT INTO library (library_id, library_name, loc_id, year_established, rating) 
VALUES ('L001', 'National Library', 'LOC004', 1836, 4.8);

INSERT INTO library (library_id, library_name, loc_id, year_established, rating) 
VALUES ('L002', 'Asiatic Society Library', 'LOC002', 1804, 4.7);

INSERT INTO library (library_id, library_name, loc_id, year_established, rating) 
VALUES ('L003', 'Delhi Public Library', 'LOC001', 1951, 4.5);

INSERT INTO library (library_id, library_name, loc_id, year_established, rating) 
VALUES ('L004', 'Connemara Public Library', 'LOC003', 1896, 4.6);

INSERT INTO library (library_id, library_name, loc_id, year_established, rating) 
VALUES ('L005', 'State Central Library', 'LOC005', 1965, 4.4);

-- Insert 10 entries into the book_details table
INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780140449136, 'Homer', 'The Iliad', 704, 1, 'Epic', 'Greek');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780199535569, 'Jane Austen', 'Pride and Prejudice', 480, 1, 'Romance', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780439139595, 'J.K. Rowling', 'Harry Potter and the Goblet of Fire', 752, 4, 'Fantasy', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780307277671, 'Khaled Hosseini', 'The Kite Runner', 371, 1, 'Drama', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780140449266, 'Homer', 'The Odyssey', 560, 1, 'Epic', 'Greek');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780451524935, 'George Orwell', '1984', 328, 1, 'Dystopian', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780439554930, 'J.K. Rowling', 'Harry Potter and the Sorcerer''s Stone', 309, 1, 'Fantasy', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780316769488, 'J.D. Salinger', 'The Catcher in the Rye', 277, 1, 'Fiction', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780743273565, 'F. Scott Fitzgerald', 'The Great Gatsby', 180, 1, 'Tragedy', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780061120084, 'Harper Lee', 'To Kill a Mockingbird', 324, 1, 'Southern Gothic', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780143128540, 'Donna Tartt', 'The Goldfinch', 784, 1, 'Fiction', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780553573428, 'George R.R. Martin', 'A Game of Thrones', 835, 1, 'Fantasy', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780385472579, 'Frank Herbert', 'Dune', 896, 1, 'Science Fiction', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780743226721, 'Gabriel Garcia Marquez', 'One Hundred Years of Solitude', 417, 1, 'Magical Realism', 'Spanish');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780812981605, 'Yann Martel', 'Life of Pi', 326, 1, 'Adventure', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780804139021, 'Paula Hawkins', 'The Girl on the Train', 395, 1, 'Thriller', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780553386790, 'Dan Brown', 'The Da Vinci Code', 489, 1, 'Mystery', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9781400032716, 'Jhumpa Lahiri', 'The Namesake', 291, 1, 'Fiction', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780141182803, 'George Orwell', 'Animal Farm', 112, 1, 'Political Satire', 'English');

INSERT INTO book_details (isbn, author_name, title, no_pages, volume_no, genre, language)
VALUES (9780452284241, 'Ray Bradbury', 'Fahrenheit 451', 256, 1, 'Dystopian', 'English');

-- Insert 25 entries for the first library (L001)
INSERT INTO book VALUES ('B001', 'L001', 9780140449136, 15.99, 1);
INSERT INTO book VALUES ('B002', 'L001', 9780199535569, 12.99, 1);
INSERT INTO book VALUES ('B003', 'L001', 9780439139595, 20.99, 1);
INSERT INTO book VALUES ('B004', 'L001', 9780307277671, 14.99, 1);
INSERT INTO book VALUES ('B005', 'L001', 9780140449266, 16.99, 1);
INSERT INTO book VALUES ('B006', 'L001', 9780451524935, 9.99, 1);
INSERT INTO book VALUES ('B007', 'L001', 9780439554930, 18.99, 1);
INSERT INTO book VALUES ('B008', 'L001', 9780316769488, 13.99, 1);
INSERT INTO book VALUES ('B009', 'L001', 9780743273565, 10.99, 1);
INSERT INTO book VALUES ('B010', 'L001', 9780061120084, 12.99, 1);
INSERT INTO book VALUES ('B011', 'L001', 9780143128540, 22.99, 1);
INSERT INTO book VALUES ('B012', 'L001', 9780553573428, 25.99, 1);
INSERT INTO book VALUES ('B013', 'L001', 9780385472579, 24.99, 1);
INSERT INTO book VALUES ('B014', 'L001', 9780743226721, 17.99, 1);
INSERT INTO book VALUES ('B015', 'L001', 9780812981605, 14.99, 1);
INSERT INTO book VALUES ('B016', 'L001', 9780804139021, 19.99, 1);
INSERT INTO book VALUES ('B017', 'L001', 9780553386790, 21.99, 1);
INSERT INTO book VALUES ('B018', 'L001', 9781400032716, 13.99, 1);
INSERT INTO book VALUES ('B019', 'L001', 9780141182803, 8.99, 1);
INSERT INTO book VALUES ('B020', 'L001', 9780452284241, 10.99, 1);
-- Adding duplicate entries for some books with consistent prices
INSERT INTO book VALUES ('B021', 'L001', 9780439139595, 20.99, 1); -- Duplicate
INSERT INTO book VALUES ('B022', 'L001', 9780439554930, 18.99, 1); -- Duplicate
INSERT INTO book VALUES ('B023', 'L001', 9780316769488, 13.99, 1); -- Duplicate
INSERT INTO book VALUES ('B024', 'L001', 9780451524935, 9.99, 1);  -- Duplicate
INSERT INTO book VALUES ('B025', 'L001', 9780061120084, 12.99, 1); -- Duplicate

-- Insert 10 entries for the second library (L002)
INSERT INTO book VALUES ('B001', 'L002', 9780199535569, 12.99, 1);
INSERT INTO book VALUES ('B002', 'L002', 9780439139595, 20.99, 1);
INSERT INTO book VALUES ('B003', 'L002', 9780307277671, 14.99, 1);
INSERT INTO book VALUES ('B004', 'L002', 9780140449266, 16.99, 1);
INSERT INTO book VALUES ('B005', 'L002', 9780553573428, 25.99, 1);
INSERT INTO book VALUES ('B006', 'L002', 9780385472579, 24.99, 1);
INSERT INTO book VALUES ('B007', 'L002', 9780804139021, 19.99, 1);
INSERT INTO book VALUES ('B008', 'L002', 9781400032716, 13.99, 1);
INSERT INTO book VALUES ('B009', 'L002', 9780141182803, 8.99, 1);
INSERT INTO book VALUES ('B010', 'L002', 9780452284241, 10.99, 1);

-- Insert 10 entries for the third library (L003)
INSERT INTO book VALUES ('B001', 'L003', 9780316769488, 13.99, 1);
INSERT INTO book VALUES ('B002', 'L003', 9780743273565, 10.99, 1);
INSERT INTO book VALUES ('B003', 'L003', 9780061120084, 12.99, 1);
INSERT INTO book VALUES ('B004', 'L003', 9780143128540, 22.99, 1);
INSERT INTO book VALUES ('B005', 'L003', 9780812981605, 14.99, 1);
INSERT INTO book VALUES ('B006', 'L003', 9780804139021, 19.99, 1);
INSERT INTO book VALUES ('B007', 'L003', 9780553386790, 21.99, 1);
INSERT INTO book VALUES ('B008', 'L003', 9781400032716, 13.99, 1);
INSERT INTO book VALUES ('B009', 'L003', 9780141182803, 8.99, 1);
INSERT INTO book VALUES ('B010', 'L003', 9780452284241, 10.99, 1);

INSERT INTO book VALUES ('B001', 'L004', 9780451524935, 9.99, 1);
INSERT INTO book VALUES ('B002', 'L004', 9780439554930, 18.99, 1);
INSERT INTO book VALUES ('B003', 'L004', 9780316769488, 13.99, 1);
INSERT INTO book VALUES ('B004', 'L004', 9780743273565, 10.99, 1);
INSERT INTO book VALUES ('B005', 'L004', 9780061120084, 12.99, 1);
INSERT INTO book VALUES ('B006', 'L004', 9780143128540, 22.99, 1);
INSERT INTO book VALUES ('B007', 'L004', 9780553573428, 25.99, 1);
INSERT INTO book VALUES ('B008', 'L004', 9780385472579, 24.99, 1);
INSERT INTO book VALUES ('B009', 'L004', 9780743226721, 17.99, 1);
INSERT INTO book VALUES ('B010', 'L004', 9780812981605, 14.99, 1);

-- Insert 5 entries for the fifth library (L005)
INSERT INTO book (book_id, library_id, isbn, price) VALUES ('B001', 'L005', 9780140449136, 15.99);
INSERT INTO book (book_id, library_id, isbn, price) VALUES ('B002', 'L005', 9780199535569, 12.99);
INSERT INTO book (book_id, library_id, isbn, price) VALUES ('B003', 'L005', 9780439139595, 20.99);
INSERT INTO book (book_id, library_id, isbn, price) VALUES ('B004', 'L005', 9780307277671, 14.99);
INSERT INTO book (book_id, library_id, isbn, price) VALUES ('B005', 'L005', 9780140449266, 16.99);

-- Insert 10 customer entries
INSERT INTO customer (cust_id, cust_fn, cust_ln, cust_dob, cust_phone, cust_email) VALUES ('C001', 'Amit', 'Sharma', TO_DATE('1985-05-14', 'YYYY-MM-DD'), '9876543210', 'amit.sharma@example.com');
INSERT INTO customer (cust_id, cust_fn, cust_ln, cust_dob, cust_phone, cust_email) VALUES ('C002', 'Neha', 'Verma', TO_DATE('1990-08-20', 'YYYY-MM-DD'), '9876543211', 'neha.verma@example.com');
INSERT INTO customer (cust_id, cust_fn, cust_ln, cust_dob, cust_phone, cust_email) VALUES ('C003', 'Rahul', 'Gupta', TO_DATE('1988-12-11', 'YYYY-MM-DD'), '9876543212', 'rahul.gupta@example.com');
INSERT INTO customer (cust_id, cust_fn, cust_ln, cust_dob, cust_phone, cust_email) VALUES ('C004', 'Sneha', 'Kapoor', TO_DATE('1992-03-05', 'YYYY-MM-DD'), '9876543213', 'sneha.kapoor@example.com');
INSERT INTO customer (cust_id, cust_fn, cust_ln, cust_dob, cust_phone, cust_email) VALUES ('C005', 'Vikram', 'Singh', TO_DATE('1980-07-19', 'YYYY-MM-DD'), '9876543214', 'vikram.singh@example.com');
INSERT INTO customer (cust_id, cust_fn, cust_ln, cust_dob, cust_phone, cust_email) VALUES ('C006', 'Pooja', 'Mehta', TO_DATE('1995-11-30', 'YYYY-MM-DD'), '9876543215', 'pooja.mehta@example.com');
INSERT INTO customer (cust_id, cust_fn, cust_ln, cust_dob, cust_phone, cust_email) VALUES ('C007', 'Ankit', 'Jain', TO_DATE('1983-09-23', 'YYYY-MM-DD'), '9876543216', 'ankit.jain@example.com');
INSERT INTO customer (cust_id, cust_fn, cust_ln, cust_dob, cust_phone, cust_email) VALUES ('C008', 'Priya', 'Malhotra', TO_DATE('1998-01-15', 'YYYY-MM-DD'), '9876543217', 'priya.malhotra@example.com');
INSERT INTO customer (cust_id, cust_fn, cust_ln, cust_dob, cust_phone, cust_email) VALUES ('C009', 'Rohit', 'Kumar', TO_DATE('1987-06-25', 'YYYY-MM-DD'), '9876543218', 'rohit.kumar@example.com');
INSERT INTO customer (cust_id, cust_fn, cust_ln, cust_dob, cust_phone, cust_email) VALUES ('C010', 'Sonal', 'Chauhan', TO_DATE('1993-10-18', 'YYYY-MM-DD'), '9876543219', 'sonal.chauhan@example.com');

-- Insert 8 patrons for the first library (L001)
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P001', 'L001', 'C001', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'amit_sharma', 'pass123', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P002', 'L001', 'C002', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'neha_verma', 'pass124', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P003', 'L001', 'C003', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'rahul_gupta', 'pass125', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P004', 'L001', 'C004', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'sneha_kapoor', 'pass126', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P005', 'L001', 'C005', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'vikram_singh', 'pass127', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P006', 'L001', 'C006', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'pooja_mehta', 'pass128', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P007', 'L001', 'C007', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'ankit_jain', 'pass129', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P008', 'L001', 'C008', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'priya_malhotra', 'pass130', 'ACTIVE', 0);

-- Insert 4 patrons for the second library (L002)
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P001', 'L002', 'C001', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'amit_sharma2', 'pass231', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P002', 'L002', 'C003', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'rahul_gupta2', 'pass232', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P003', 'L002', 'C009', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'rohit_kumar', 'pass233', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P004', 'L002', 'C010', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'sonal_chauhan', 'pass234', 'ACTIVE', 0);

-- Insert 4 patrons for the third library (L003)
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P001', 'L003', 'C001', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'amit_sharma3', 'pass335', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P002', 'L003', 'C005', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'vikram_singh2', 'pass336', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P003', 'L003', 'C006', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'pooja_mehta2', 'pass337', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P004', 'L003', 'C008', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'priya_malhotra2', 'pass338', 'ACTIVE', 0);

-- Insert 4 patrons for the fourth library (L004)
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P001', 'L004', 'C002', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'neha_verma2', 'pass439', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P002', 'L004', 'C003', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'rahul_gupta3', 'pass440', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P003', 'L004', 'C007', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'ankit_jain2', 'pass441', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P004', 'L004', 'C010', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'sonal_chauhan2', 'pass442', 'ACTIVE', 0);

-- Insert 2 patrons for the fifth library (L005)
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P001', 'L005', 'C004', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'sneha_kapoor2', 'pass543', 'ACTIVE', 0);
INSERT INTO patron (patron_id, library_id, cust_id, expiry_date, username, password, status, due_amt) VALUES ('P002', 'L005', 'C009', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'rohit_kumar2', 'pass544', 'ACTIVE', 0);

-- Insert borrow records for the first library (L001)
-- Assume two patrons (P001 and P002) have multiple borrows
-- Patron P001 has multiple borrows
INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR001', 'L001', 'P001', TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2024-07-15', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR002', 'L001', 'P001', TO_DATE('2024-06-20', 'YYYY-MM-DD'), TO_DATE('2024-07-20', 'YYYY-MM-DD'), 0);

-- Patron P002 has regular borrows
INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR003', 'L001', 'P002', TO_DATE('2024-06-16', 'YYYY-MM-DD'), TO_DATE('2024-07-16', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR004', 'L001', 'P002', TO_DATE('2024-06-21', 'YYYY-MM-DD'), TO_DATE('2024-07-21', 'YYYY-MM-DD'), 0);

-- Insert borrow records for the second library (L002)
-- Two patrons (P001 and P002) borrow books
INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR001', 'L002', 'P001', TO_DATE('2024-06-17', 'YYYY-MM-DD'), TO_DATE('2024-07-17', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR002', 'L002', 'P001', TO_DATE('2024-06-19', 'YYYY-MM-DD'), TO_DATE('2024-07-19', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR003', 'L002', 'P002', TO_DATE('2024-06-18', 'YYYY-MM-DD'), TO_DATE('2024-07-18', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR004', 'L002', 'P002', TO_DATE('2024-06-22', 'YYYY-MM-DD'), TO_DATE('2024-07-22', 'YYYY-MM-DD'), 0);

-- Insert borrow records for the third library (L003)
-- Two patrons (P001 and P002) borrow books
INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR001', 'L003', 'P001', TO_DATE('2024-06-19', 'YYYY-MM-DD'), TO_DATE('2024-07-19', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR002', 'L003', 'P001', TO_DATE('2024-06-21', 'YYYY-MM-DD'), TO_DATE('2024-07-21', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR003', 'L003', 'P002', TO_DATE('2024-06-20', 'YYYY-MM-DD'), TO_DATE('2024-07-20', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR004', 'L003', 'P002', TO_DATE('2024-06-22', 'YYYY-MM-DD'), TO_DATE('2024-07-22', 'YYYY-MM-DD'), 0);

-- Insert borrow records for the fourth library (L004)
-- Two patrons (P001 and P002) borrow books
INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR001', 'L004', 'P001', TO_DATE('2024-06-21', 'YYYY-MM-DD'), TO_DATE('2024-07-21', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR002', 'L004', 'P001', TO_DATE('2024-06-23', 'YYYY-MM-DD'), TO_DATE('2024-07-23', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR003', 'L004', 'P002', TO_DATE('2024-06-22', 'YYYY-MM-DD'), TO_DATE('2024-07-22', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR004', 'L004', 'P002', TO_DATE('2024-06-24', 'YYYY-MM-DD'), TO_DATE('2024-07-24', 'YYYY-MM-DD'), 0);

-- Insert borrow records for the fifth library (L005)
-- One patron (P001) borrows books
INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR001', 'L005', 'P001', TO_DATE('2024-06-23', 'YYYY-MM-DD'), TO_DATE('2024-07-23', 'YYYY-MM-DD'), 0);

INSERT INTO borrow (borrow_id, library_id, patron_id, borrow_date, return_date, overdue_fees)
VALUES ('BR002', 'L005', 'P001', TO_DATE('2024-06-24', 'YYYY-MM-DD'), TO_DATE('2024-07-24', 'YYYY-MM-DD'), 0);

-- Insert records for borrowings from the first library (L001)
-- Patron P001's borrows (BR001)
INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR001', 'L001', 'B003');

INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR001', 'L001', 'B004');

INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR001', 'L001', 'B005');

-- Patron P002's borrows (BR003)
INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR003', 'L001', 'B006');

INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR003', 'L001', 'B007');

-- Insert records for borrowings from the second library (L002)
-- Patron P001's borrows (BR001)
INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR001', 'L002', 'B006');

INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR001', 'L002', 'B007');

-- Patron P002's borrows (BR003)
INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR003', 'L002', 'B008');

INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR003', 'L002', 'B009');

-- Insert records for borrowings from the third library (L003)
-- Patron P001's borrows (BR001)
INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR001', 'L003', 'B010');

INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR001', 'L003', 'B005');

-- Patron P002's borrows (BR003)
INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR003', 'L003', 'B006');

INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR003', 'L003', 'B007');

-- Insert records for borrowings from the fourth library (L004)
-- Patron P001's borrows (BR001)
INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR001', 'L004', 'B003');

INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR001', 'L004', 'B004');

-- Patron P002's borrows (BR003)
INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR003', 'L004', 'B005');

INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR003', 'L004', 'B006');

-- Insert records for borrowings from the fifth library (L005)
-- Patron P001's borrows (BR001)
INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR001', 'L005', 'B003');

INSERT INTO borrow_list (borrow_id, library_id, book_id)
VALUES ('BR001', 'L005', 'B004');

-- Insert records for purchases by customers (non-patrons) and patrons

-- Non-patron customer purchases
-- Assume customer C001 purchases books from library L001
INSERT INTO purchases (purchase_id, cust_id, library_id, purchase_date)
VALUES ('PUR001', 'C001', 'L001', TO_DATE('2024-06-25', 'YYYY-MM-DD'));

INSERT INTO purchases_list (purchase_id, book_id, library_id, quantity)
VALUES ('PUR001', 'B001', 'L001', 1);

INSERT INTO purchases_list (purchase_id, book_id, library_id, quantity)
VALUES ('PUR001', 'B002', 'L001', 1);

-- Assume customer C002 purchases books from library L002
INSERT INTO purchases (purchase_id, cust_id, library_id, purchase_date)
VALUES ('PUR002', 'C002', 'L002', TO_DATE('2024-06-26', 'YYYY-MM-DD'));

INSERT INTO purchases_list (purchase_id, book_id, library_id, quantity)
VALUES ('PUR002', 'B001', 'L002', 1);

INSERT INTO purchases_list (purchase_id, book_id, library_id, quantity)
VALUES ('PUR002', 'B002', 'L002', 1);

-- Patron purchases
-- Assume patron P001 (cust_id C003) purchases books from library L003
INSERT INTO purchases (purchase_id, cust_id, library_id, purchase_date)
VALUES ('PUR003', 'C003', 'L003', TO_DATE('2024-06-27', 'YYYY-MM-DD'));

INSERT INTO purchases_list (purchase_id, book_id, library_id, quantity)
VALUES ('PUR003', 'B002', 'L003', 1);

INSERT INTO purchases_list (purchase_id, book_id, library_id, quantity)
VALUES ('PUR003', 'B001', 'L003', 1);

-- Assume patron P002 (cust_id C004) purchases books from library L004
INSERT INTO purchases (purchase_id, cust_id, library_id, purchase_date)
VALUES ('PUR004', 'C004', 'L004', TO_DATE('2024-06-28', 'YYYY-MM-DD'));

INSERT INTO purchases_list (purchase_id, book_id, library_id, quantity)
VALUES ('PUR004', 'B001', 'L004', 1);

INSERT INTO purchases_list (purchase_id, book_id, library_id, quantity)
VALUES ('PUR004', 'B002', 'L004', 1);