use holiday_park;

DROP TABLE IF EXISTS entrance;
CREATE TABLE entrance /* describes relationship belongs_to and unlocks */
(
    house_nr INTEGER,
    key_card INTEGER,

    PRIMARY KEY (house_nr, key_card)
)