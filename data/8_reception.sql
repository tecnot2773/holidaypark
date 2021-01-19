use holiday_park;

DELETE FROM reception WHERE ID IS NOT NULL;
INSERT INTO reception (phone_nr, name, address) VALUES
    (123, 'Mail Reception', 'Plaza 1');

DELETE FROM works_at WHERE employee_id IS NOT NULL;
INSERT INTO works_at (employee_id, reception_id) VALUES
    (2, 1),
    (3, 1);

DELETE FROM check_outs WHERE check_out_id IS NOT NULL;
INSERT INTO check_outs (customer_id, reception_id, key_cards_were_returned) VALUES
    (5, 1, 1),
    (8, 1, 0);
