USE holiday_park;

DROP TABLE IF EXISTS dome;
CREATE TABLE dome
(
    dome_id INTEGER NOT NULL AUTO_INCREMENT,
    /* activity_type ENUM('toilet', 'pool', 'restaurant', 'vehicle'), */

    PRIMARY KEY (dome_id)

);

DROP TABLE IF EXISTS toilet;
CREATE TABLE toilet
(
    toilet_id INTEGER NOT NULL AUTO_INCREMENT,
    cleaning_interval_in_days INTEGER,
    b_flag BOOLEAN,
    changing_table BOOLEAN,
    u_flag BOOLEAN,
    toilet_stall INTEGER,
    pissoir INTEGER,
    d_flag BOOLEAN,
    emergency BOOLEAN,

    dome_id INTEGER, /* foreign key dome */

    PRIMARY KEY (toilet_id)
);

DROP TABLE IF EXISTS pool;
CREATE TABLE pool
(
    pool_id INTEGER NOT NULL AUTO_INCREMENT,
    opening VARCHAR(255),
    nr_of_cabins INTEGER,
    max_customers INTEGER,
    slides INTEGER,
    outdoor_pool BOOLEAN,

    dome_id INTEGER, /* foreign key dome */

    PRIMARY KEY (pool_id)
);

DROP TABLE IF EXISTS restaurant;
CREATE TABLE restaurant
(
  restaurant_id INTEGER NOT NULL AUTO_INCREMENT,
  open_at VARCHAR(255),
  smoking_room_exists BOOLEAN,
  nr_of_tables INTEGER,

  dome_id INTEGER, /* foreign key dome */

  PRIMARY KEY (restaurant_id)
);

DROP TABLE IF EXISTS vehicle;
CREATE TABLE vehicle
(
    vehicle_id INTEGER NOT NULL AUTO_INCREMENT,
    period_begin DATE,
    timespan_in_days INTEGER,
    period_end DATE AS (DATE_ADD(period_begin, INTERVAL timespan_in_days DAY)),
    requires_adult_key_card BOOLEAN,
    cart_nr INTEGER NULL, /* golf cart attribute */
    currently_in_use BOOLEAN NULL, /* golf cart attribute */
    max_capacities INTEGER NULL, /* golf cart attribute */
    size_in_inch INTEGER NULL, /* bike attribute */
    electric BOOLEAN NULL, /* bike attribute */
    model VARCHAR(255) NULL, /* bike attribute */
    training_wheels BOOLEAN, /* bike attribute */
    bike_nr INTEGER NULL, /* bike attribute */

    dome_id INTEGER, /* foreign key dome */

    PRIMARY KEY (vehicle_id)
);

DROP TABLE IF EXISTS has_entered;
CREATE TABLE has_entered
(
    id INTEGER NOT NULL AUTO_INCREMENT,
    key_card_id INTEGER,
    dome_id INTEGER,

    PRIMARY KEY (id)
);