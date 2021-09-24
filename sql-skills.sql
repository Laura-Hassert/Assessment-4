------------------ ARTIST TABLE ------------------
1. 
INSERT INTO artist (name)
	VALUES ('Angele'),
    ('Lady Gaga'),
    ('Lizzo');

2. 
SELECT name FROM artist
ORDER BY name
LIMIT 5;

------------------ EMPLOYEE TABLE ------------------
1. 
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

2. 
SELECT * FROM employee
WHERE reports_to = 2;

3. 
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

------------------ INVOICE TABLE ------------------
1. 
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

2. 
SELECT MAX(total) FROM invoice;

3. 
SELECT MIN(total) FROM invoice;

4. 
SELECT * FROM invoice
WHERE total > 5;

5. 
SELECT COUNT(*) FROM invoice
WHERE total < 5;

6. 
SELECT SUM(total) FROM invoice;

------------------ JOIN QUERIES ------------------
1. 
SELECT * FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE unit_price > .99;

2. 
SELECT i.invoice_date, c.first_name, c.last_name, i.total FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

3. 
SELECT 
	c.first_name AS customer_first_name, 
    c.last_name AS customer_last_name, 
    e.first_name AS employee_first_name, 
    e.last_name AS employee_last_name FROM employee e
JOIN customer c ON e.employee_id = c.support_rep_id;

4. 
SELECT al.title AS album_title, ar.name AS artist_name FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;


---------------------------------------------------------- EXTRA CREDIT -----------------------------------------------------------

------------------ ARTIST TABLE ------------------
1. 
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

2. 
SELECT * FROM artist
WHERE name LIKE 'Black%';

3.
SELECT * FROM artist
WHERE name ILIKE '%black%';

------------------ EMPLOYEE TABLE ------------------
1. 
SELECT MAX(birth_date) FROM employee;

2. 
SELECT MIN(birth_date) FROM employee;

------------------ INVOICE TABLE ------------------
1. 
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

2. 
SELECT AVG(total) FROM invoice;

------------------JOIN QUERIES ------------------
1. 
SELECT pt.playlist_track_id, pt.track_id FROM playlist_track pt
JOIN playlist p ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';

2. 
SELECT t.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

3. 
SELECT t.name AS track_name, p.name AS playlist_name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

4. 
SELECT t.name AS track_name, a.title AS album_title FROM track t
JOIN album a ON a.album_id = t.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';
