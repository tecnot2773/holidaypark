use holiday_park;
/* Personen mit dem Nachnamen Schaden */
SELECT * FROM person WHERE surname = 'Schaden';

/* Alle Fahrzeuge die im Moment nicht in benutzung sind */
use holiday_park;
SELECT vehicle.vehicle_id, vc.cart_nr, vc.max_capacities FROM vehicle
    JOIN vehicle_cart vc on vehicle.vehicle_id = vc.vehicle_id
    WHERE currently_in_use = FALSE;

use holiday_park;
SELECT vehicle.vehicle_id, vb.bike_nr, vb.model FROM vehicle
    JOIN vehicle_bike vb on vehicle.vehicle_id = vb.vehicle_id
    WHERE currently_in_use = FALSE;

/* Alle Buchungsanfragen mit Vor- und Nachname der Kunden */
use holiday_park;
SELECT *, p.first_name, p.surname FROM booking_request
    JOIN person p on p.ID = booking_request.customer_id;

/* Alle Dinge die per Post versand wurden */
use holiday_park;
SELECT * FROM way_of_delivery
    WHERE way_of_delivery_type = 'mail';

