USE holiday_park;

DROP TABLE IF EXISTS reception;
CREATE TABLE reception
(
    ID INTEGER NOT NULL AUTO_INCREMENT,
    phone_nr VARCHAR(255),
    name VARCHAR(255),
    address VARCHAR(255),

    PRIMARY KEY (ID)
)

