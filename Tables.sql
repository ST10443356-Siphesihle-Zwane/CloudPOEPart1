USE master
IF EXISTS (SELECT * FROM sys.databases WHERE name ='EventEaseDB ')
DROP DATABASE EventEaseDB 
CREATE DATABASE EventEaseDB 
USE EventEaseDB 

CREATE TABLE venue (
    VenueID INT PRIMARY KEY NOT NULL,
    VenueName VARCHAR(50) NOT NULL,
    VenueLocation TEXT NOT NULL,
    VenueCapacity INT NOT NULL
);

CREATE TABLE Booking(
BookingID int PRIMARY KEY,
VenueID int NOT NULL,
EventID int NOT NULL,
BookedDate SQL_VARIANT NOT NULL,
UNIQUE (VenueID, EventID)
);

CREATE TABLE Event(
EventID int PRIMARY KEY NOT NULL,
EventName varChar(50) NOT NULL,
StartDate SQL_VARIANT NOT NULL,
EndDate SQL_VARIANT NOT NULL,
);

INSERT INTO venue VALUES
(1, 'Grand Palace', '27 Versace Ave Midrand', 500),
(2, 'Grand Palace', '27 Versace Ave Midrand', 500);

INSERT INTO Booking VALUES
(1, 1, 1, 2025-12-13),
(2, 2, 2, 2025-12-15);

INSERT INTO Event VALUES
(1, 'Sparkle and Shine', 2025-12-13, 2025-12-14),
(2, 'Glow Gala', 2025-12-15, 2025-12-16);
