USE holiday_park;

DROP TABLE IF EXISTS person;
CREATE TABLE person
(
    ID  INTEGER,
    first_name   VARCHAR(255),
    surname      VARCHAR(255),
    street       VARCHAR(255),
    town         VARCHAR(255),
    phone_number VARCHAR(255),
    birth_date   DATE,
    age INTEGER AS (TIMESTAMPDIFF(YEAR, birth_date, CURDATE())),
    c_flag       BOOLEAN,
    customer_number  INTEGER,
    e_flag       BOOLEAN,
    SSN          INTEGER,

    PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS is_in_charge_of;
CREATE TABLE is_in_charge_of
(
    supervisor INTEGER,
    subordinate INTEGER,

    PRIMARY KEY (supervisor, subordinate)
);

DROP TABLE IF EXISTS gifts_booking_to;
CREATE TABLE gifts_booking_to
(
    gifter INTEGER,
    giftee INTEGER,

    PRIMARY KEY (gifter, giftee)
);

DROP TABLE IF EXISTS check_outs;
CREATE TABLE check_outs
(
    check_out_id INTEGER,
    customer_id INTEGER,
    reception_id INTEGER,
    key_cards_were_returned BOOLEAN,

    PRIMARY KEY (check_out_id)
);

DROP TABLE IF EXISTS works_at;
CREATE TABLE works_at
(
    employee_id  INTEGER,
    reception_id INTEGER,

    PRIMARY KEY (employee_id, reception_id)
);

DROP TABLE IF EXISTS is_lent_to_at_checkin;
CREATE TABLE is_lent_to_at_checkin
(
    id INTEGER,
    customer_id INTEGER,
    reception_id INTEGER,
    key_card_id INTEGER,

    PRIMARY KEY (id)
);


