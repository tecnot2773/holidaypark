use holiday_park;

DELETE FROM way_of_delivery WHERE way_of_delivery_id IS NOT NULL;
INSERT INTO way_of_delivery (way_of_delivery_type, offer_id, contract_id, bill_id) VALUES
    ('mail', 1),
    ('email', 2),
    ('mail', 5);

DELETE FROM mail WHERE mail_id IS NOT NULL;
INSERT INTO mail (way_of_delivery_id) VALUES
    (1),
    (3);

DELETE FROM email WHERE email_id IS NOT NULL;
INSERT INTO email (way_of_delivery_id) VALUES
    (2);

