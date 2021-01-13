use holiday_park;

DELETE FROM key_card WHERe key_card_id IS NOT NULL;
INSERT INTO key_card (code, check_in, check_out, card_owner_id, adult_key_card, child_key_card, reception_id, bill_nr) VALUES
    (1, '2020-12-12', '2021-01-01', 5, 1, NULL, 1, 1),
    (2, '2020-12-12', '2021-01-01', 8, 1, NULL, 1, 2);