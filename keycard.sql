USE holiday_park;

DROP TABLE IF EXISTS key_card;
CREATE TABLE key_card
(
    key_card_id INTEGER NOT NULL AUTO_INCREMENT,
    code BINARY,
    check_in DATE,
    check_out DATE,
    card_owner_id INTEGER, /* foreign key contract*/
    key_card_type ENUM('child', 'adult'),
    age INTEGER,
    name VARCHAR(255),
    reception_id INTEGER NULL, /* foreign key reception */
    bill_nr INTEGER NULL, /* foreign key bill */

    PRIMARY KEY (key_card_id)
);