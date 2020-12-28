use holiday_park;

DROP TABLE IF EXISTS offer;
CREATE TABLE offer
(
    booking_request_id INTEGER,
    season VARCHAR(255),
    discount DECIMAL(8,2),
    price DECIMAL(8,2),
    property_id INTEGER, /* foreign key property */
    employee_id INTEGER, /* foreign key person */

    PRIMARY KEY (booking_request_id)
)