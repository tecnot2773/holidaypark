USE holiday_park;

DROP TABLE IF EXISTS key_card;
CREATE TABLE key_card
(
    key_card_id INTEGER NOT NULL AUTO_INCREMENT,
    code BINARY,
    check_in DATE,
    check_out DATE,
    card_owner_id INTEGER, /* foreign key contract*/
    adult_key_card BOOLEAN NULL,
    child_key_card BOOLEAN NULL,

    reception_id INTEGER NULL, /* foreign key reception */
    bill_nr INTEGER NULL, /* foreign key bill */

    PRIMARY KEY (key_card_id)
);


DROP TABLE IF EXISTS has_entrance;
CREATE TABLE has_entrance
(
    id INTEGER NOT NULL AUTO_INCREMENT,
    key_card_id INTEGER,
    dome_id INTEGER,

    PRIMARY KEY (id)
);