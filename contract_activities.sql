USE holiday_park;

DROP TABLE IF EXISTS contract_activities;
CREATE TABLE contract_activities
(
    contract_id INTEGER,
    price DECIMAL(8,2),
    name VARCHAR(255),
    time DATETIME,
    booking_time DATETIME,
    type VARCHAR(255),

    key_card_id INTEGER, /* foreign key key_card */
    booking_req_id INTEGER, /* foreign key booking_request_activities_ */

    PRIMARY KEY (contract_id)
);

DROP TABLE IF EXISTS vehicle_request;
CREATE TABLE vehicle_request
(
    vehicle_id INTEGER,
    booking_req_id INTEGER,

    PRIMARY KEY (vehicle_id, booking_req_id)
);


