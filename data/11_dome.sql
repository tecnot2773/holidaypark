use holiday_park;

DELETE FROM dome WHERE dome_id IS NOT NULL;
INSERT INTO dome (dome_id) VALUES
    (1);

DELETE FROM has_entered WHERE dome_id IS NOT NULL;
INSERT INTO has_entered (key_card_id, dome_id) VALUES
    (1, 1),
    (1, 1),
    (2, 1);

DELETE FROM toilet WHERE toilet_id IS NOT NULL;
INSERT INTO toilet (cleaning_interval_in_days, b_flag, changing_table, u_flag, toilet_stall, pissoir, d_flag, emergency, dome_id) VALUES
    (1,  1, TRUE, FALSE, NULL, NULL, NULL, NULL, 1),
    (1, NULL, NULL, 1, 3, 2, NULL, NULL, 1),
    (1, NULL, NULL, NULL, NULL, NULL, 1, TRUE, 1);

DELETE FROM pool WHERE pool_id IS NOT NULL;
INSERT INTO pool (opening, nr_of_cabins, max_customers, slides, outdoor_pool, dome_id) VALUES
    ('Every day 09-18', 20, 40, 2, true, 1);

DELETE FROM restaurant WHERE restaurant_id IS NOT NULL;
INSERT INTO restaurant (open_at, smoking_room_exists, nr_of_tables, dome_id) VALUES
    ('Every day 12-22', TRUE, 20, 1);

DELETE FROM vehicle WHERE vehicle_id IS NOT NULL;
INSERT INTO vehicle (requires_adult_key_card, dome_id) VALUES
    (TRUE, 1),
    (TRUE, 1),
    (FALSE, 1),
    (FALSE, 1);

DELETE FROM vehicle_cart WHERE vehicle_id IS NOT NULL;
INSERT INTO vehicle_cart (vehicle_id, cart_nr, currently_in_use, max_capacities) VALUES
    (1, 1, FALSE, 4),
    (2, 2, FALSE, 4);

DELETE FROM vehicle_bike WHERE vehicle_id IS NOT NULL;
INSERT INTO vehicle_bike (vehicle_id, size_in_inch, electric, model, training_wheels, bike_nr) VALUES
    (3,15, FALSE, 'Child Bike', FALSE, 1),
    (4, 21, TRUE, 'Mountain Bike', FALSE, 2);

