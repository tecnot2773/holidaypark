USE holiday_park;

DROP TABLE IF EXISTS booking_request_activities;
CREATE TABLE booking_request_activities
(
    booking_req_id INTEGER NOT NULL AUTO_INCREMENT,
    time DATETIME,
    booking_time DATETIME,
    type VARCHAR(255),
    nr_of_people INTEGER,
    restaurant_id INTEGER NULL, /* foreign key restaurant */

    PRIMARY KEY (booking_req_id)
);

DROP TABLE IF EXISTS restaurant_request;
CREATE TABLE restaurant_request
(
    id INTEGER NOT NULL AUTO_INCREMENT,
    booking_req_id INTEGER,
    restaurant_id INTEGER,

    PRIMARY KEY (id)
);