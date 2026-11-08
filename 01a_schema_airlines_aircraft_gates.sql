-- Mustafa: airlines, gates (based on team ERD)
CREATE DATABASE IF NOT EXISTS kigali_airport;
USE kigali_airport;

CREATE TABLE airlines (
    airline_id INT PRIMARY KEY AUTO_INCREMENT,
    airline_name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    contact_email VARCHAR(100)
);

CREATE TABLE gates (
    gate_id INT PRIMARY KEY AUTO_INCREMENT,
    gate_number VARCHAR(10) UNIQUE NOT NULL,
    terminal VARCHAR(20),
    gate_status VARCHAR(20) DEFAULT 'available'
);