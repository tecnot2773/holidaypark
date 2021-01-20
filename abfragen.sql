use holiday_park;
/* Kunden mit dem Nachnamen Schaden */
SELECT * FROM person WHERE c_flag = true AND surname = 'Schaden';

/* Alle Fahrzeuge die im Moment nicht in benutzung sind */
use holiday_park;
SELECT vehicle.vehicle_id, vc.cart_nr as 'Individual Vehicle Number' FROM vehicle
    JOIN vehicle_cart vc on vehicle.vehicle_id = vc.vehicle_id
    WHERE currently_in_use = FALSE
UNION
SELECT vehicle.vehicle_id, vb.bike_nr FROM vehicle
    JOIN vehicle_bike vb on vehicle.vehicle_id = vb.vehicle_id
    WHERE currently_in_use = FALSE;

/* Alle Checkouts wo die key card nicht zurück gegeben wurde und der Customer schon länger als 10 Tage abgereist ist */
use holiday_park;
SELECT check_out_id, p.first_name, p.surname, key_cards_were_returned, kc.check_out FROM check_outs
    JOIN person p on p.ID = check_outs.customer_id
    JOIN is_lent_to_at_checkin iltac on p.ID = iltac.customer_id
    JOIN key_card kc on kc.key_card_id = iltac.key_card_id
    WHERE key_cards_were_returned = 0 AND DATE(kc.check_out) < DATE_SUB(CURDATE(), INTERVAL 10 DAY);



/* Alle Buchungsanfragen mit Vor- und Nachname der Kunden */
use holiday_park;
SELECT *, p.first_name, p.surname FROM booking_request
    JOIN person p on p.ID = booking_request.customer_id;

/* Alle Dinge die per Post versand wurden */
use holiday_park;
SELECT * FROM way_of_delivery
    WHERE way_of_delivery_type = 'mail';

/* Alle Restaurant buchungen */
use holiday_park;
SELECT contract_activities.* FROM contract_activities
    JOIN booking_request_activities bra on contract_activities.booking_req_id = bra.booking_req_id
    WHERE bra.type = 'Restaurant';

/* Name aller Personen die ihre Key Card nicht returned haben */
use holiday_park;
SELECT check_out_id, p.first_name, p.surname, key_cards_were_returned FROM check_outs
    JOIN person p on p.ID = check_outs.customer_id
    WHERE key_cards_were_returned = 0;

/* Alle Gebäude die child friendly oder tiere erlaubt sind und nicht reserviert sind */
use holiday_park;
SELECT house_nr, address, pets_allowed, max_occupants, child_friendly, b_flag as 'Bungalow', a_flag as 'Apartment', h_flag as 'House' FROM property
    WHERE (child_friendly = true OR pets_allowed = true) AND reservation = false;

/* Anzahl der Buchungen pro season */
use holiday_park;
SELECT season, count(season) from booking_request
    GROUP BY season;

/* Booking Request mit dem höchsten Preis */
use holiday_park;
SELECT max(price) FROM booking_request;

/* Update cleaning interval von toiletten mit pissoir */
use holiday_park;
SELECT * FROM toilet;
UPDATE toilet SET cleaning_interval_in_days = 2 WHERE pissoir IS NOT NULL;
