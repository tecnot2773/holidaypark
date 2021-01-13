use holiday_park;

DELETE FROM entrance WHERE key_card IS NOT NULL;
INSERT INTO entrance (house_nr, key_card) VALUES
    (1,1),
    (5,2);