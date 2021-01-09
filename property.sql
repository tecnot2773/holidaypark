USE holiday_park;

DROP TABLE IF EXISTS property;
CREATE TABLE property
(
    house_nr INTEGER NOT NULL AUTO_INCREMENT,
    address VARCHAR(255),
    pets_allowed BOOLEAN,
    max_occupants INTEGER,
    child_friendly BOOLEAN,
    wifi_available BOOLEAN,
    inventory VARCHAR(255),
    reservation BOOLEAN,
    b_flag BOOLEAN,
    a_flag BOOLEAN,
    h_flag BOOLEAN,
    floor INTEGER NULL,

    PRIMARY KEY (house_nr)
)