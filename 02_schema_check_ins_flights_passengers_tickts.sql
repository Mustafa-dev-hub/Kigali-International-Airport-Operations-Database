-- 1. Flights table
CREATE TABLE flights (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(20) NOT NULL,
    departure_time DATETIME,
    arrival_time DATETIME,
    flight_status VARCHAR(50),
    airline_id INT,
    gate_id INT
);

-- 2. Passengers table
CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    passport_number VARCHAR(50) UNIQUE NOT NULL,
    nationality VARCHAR(50)
);

-- 3. Tickets table
CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    booking_reference VARCHAR(50) UNIQUE NOT NULL,
    seat_number VARCHAR(10),
    ticket_class VARCHAR(50),
    ticket_status VARCHAR(50),
    flight_id INT,
    passenger_id INT,
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)
);

-- 4. Check-ins table
CREATE TABLE check_ins (
    checkin_id INT PRIMARY KEY,
    checkin_time DATETIME,
    checkin_status VARCHAR(50),
    baggage_count INT,
    ticket_id INT UNIQUE,
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);