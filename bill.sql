use holiday_park;

DROP TABLE IF EXISTS bill;
CREATE TABLE bill
(
    bill_nr INTEGER NOT NULL AUTO_INCREMENT,
    customer_id INTEGER, /* foreign key person */
    house_nr INTEGER, /* foreign key property */
    address VARCHAR(255),
    name VARCHAR(255),
    price DECIMAL(8,2),
    date DATE,
    payment_type VARCHAR(255),
    contract_id INTEGER, /* foreign key contract */

    PRIMARY KEY (bill_nr)
)