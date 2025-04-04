USE master
IF EXISTS (SELECT * FROM sys.databases WHERE name ='EventEaseDB ')
DROP DATABASE EventEaseDB 
CREATE DATABASE EventEaseDB 
USE EventEaseDB 

CREATE TABLE venue (
    venue_id INT,
    venue_name VARCHAR(50),
    venue_location TEXT,
    venue_capacity INT
);

CREATE TABLE Booking(
BookingID int,
VenueID int,
EventID int,
BookedDate SQL_VARIANT,
UNIQUE (VenueID, EventID)
);

CREATE TABLE Event(
EventID int,
EventName varChar(50),
StartDate SQL_VARIANT,
EndDate SQL_VARIANT,
);

INSERT INTO venue VALUES
(1, 'Grand Palace', '27 Versace Ave Midrand', 500),
(2, 'Grand Palace', '27 Versace Ave Midrand', 500);

INSERT INTO Booking VALUES
(1, 1, 1, 2025-12-13),
(2, 1, 2, 2025-12-15);

INSERT INTO Event VALUES
(1, 'Sparkle and Shine', 2025-12-13, 2025-12-14),
(1, 'Glow Gala', 2025-12-15, 2025-12-16);
