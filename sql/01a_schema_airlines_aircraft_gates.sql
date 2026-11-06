-- Mustafa: airlines, aircraft, gates
CREATE DATABASE IF NOT EXISTS kigali_airport;
USE kigali_airport;

CREATE TABLE airlines (
    airline_id INT PRIMARY KEY AUTO_INCREMENT,
    airline_name VARCHAR(100) NOT NULL,
    iata_code CHAR(2) UNIQUE NOT NULL,
    country VARCHAR(50)
);

CREATE TABLE aircraft (
    aircraft_id INT PRIMARY KEY AUTO_INCREMENT,
    airline_id INT NOT NULL,
    model VARCHAR(50) NOT NULL,
    registration_number VARCHAR(20) UNIQUE NOT NULL,
    capacity INT NOT NULL,
    FOREIGN KEY (airline_id) REFERENCES airlines(airline_id)
);

CREATE TABLE gates (
    gate_id INT PRIMARY KEY AUTO_INCREMENT,
    gate_number VARCHAR(10) UNIQUE NOT NULL,
    terminal VARCHAR(20),
    status ENUM('available','occupied','maintenance') DEFAULT 'available'
);
