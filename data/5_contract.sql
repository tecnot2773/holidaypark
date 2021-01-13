use holiday_park;

DELETE FROM contract WHERE contract_id IS NOT NULL;
INSERT INTO contract (customer_address, customer_name, house_nr, offer_id) VALUES
    ('6125 Toy Spring Apt. 063 New Frankchester', 'Tanner Kirlin', 1, 1),
    ('5655 Afton Spurs South Amiya', 'Hailey Heller', 3, 2),
    ('869 Mallie Inlet Apt. 180 Keefeport', 'Viola Kessler', 5, 5);