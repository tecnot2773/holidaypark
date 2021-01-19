use holiday_park;

DELETE FROM key_card WHERE key_card_id IS NOT NULL;
INSERT INTO key_card (code, check_in, check_out, card_owner_id, key_card_type, age, name, reception_id, bill_nr) VALUES
    (1, '2020-12-12', '2021-01-01', 5, 'adult', NULL, 'Tanner Kirlin', 1, 1),
    (2, '2020-12-12', '2021-01-01', 8, 'adult', NULL, 'Viola Kessler', 1, 2);


use holiday_park;
DELETE FROM is_lent_to_at_checkin WHERE id IS NOT NULL;
INSERT INTO is_lent_to_at_checkin (customer_id, reception_id, key_card_id) VALUES
(5, 1, 1),
(8, 1, 2);