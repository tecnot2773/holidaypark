use holiday_park;

DELETE FROM booking_request_activities WHERE booking_req_id IS NOT NULL;
INSERT INTO booking_request_activities (time, booking_time, type, nr_of_people, restaurant_id) VALUES
    ('2020-12-31 12:00:00', '2020-12-31 12:00:00', 'Restaurant', 2, 1),
    ('2020-12-31 12:00:00', '2020-12-31 12:00:00', 'Vehicle', 2, NULL),
    ('2021-01-05 12:00:00', '2020-12-31 12:00:00', 'Restaurant', 2, 1);

DELETE FROM contract_activities WHERE contract_id IS NOT NULL;
INSERT INTO contract_activities (price, name, time, booking_time, type, key_card_id, booking_req_id) VALUES
    (20, 'Tanner Kirlin', '2020-12-31 12:00:00', '2020-12-31 12:00:00', 'Restaurant', 1, 1),
    (50, 'Tanner Kirlin', '2020-12-31 12:00:00', '2020-12-31 12:00:00', 'Vehicle', 1, 2),
    (20, 'Caroline Schaden', '2021-01-05 12:00:00', '2020-12-31 12:00:00', 'Restaurant', 2, 3);

DELETE FROM vehicle_request WHERE booking_req_id IS NOT NULL;
INSERT INTO vehicle_request (vehicle_id, booking_req_id) VALUES
    (1, 2);

DELETE FROM restaurant_request WHERE id IS NOT NULL;
INSERT INTO restaurant_request (booking_req_id, restaurant_id) VALUES
    (1, 1),
    (3, 1);
