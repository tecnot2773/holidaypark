use holiday_park;

DELETE FROM bill WHERE bill_nr IS NOT NULL;
INSERT INTO bill (customer_id, house_nr, address, name, price, date, payment_type, contract_id) VALUES
    (5, 1, '6125 Toy Spring Apt. 063 New Frankchester', 'Tanner Kirlin', 600.00, '2020-01-01', 'Cash', 1),
    (8, 5, '869 Mallie Inlet Apt. 180 Keefeport', 'Viola Kessler', 1500.00, '2020-01-01', 'Card', 3);