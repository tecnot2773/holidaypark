use holiday_park;

DROP TABLE IF EXISTS contract;
ALTER TABLE contract AUTO_INCREMENT = 1;
CREATE TABLE contract
(
    contract_id INTEGER NOT NULL AUTO_INCREMENT,
    customer_address VARCHAR(255),
    customer_name VARCHAR(255),
    house_nr INTEGER,
    offer_id INTEGER, /* foreign key offer */

    PRIMARY KEY (contract_id)
)