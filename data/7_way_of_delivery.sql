use holiday_park;

DELETE FROM way_of_delivery WHERE way_of_delivery_id IS NOT NULL;
INSERT INTO way_of_delivery (way_of_delivery_type, offer_id, contract_id, bill_id) VALUES
    ('mail', 1, NULL, NULL),
    ('email', 2, NULL, NULL),
    ('mail', 5, NULL, NULL),

    ('mail', NULL, 1, NULL),
    ('email', NULL, 2, NULL),
    ('mail', NULL, 3, NULL),

    ('at_checkout', NULL, NULL, 1),
    ('at_checkout', NUll, NULL, 2);

DELETE FROM mail WHERE mail_id IS NOT NULL;
INSERT INTO mail (way_of_delivery_id) VALUES
    (1),
    (3),
    (4),
    (6);

DELETE FROM email WHERE email_id IS NOT NULL;
INSERT INTO email (way_of_delivery_id) VALUES
    (2),
    (5);

DELETE FROM at_checkout WHERE checkout_id IS NOT NULL;
INSERT INTO at_checkout(way_of_delivery_id) VALUE
    (7),
    (8);


