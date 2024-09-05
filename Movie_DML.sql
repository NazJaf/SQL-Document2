
INSERT INTO Customers (name, email) VALUES 
('Nazrin Jafarova', 'nazrin.jafarova@example.com'),
('Mike Perez', 'mike.perez@example.com');

INSERT INTO Movies (title, genre, duration) VALUES 
('Dune', 'Sci-Fi', 148),
('Toy Story', 'Animation', 81);

INSERT INTO Screens (screen_number, capacity) VALUES 
(1, 200),
(2, 150);


INSERT INTO Showtimes (movie_id, screen_id, showtime) VALUES 
(1, 1, '2024-08-06 14:00:00'),
(2, 2, '2024-08-05 16:00:00');


INSERT INTO Tickets (customer_id, showtime_id, seat_number) VALUES 
(1, 1, 'A1'),
(2, 2, 'B1');


INSERT INTO Concessions (customer_id, item, price) VALUES 
(1, 'Popcorn', 5.00),
(2, 'Soda', 3.00);


UPDATE Customers SET email = 'alice.newemail@example.com' WHERE customer_id = 3;

UPDATE Screens SET capacity = 200 WHERE screen_id = 3;

DELETE FROM Customers WHERE customer_id = 4;


DELETE FROM Showtimes WHERE showtime_id = 4;