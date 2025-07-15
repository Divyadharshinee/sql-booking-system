                                 --   sql_booking_system_project (BOOKING SYSTEM)

create database project1;

use project1;

-- TABLE CRREATION:

-- 1st Table : Users Table:

create table users(
user_id int primary key auto_increment, 
user_name varchar(50),
email_id varchar(30),
mobile varchar(10),
password varchar(20),
created_at datetime);

-- 2nd Table: Flights Table:

create table flights(
flight_id int primary key auto_increment,
flight_number varchar(50),
departure varchar(50),
arrival varchar(50),
flight_price varchar(20),
available_seats int,
created_at datetime);

-- 3rd Table: Hotel Table:

create table hotel(
hotel_id int primary key auto_increment,
hotel_name varchar(20),
location varchar(20),
hotel_price varchar(20),
available_rooms int,
created_at datetime);

-- 4th Table: Booking Table:
create table booking(
booking_id int primary key auto_increment,
user_idfk integer,
foreign key( user_idFk) references users(user_id),
flight_idfk integer,
foreign key( flight_idFk) references flights(flight_id),
seat_booked int,
hotel_idfk integer,
rooms_booked int,
total_fare int,
foreign key( hotel_idFk) references hotel(hotel_id),
booking_date datetime); 

--  INSERTION:

-- 1st Table : Users Table:

insert into users values
(1,'Priya', 'Priya@example.com', '6978980989', 'priya123', '2025-05-19 09:30:00'),
(2,'Sandy', 'Sandy@example.com', '9876543210', 'sandy123', '2025-05-19 09:00:00'),
(3,'Preetha', 'Preetha@example.com', '9123456780', 'preetha123', '2025-05-19 09:15:00'),
(4,'Divya', 'Divya@example.com', '9988776655', 'divya123', '2025-05-19 09:30:00'),
(5,'Keerthi', 'Keerthi@example.com','9878007897', 'keerthi123', '2025-05-19 09:30:00'),
(6,'Ruddhu', 'Rudhu@example.com','9764667978', 'ruddhu123', '2025-05-19 09:30:00'),
(7,'Rahul', 'Rahul@example.com','7979708090', 'rahul123', '2025-05-19 09:30:00'),
(8,'Sara', 'Sara@example.com','9870987709', 'sara123', '2025-05-19 09:30:00'),
(9,'Sharmi', 'Sharmi@example.com','7508090876', 'sharmi123', '2025-05-19 09:30:00'),
(10,'Jeni', 'Jeni@example.com','7988099877', 'jeni123', '2025-05-19 09:30:00');

-- 2nd Table: Flights Table:
select*from flights;
insert into flights values
(101,"AI202", 'Dehli', 'Mumbai', '5200', 15, '2025-05-19 10:00:00'),
(102,"6E305", 'Chennai', 'Bangalore', '3400', 20, '2025-05-19 10:15:00'),
(103,"UK981", 'Kolkata', 'Hyderabad', '4750',10, '2025-05-19 10:30:00'),
(104,"SG612", 'Pune', 'Dehli', '5100', 8, '2025-05-19 10:30:00'),
(105,"IX155", 'Kochi', 'Chennai', '2850', 12,'2025-05-19 10:30:00'),
(106,"AI447", 'Mumbai', 'Ahmedabad', '3950', 6, '2025-05-19 10:30:00'),
(107,"6E702", 'Hyderabad', 'Goa', '4200', 14, '2025-05-19 10:30:00'),
(108,"QP123", 'Jaipur', 'Lucknow', '3300', 7, '2025-05-19 10:30:00'),
(109, "G8415", 'Bnagalore', 'Kolkata', '6100', 5, '2025-05-19 10:30:00'),
(110,"AI984", 'Dehli', 'Patna', '4600', 11, '2025-05-19 10:30:00');

-- 3rd Table: Hotel Table:
select*from hotel;
INSERT INTO hotel (hotel_id, hotel_name, location, hotel_price, available_rooms, created_at)
VALUES
(1001, 'The Grand Residency', 'Mumbai', 4500, 8, '2025-05-19 10:45:00'),
(1002, 'Hotel Green Park', 'Chennai', 3200, 10, '2025-05-19 11:00:00'),
(1003, 'Royal Orchid Central', 'Bangalore', 4800, 5, '2025-05-19 11:15:00'),
(1004, 'Lemon Tree', 'Dehli', 6200, 12, '2025-05-19 11:15:00'),
(1005, 'Trident', 'Hyderabad', 7500, 6, '2025-05-19 11:15:00'),
(1006, 'The Fern Residency', 'Pune', 3700, 9, '2025-05-19 11:15:00'),
(1007, 'ITC Sonar', 'Kolkata', 8000, 4, '2025-05-19 11:15:00'),
(1008, 'Taj Malabar Resort', 'Kochi', 9500, 3, '2025-05-19 11:15:00'),
(1009, 'Radisson Blu', 'Jaipur', 5300, 7, '2025-05-19 11:15:00'),
(1010, 'Hotel Maurya', 'Patna', 4100, 17, '2025-05-19 11:15:00');


-- 4th Table: Booking Table:
select * from hotel;
select * from flights;
select*from booking;

insert into booking (booking_id,user_idfk,flight_idfk,seat_booked,hotel_idfk,rooms_booked,booking_date) values
(001, 1, 101,2, 1001,1, '2025-05-19 12:00:00'),
(008, 8, 103,6, 1003,4, '2025-05-19 12:30:00');

-- For flight seats avialable
insert into booking (user_idfk,flight_idfk,seat_booked,hotel_idfk,rooms_booked,booking_date) values
( 6, 109,10, 1008,6, '2025-05-19 12:00:00');

-- For no hotel rooms avialable
insert into booking (user_idfk,flight_idfk,seat_booked,hotel_idfk,rooms_booked,booking_date) values
( 6, 109,3, 1008,6, '2025-05-19 12:00:00');

-- To check the total_fare is correct
insert into booking (user_idfk,flight_idfk,seat_booked,hotel_idfk,rooms_booked,total_fare,booking_date) values
( 10, 103,1, 1009,1,10000, '2025-05-19 12:30:00');

insert into booking values 
(004, 4, 104,4, 1005,3, '2025-05-19 12:15:00'),
(006, 6, 101,5, 1010,3, '2025-05-19 12:00:00'),
(007, 7, 104,2, 1003,2,'2025-05-19 12:15:00'),
(008, 8, 103,6, 1003,4, '2025-05-19 12:30:00');


--  Users: (5,9) No booking for users
	--     (2,7) users with double booking
    --     (1,3,4,6,8,10) users with one booking
    
-- Flights: (105,107,108,110 ) Flights not been booked
--          (103,104,101) Flights with more booking
--          (102,106,109) Flights with one booking

-- Hotel: (1002,1006,1007) Hotel not been booked
--        (1001,1003,1008) Hotel with more booking
--        (1010,1004,1005,1009) Hotel with one booking
    

 
-- Create the procedure book_trip 
-- If the booking is done, Then minus the seat and room for flight and hotel.


DELIMITER //

CREATE PROCEDURE book_trip (
    IN flight INT,
    IN hotel INT)
BEGIN

        declare flight_seat int;
        declare hotel_room int;
        
        select seat_booked into flight_seat
        from booking
        where flight_idfk = flight; -- id is will be there
  
        -- Update flight seats (flight table)
        UPDATE flights
        SET available_seats = available_seats -flight_seat
        WHERE flight_id = flight;

        select rooms_booked into hotel_room
        from booking
        where hotel_idfk = hotel; -- id is will be there
  
        -- Update hotel rooms (hotel table)
        UPDATE hotel
        SET available_rooms = available_rooms - hotel_room
        WHERE hotel_id = hotel;
END //
DELIMITER ;

call book_trip(101,1001);


-- Create another procedure calculate_cost
-- If the booking is done, Calaculate the total price of hotel and flight
drop procedure calculate_cost;
DELIMITER //

CREATE PROCEDURE calculate_cost (
    IN booking INT)
BEGIN
    DECLARE flight_p int;
    DECLARE hotel_p int;
    declare hotel_room int;
    declare flight_seats int;

    -- Get flight price
    
    select f.flight_price into flight_p from booking b
    join flights f on flight_idfk = flight_id
    where b.booking_id=booking;
   
   -- Get the seats booked
    select seat_booked into flight_seats
	from booking
	where booking_id = booking; -- id is will be there
        
    -- Get hotel price

    select h.hotel_price into hotel_p from booking b
    join hotel h on hotel_idFK=hotel_id
    where b.booking_id=booking;
    
    -- Get the rooms booked
    select rooms_booked into hotel_room
        from booking
        where booking_id = booking; 

    -- Calculate total cost
    UPDATE booking
        SET total_fare = flight_p*flight_seats + hotel_p*hotel_room
        WHERE booking_id = booking;

END;
//
DELIMITER ;


-- Call the procedure
CALL calculate_cost(001);

select*from booking;

-- Create a trigger (before insert) that should check whether the seat and room is available for the booking

drop trigger before_insert_check_seat; 
select*from booking;

DELIMITER  //

CREATE TRIGGER before_insert_check_seat

BEFORE INSERT ON booking

FOR EACH ROW

BEGIN

    DECLARE flight_seats INT;

    DECLARE hotel_rooms INT;

    -- Get current seat availability

    SELECT available_seats INTO flight_seats

    FROM flights

    WHERE flight_id = NEW.flight_idfk;


    -- Get current room availability

    SELECT available_rooms INTO hotel_rooms

    FROM hotel

    WHERE hotel_id = NEW.hotel_idfk;

 
    -- If no seats or no rooms are available, raise error

    IF new.seat_booked > flight_seats THEN

        SIGNAL SQLSTATE '45000'

        SET MESSAGE_TEXT = 'No seats available for the selected flight.';

    END IF;

    IF new.rooms_booked > hotel_rooms THEN

        SIGNAL SQLSTATE '45000'

        SET MESSAGE_TEXT = 'No rooms available for the selected hotel.';

    END IF;

END //

DELIMITER ;



-- Create a trigger (before insert) that should check whether the given amount is correct or not
drop trigger before_insert_check_amount;
DELIMITER //

CREATE TRIGGER before_insert_check_amount
BEFORE INSERT ON booking
FOR EACH ROW
BEGIN
    DECLARE expected_total_fare INT;
    DECLARE flight_p INT;
    DECLARE hotel_p INT;

    -- Get flight price
    SELECT flight_price INTO flight_p
    FROM flights
    WHERE flight_id = NEW.flight_idfk;

    -- Get hotel price
    SELECT hotel_price INTO hotel_p
    FROM hotel
    WHERE hotel_id = NEW.hotel_idfk;

    -- Calculate expected fare
    SET expected_total_fare = (flight_p * NEW.seat_booked) + (hotel_p * NEW.rooms_booked);

    -- Check if the provided fare is correct
    IF NEW.total_fare != expected_total_fare THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'INCORRECT TOTAL FARE AMOUNT:';
    END IF;
END;
//
DELIMITER ;

-- Inner join : all bookings along with user, flight, and hotel details.

select booking.*, users.*,flights.*,hotel.*
from booking
inner join users
on users.user_id= booking.user_idfk
inner join flights
on flights.flight_id= booking.flight_idfk
inner join hotel
on hotel.hotel_id= booking.hotel_idfk;

select users.*, booking.*
from users
inner join booking
on users.user_id= booking.user_idfk;

select flights.*, booking.*
from flights
inner join booking
on flights.flight_id= booking.flight_idfk;

select hotel.*, booking.*
from hotel
inner join booking
on hotel.hotel_id= booking.hotel_idfk;

-- Left join: all users and their bookings, including users who have not made any bookings.

select users.*,booking.*
from users
left join booking
on users.user_id= booking.user_idfk;

-- Right join: all flights and their associated bookings, including flights that have not been booked.

select flights.*, booking.*
from flights
right join booking b
on booking.flight_idfk= flights.flight_id;

-- the hotel with the highest number of bookings. (subquery)

SELECT h.hotel_id, h.hotel_name
FROM hotel h
WHERE h.hotel_id = (
    SELECT b.hotel_idfk
    FROM booking b
    GROUP BY b.hotel_idfk
    ORDER BY COUNT(*) DESC
    LIMIT 1
);


-- users who have made more than one booking. (subquery)

select u.user_id,u.user_name,u.email_id
from users u
where  (
       select count(*)
       from booking b
       where user_idfk =u.user_id
	             ) > 1;
  
select *from booking;

       
