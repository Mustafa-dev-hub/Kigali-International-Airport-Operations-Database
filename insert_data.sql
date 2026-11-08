INSERT INTO airlines (airline_name, country, contact_email) VALUES
('Sudan Airways', 'Sudan', 'info@sudanair.com'),
('Emirates', 'UAE', 'booking@emirates.com'),
('Qatar Airways', 'Qatar', 'support@qatarair.com');

INSERT INTO gates (gate_number, terminal, gate_status) VALUES
('A1', 'Terminal 1', 'Open'),
('B3', 'Terminal 2', 'Closed'),
('C5', 'Terminal 1', 'Maintenance'),
('D2', 'Terminal 2', 'Open');

INSERT INTO passengers (first_name, last_name, passport_number, nationality) VALUES
('Daugla', 'Dourah', 'P202512707', 'Sudanese'),
('Mustafa', 'Mahadi Mohamed', 'P202512507', 'Sudanese'),
('Mousa', 'Mohamed Abakar', 'P202512517', 'Sudanese'),
('Hasoon', 'Issa', 'P202511533', 'Sudanese'),
('Abdallah', 'Ahmad', 'P202511866', 'Sudanese'),
('Osman', 'Musa', 'P202511534', 'Sudanese'),
('Koumakang', 'Bonheur', 'P202411208', 'Sudanese'),
('Anas', 'Omer', 'P202512831', 'Sudanese'),
('Anfal', 'Ali', 'P202511770', 'Sudanese'),
('Loai', 'Mohamed', 'P202511452', 'Sudanese');

INSERT INTO flights (flight_number, departure_time, arrival_time, flight_status, airline_id, gate_id) VALUES
('SD101', '2026-11-10 08:00:00', '2026-11-10 11:30:00', 'Scheduled', 1, 1),
('EK202', '2026-11-11 14:00:00', '2026-11-11 22:00:00', 'Delayed', 2, 2),
('QR303', '2026-11-12 23:45:00', '2026-11-13 04:15:00', 'Scheduled', 3, 3);

INSERT INTO tickets (booking_reference, seat_number, ticket_class, ticket_status, flight_id, passenger_id) VALUES
('REF001', '01A', 'First Class', 'Confirmed', 1, 1),
('REF002', '01B', 'First Class', 'Confirmed', 1, 2),
('REF003', '10A', 'Business', 'Confirmed', 1, 3),
('REF004', '10B', 'Business', 'Confirmed', 2, 4),
('REF005', '12C', 'Economy', 'Confirmed', 2, 5),
('REF006', '14D', 'Economy', 'Confirmed', 2, 6),
('REF007', '15A', 'Economy', 'Confirmed', 3, 7),
('REF008', '15B', 'Economy', 'Confirmed', 3, 8),
('REF009', '16C', 'Economy', 'Confirmed', 3, 9),
('REF010', '16D', 'Economy', 'Confirmed', 3, 10);

INSERT INTO check_ins (checkin_time, checkin_status, baggage_count, ticket_id) VALUES
('2026-11-10 06:00:00', 'Completed', 2, 1),
('2026-11-10 06:15:00', 'Completed', 1, 2),
('2026-11-10 06:30:00', 'Completed', 2, 3),
('2026-11-11 11:00:00', 'Pending', 3, 4),
('2026-11-11 11:20:00', 'Completed', 1, 5),
('2026-11-11 11:45:00', 'Completed', 2, 6);