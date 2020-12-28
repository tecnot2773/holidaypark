USE holiday_park;

DROP TABLE IF EXISTS way_of_delivery;
CREATE TABLE way_of_delivery
(
    way_of_delivery_id INTEGER,
    way_of_delivery_type ENUM('email', 'mail', 'at_checkout'),
    offer_id INTEGER,
    contract_id INTEGER,
    bill_id INTEGER,

    PRIMARY KEY (way_of_delivery_id)
);

DROP TABLE IF EXISTS email;
CREATE TABLE email
(
    email_id INTEGER,
    timestamp DATETIME,

    PRIMARY KEY (email_id)
);

DROP TABLE IF EXISTS mail;
CREATE TABLE mail
(
    mail_id INTEGER,

    PRIMARY KEY (mail_id)
);

DROP TABLE IF EXISTS at_checkout;
CREATE TABLE at_checkout
(
    checkout_id INTEGER,

    PRIMARY KEY (checkout_id)
)