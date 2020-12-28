USE holiday_park;

DROP TABLE IF EXISTS booking_request_activities;
CREATE TABLE booking_request_activities
(
    booking_req_id INTEGER,
    time DATETIME,
    booking_time DATETIME,
    type VARCHAR(255),
    nr_of_people INTEGER,
    restaurant_id INTEGER NULL, /* foreign key restaurant */

    PRIMARY KEY (booking_req_id)
)