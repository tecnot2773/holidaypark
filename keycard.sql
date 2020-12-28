USE holiday_park;

DROP TABLE IF EXISTS keycard;
CREATE TABLE key_card
(
    key_card_id INTEGER,
    code BINARY,
    check_in DATE,
    check_out DATE,
    card_owner_id INTEGER, /* foreign key contract*/
    bill_nr INTEGER,     /* foreign key bill*/
    adult_key_card BOOLEAN NULL,
    child_key_card BOOLEAN NULL,

    reception_id INTEGER, /* foreign key reception */
    bill_id INTEGER, /* foreign key bill */

    PRIMARY KEY (key_card_id)
)


DROP TABLE IF EXISTS has_entered;
CREATE TABLE has_entrance
(
    id INTEGER,
    key_card_id INTEGER,
    dome_id INTEGER,

    PRIMARY KEY (id)
)