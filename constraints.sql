use holiday_park;

/* is_in_charge_of relation between person(employee) and person(employee) */
ALTER TABLE is_in_charge_of
    ADD CONSTRAINT is_in_charge_of_super
        FOREIGN KEY (supervisor) REFERENCES person (ID)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

ALTER TABLE is_in_charge_of
    ADD CONSTRAINT is_in_charge_of_sub
        FOREIGN KEY (subordinate) REFERENCES person (ID)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* gifts_booking_to relation between person(customer) and person(customer) */
ALTER TABLE gifts_booking_to
    ADD CONSTRAINT gifts_booking_to_gifter
        FOREIGN KEY (gifter) REFERENCES person (ID)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

ALTER TABLE gifts_booking_to
    ADD CONSTRAINT gifts_booking_to_giftee
        FOREIGN KEY (giftee) REFERENCES person (ID)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* check_outs relation between person(customer) and reception */
ALTER TABLE check_outs
    ADD CONSTRAINT check_out_person
        FOREIGN KEY (customer_id) REFERENCES person (ID)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

ALTER TABLE check_outs
    Add CONSTRAINT check_out_reception
        FOREIGN KEY (reception_id) REFERENCES reception (ID)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* works_at relation between person(employee) and reception */
ALTER TABLE works_at
    ADD CONSTRAINT works_at_person
        FOREIGN KEY (employee_id) REFERENCES person (ID)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

ALTER TABLE works_at
    ADD CONSTRAINT works_at_reception
        FOREIGN KEY (reception_id) REFERENCES reception (ID)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* is_lent_to_at_checkin relation between person(customer), reception and key_card */
ALTER TABLE is_lent_to_at_checkin
    ADD CONSTRAINT is_lent_to_at_checkin_person
        FOREIGN KEY (customer_id) REFERENCES person (ID)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

ALTER TABLE is_lent_to_at_checkin
    ADD CONSTRAINT is_lent_to_at_checkin_reception
        FOREIGN KEY (reception_id) REFERENCES reception (ID)
            ON DELETE SET NULL
            ON UPDATE CASCADE;

ALTER TABLE is_lent_to_at_checkin
    ADD CONSTRAINT is_lent_to_at_checkin_key_card
        FOREIGN KEY (key_card_id) REFERENCES key_card (key_card_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* key_card - reception relation */
ALTER TABLE key_card
    ADD CONSTRAINT key_card_reception
        FOREIGN KEY (reception_id) REFERENCES reception (ID)
            ON DELETE SET NULL
            ON UPDATE CASCADE;

/* booking_request - customer relation */
ALTER TABLE booking_request
    ADD CONSTRAINT booking_request_customer
        FOREIGN KEY (customer_id) REFERENCES person (ID)
            ON DELETE SET NULL
            ON UPDATE CASCADE;

/* offer - booking_request relation */
ALTER TABLE offer
    ADD CONSTRAINT offer_booking_request
        FOREIGN KEY (booking_request_id) REFERENCES booking_request (booking_request_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* offer - person(employee) relation */
ALTER TABLE offer
    ADD CONSTRAINT offer_employee
        FOREIGN KEY (employee_id) REFERENCES person (ID)
            ON DELETE SET NULL
            ON UPDATE CASCADE;

/* offer - property relation */
ALTER TABLE offer
    ADD CONSTRAINT offer_relation
        FOREIGN KEY (property_id) REFERENCES property (house_nr)
            ON DELETE SET NULL
            ON UPDATE CASCADE;

/* contract - offer relation */
ALTER TABLE contract
    ADD CONSTRAINT contract_offer
        FOREIGN KEY (offer_id) REFERENCES offer (booking_request_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* bill - contract relation */
ALTER TABLE bill
    ADD CONSTRAINT bill_contract
        FOREIGN KEY (contract_id) REFERENCES contract (contract_id)
            ON DELETE SET NULL
            ON UPDATE CASCADE;

/* offer - way_of_delivery relation */
ALTER TABLE way_of_delivery
    ADD CONSTRAINT way_of_delivery_offer
        FOREIGN KEY (offer_id) REFERENCES offer (booking_request_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* contract - way_of_delivery relation */
ALTER TABLE way_of_delivery
    ADD CONSTRAINT way_of_delivery_contract
        FOREIGN KEY (contract_id) REFERENCES contract (contract_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* bill - way_of_delivery relation */
ALTER TABLE way_of_delivery
    ADD CONSTRAINT way_of_delivery_bill
        FOREIGN KEY (bill_id) REFERENCES bill (bill_nr)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* key_card - bill relation */
ALTER TABLE key_card
    ADD CONSTRAINT key_card_bill
        FOREIGN KEY (bill_nr) REFERENCES bill (bill_nr)
            ON DELETE SET NULL
            ON UPDATE CASCADE;

/* key_card - dome relation */
ALTER TABLE has_entered
    ADD CONSTRAINT has_entered_key_card
        FOREIGN KEY (key_card_id) REFERENCES key_card (key_card_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

ALTER TABLE has_entered
    ADD CONSTRAINT has_entered_dome
        FOREIGN KEY (dome_id) REFERENCES dome (dome_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* booking_request_activities - vehicle relation */
ALTER TABLE vehicle_request
    ADD CONSTRAINT vehicle_request_booking
        FOREIGN KEY (booking_req_id) REFERENCES booking_request_activities (booking_req_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

ALTER TABLE vehicle_request
    ADD CONSTRAINT vehicle_request_vehicle
        FOREIGN KEY (vehicle_id) REFERENCES vehicle (vehicle_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

/* booking_request_activities - restaurant relation */
ALTER TABLE restaurant_request
    ADD CONSTRAINT restaurant_request_booking
        FOREIGN KEY (booking_req_id) REFERENCES booking_request_activities (booking_req_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

ALTER TABLE restaurant_request
    ADD CONSTRAINT restaurant_request_restaurant
        FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

ALTER TABLE vehicle_bike
    ADD CONSTRAINT vehicle_bike_constraint
        FOREIGN KEY (vehicle_id) REFERENCES vehicle (vehicle_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

ALTER TABLE vehicle_cart
    ADD CONSTRAINT vehicle_cart_constraint
        FOREIGN KEY (vehicle_id) REFERENCES vehicle (vehicle_id)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;