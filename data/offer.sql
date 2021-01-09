use holiday_park;

DELETE FROM offer WHERE booking_request_id IS NOT NULL;
INSERT INTO offer (booking_request_id, season, discount, price, property_id, employee_id) VALUES
    (1, 'Winter', 0.0, 600.00, 1, 2),
    (2, 'Summer', 100.0, 1500.00, 3, 1),
    (5, 'Winter', 0.0, 1500.00, 5, 2);