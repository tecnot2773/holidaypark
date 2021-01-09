USE holiday_park;

DROP TABLE IF EXISTS booking_request;
CREATE TABLE booking_request
(
    booking_request_id INTEGER NOT NULL AUTO_INCREMENT,
    type_of_house ENUM('Bungalow', 'Apartment', 'House'),
    voucher BOOLEAN,
    is_canceled BOOLEAN,
    rebook BOOLEAN,
    price DECIMAL(8,2),
    season VARCHAR(255),

    customer_id INTEGER NULL,

    PRIMARY KEY (booking_request_id)
)