use holiday_park;

DELETE FROM property WHERE house_nr IS NOT NULL;
ALTER TABLE property AUTO_INCREMENT = 1;
INSERT INTO property (address, pets_allowed, max_occupants, child_friendly, wifi_available, inventory, reservation, b_flag, a_flag, h_flag, floor) VALUES
    ('Parkstr 1', TRUE, 5, TRUE, TRUE, 'Microwave, Oven', TRUE, TRUE, FALSE, FALSE, NULL),
    ('Parkstr 2', TRUE, 8, TRUE, TRUE, 'Grill, Microwave', TRUE, TRUE, FALSE, FALSE, NULL),
    ('Parkstr 11', TRUE, 12, TRUE, TRUE, 'Grill, Microwave, Oven', FALSE, FALSE, FALSE, TRUE, 3),
    ('Parkstr 12', FALSE, 12, TRUE, FALSE, 'Grill, Oven', TRUE, FALSE, FALSE, TRUE, 3),
    ('Dome 1a', FALSE, 4, TRUE, TRUE, 'Microwave', TRUE, FALSE, TRUE, FALSE, NULL),
    ('Dome 1b', FALSE, 4, TRUE, FALSE, 'Microwave', FALSE, FALSE, TRUE, FALSE, NULL);