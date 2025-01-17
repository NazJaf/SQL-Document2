create databse Movie;

CREATE TABLE "Customers" (
  "customer_id" SERIAL,
  "name" VARCHAR(100),
  "email" VARCHAR(150),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Screen" (
  "screen_id" SERIAL,
  "screen_number" INTEGER,
  "capasity" INTEGER,
  PRIMARY KEY ("screen_id")
);

CREATE TABLE "Showtimes" (
  "showtime_id" SERIAL,
  "movie_id" INTEGER,
  "screen_id" INTEGER,
  "showtime" TIMESTAMP,
  PRIMARY KEY ("showtime_id")
);

CREATE TABLE "Movies" (
  "movie_id" SERIAL,
  "title" VARCHAR(100),
  "genre" VARCHAR(50),
  "duration" INTEGER,
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "Concessions" (
  "concession_id" SERIAL,
  "customer_id" INTEGER,
  "item" VARCHAR(100),
  "price" DECIMAL(5,2),
  PRIMARY KEY ("concession_id"),
  CONSTRAINT "FK_Concessions.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customers"("name")
);

CREATE TABLE "Tickets" (
  "ticket_id" SERIAL,
  "customer_id" INTEGER,
  "showtime_id" INTEGER,
  "seat_number" INTEGER,
  PRIMARY KEY ("ticket_id"),
  CONSTRAINT "FK_Tickets.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Showtimes"("movie_id")
);


--1)Alter table
--ADD
ALTER TABLE Screens ADD description VARCHAR(255);
--DROP
ALTER TABLE Screens DROp COLUMN description;
--Alter
ALTER TABLE Screens ALTER COLUMN capacity TYPE SALLINT;


--2) Drop Table
DROP TABLE OldTable ;

