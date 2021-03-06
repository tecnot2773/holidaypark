USE holiday_park;

DROP TABLE IF EXISTS way_of_delivery;
CREATE TABLE way_of_delivery
(
    way_of_delivery_id INTEGER NOT NULL AUTO_INCREMENT,
    way_of_delivery_type ENUM('email', 'mail', 'at_checkout'),
    offer_id INTEGER NULL,
    contract_id INTEGER NULL,
    bill_id INTEGER NULL,

    PRIMARY KEY (way_of_delivery_id)
);

DROP TABLE IF EXISTS email;
CREATE TABLE email
(
    email_id INTEGER NOT NULL AUTO_INCREMENT,
    way_of_delivery_id INTEGER,
    timestamp DATETIME,

    PRIMARY KEY (email_id)
);

DROP TABLE IF EXISTS mail;
CREATE TABLE mail
(
    mail_id INTEGER NOT NULL AUTO_INCREMENT,
    way_of_delivery_id INTEGER,

    PRIMARY KEY (mail_id)
);

DROP TABLE IF EXISTS at_checkout;
CREATE TABLE at_checkout
(
    checkout_id INTEGER NOT NULL AUTO_INCREMENT,
    way_of_delivery_id INTEGER,

    PRIMARY KEY (checkout_id)
)