-- prob 1

SELECT * FROM invoice 
JOIN invoice_line  ON invoice_line.invoice_id = invoice.invoice_id
WHERE invoice_line.unit_price > 0.99;

-- prob 2

SELECT  invoice.invoice_date, customer.first_name, customer.last_name
FROM invoice
JOIN customer ON invoice.customer_id = customer.customer_id;

-- prob 3

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

-- prob 4

SELECT al.title, ar.name FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;

-- prob 5

SELECT pt.track_id, p.name FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

-- prob 6

SELECT t.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

-- prob 7

SELECT t.name, p.name FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

-- prob 8

SELECT track.name, album.title FROM track 
JOIN album  ON track.album_id = album.album_id
JOIN genre  ON genre.genre_id = track.genre_id
WHERE genre.name = 'Alternative and Punk';