use holiday_park;
DELETE FROM booking_request WHERE booking_request_id IS NOT NULL;
ALTER TABLE booking_request AUTO_INCREMENT = 1;
INSERT INTO booking_request (type_of_house, voucher, is_canceled, rebook, price, season, customer_id) VALUES
    ('Bungalow', FALSE, FALSE, FALSE, 600.00, 'Winter', 5),
    ('House', TRUE, FALSE, FALSE, 1500.00, 'Summer', 5),
    ('Bungalow', FALSE, FALSE, FALSE, 750.00, 'Summer', 6),
    ('Bungalow', FALSE, FALSE, FALSE, 750.00, 'Summer', 7),
    ('Apartment', FALSE, TRUE, FALSE, 1500.00, 'Winter', 8),
    ('Apartment', FALSE, FALSE, FALSE, 1200.00, 'Spring', 9),
    ('House', FALSE, FALSE, FALSE, 1400.00, 'Autumn', 10);