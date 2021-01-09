use holiday_park;

DELETE FROM is_in_charge_of WHERE subordinate IS NOT NULL;
DELETE FROM gifts_booking_to WHERE giftee IS NOT NULL;
DELETE FROM person WHERE ID IS NOT NULL;

ALTER TABLE person AUTO_INCREMENT = 1;
INSERT INTO person (first_name,surname,street,town,phone_number,birth_date,c_flag,customer_number,e_flag,SSN) VALUES
    ('Zakary','Hand','02767 Stracke Harbor Suite 232','Jastshire','(448)200-3152','1976-07-25',NULL,NULL,1,'479408909'),
    ('Aron','Moen','170 Joshua Lock Apt. 647','Port Tracey','(079)862-4481x27021','1995-04-21',NULL,NULL,1,'308019569'),
    ('Kacie','Wunsch','402 Brakus Glens','Hertamouth','06928932210','1984-04-18',NULL,NULL,1,'797479854'),
    ('Lula','Vandervort','0417 Gislason Mills','Narcisofurt','03705310123','1974-05-19',NULL,NULL,1,'563449619'),

    ('Tanner','Kirlin','6125 Toy Spring Apt. 063','New Frankchester','501.195.0128x710','1993-05-22',1,'767329713',NULL,NULL),
    ('Hailey','Heller','5655 Afton Spurs','South Amiya','+29(5)4942686083','1982-03-30',1,'116114718',NULL,NULL),
    ('Caroline','Schaden','83874 Maggio Trafficway','Port Westonport','1-677-254-6837','1998-02-05',1,'235562552',NULL,NULL),
    ('Viola','Kessler','869 Mallie Inlet Apt. 180','Keefeport','885-133-8857','1970-08-05',1,'526399286',NULL,NULL),
    ('Destinee','Streich','019 Ortiz Plains','Port Antonina','(764)733-7317x201','1979-01-13',1,'194438740',NULL,NULL),
    ('Trent','Kshlerin','9686 Streich Fields','Cooperbury','498.878.9872x067','1981-06-26',1,'553816920',NULL,NULL);

INSERT INTO is_in_charge_of (supervisor, subordinate) VALUES (1, 2),
       (1, 3),
       (1, 4);

INSERT INTO gifts_booking_to  (gifter, giftee) VALUES
    (5,6),
    (7,8);

