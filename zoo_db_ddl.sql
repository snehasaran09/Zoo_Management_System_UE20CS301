USE zoo_database;

INSERT INTO ADOPTION Values
("El078","Asian Elephant","Suvarna","Diamond Class","Sneha Saravanan",5,300000,1,"2019-2020"),
("Wt012","White Tiger","Sher","Diamond Class","Saravanan L",1,800000,1,"2016-2018"),
("Il005","Indian Leopard","Rambo","Gold Class","Dhruv S",3,100000,1,"2022-2023"),
("Bb004","Black Buck","Becky","Silver Class","Salman Khan",2,75000,1,"1995-2000"),
("Ze003","Zebra","Zethur","Diamond Class","Sangeetha",8,150000,1,"2015-2016");
SELECT * from adoption;

INSERT INTO ANIMALS Values
("El078","Asian Elephant","Elephant Corridor","F",5,170,112),
("Wt012","White Tiger","Caged-Zoo","M",1,70,210),
("Il005","Indian Leopard","Big Cats Corridor","F",3,20,017),
("Bb004","Black Buck","Deer Zone","M",2,6,101),
("Ze003","Zebra","Zebra Enclosure","F",8,10,098),
("Ch001","Cheetah","Big Cats Corridor","F",3,25,018),
("Ch002","Cheetah","Big Cats Corridor","M",6,30,018),
("Li013","Lion","Den-Big Cats Corridor","M",10,70,019),
("Li014","Lioness","Den-Big Cats Corridor","F",10,70,019),
("Zo015","Peacock","Birds Cage1-Zoo","M",8,1,200),
("Zo016","Lion Tailed Macaw","Birds Cage2-Zoo","F",2,1,201),
("Zo017","Oranguttan","Monkey Cage-Zoo","M",3,2,201);
SELECT * FROM ANIMALS;

INSERT INTO BUYS VALUES
(1101,"9108989945"),
(0001,"9845419934"),
(2213,"9734516277"),
(2138,"8746329018");
SELECT * FROM BUYS;


INSERT INTO FACILITIES VALUES
("Buggy Service","Zoo Premises",12,087),
("Safari A/C Vehicle","Safari Tours",60,135),
("Parking","Entrance",150,997),
("Restaurant","Near Parking",200,990);
SELECT * from facilities;

INSERT INTO FOOD VALUES
("El078","Asian Elephant",100000,5100,170),
("Wt012","White Tiger",200000,2100,70),
("Il005","Indian Leopard",80000,600,20),
("Bb004","Black Buck",10000,180,6),
("Ze003","Zebra",75000,300,10),
("Ch001","Cheetah",125000,750,25),
("Ch001","Cheetah",150000,900,30),
("Li013","Lion",500000,210,70),
("Li013","Lioness",500000,210,70),
("Zo015","Peacock",3000,30,1),
("Zo016","Lion Tailed Macaw",5000,30,1),
("Zo017","Oranguttan",6000,60,2);
SELECT * FROM FOOD;


INSERT INTO Safari VALUES 
("SAF01","Lion Safari","Lion, Lioness",200,1,0.25,"9108989945"),
("SAF02","Tiger Safari","Tiger",180,1,0.20,"9845419934"),
("SAF03","Carnivore Safari","Tiger, Cheetah, Leopard, Black Panther, Lion",360,3,0.25,"9734516277"),
("SAF04","Herbivore Safari","Bear, Deer, Black Buck, Sambar deer, Zebra",300,3,0.25,"8746329018");
SELECT * FROM SAFARI;


INSERT INTO Souvenir VALUES
(1101,"Jungle Theme Coffee Mug","9198097763","snehazoo02@gmail.com","Sneha",500,'2022-04-28',0),
(0001,"Bathroom Towels","8364738290","vikramsan03@yahoo.com","Vikram",320,"2019-09-09",30),
(2213,"Key Chains","9283746517","tarunset10@gmail.com","Tarun",160,"2022-10-01",20),
(2138,"Peacock Feather","9127846975","saranlaks24@gmail.com","Saran",500,"2021-09-26",40),
(1213,"Binocular","9198097763","snehazoo02@gmail.com","Sneha",2700,'2022-04-28',300),
(5340,"Fridge Magnet","9283746517","tarunset10@gmail.com","Tarun",360,"2022-10-01",40),
(4496,"Recycled Paper","2637980012","dhruvsars02@gmail.com","Dhruv",270,"2021-08-17",25);
SELECT * from souvenir;

INSERT INTO Staff VALUES 
(112,"Madan",5,"elephant Care Taker",42,"1980-12-10","M"),
(210,"Seema",4,"White Tiger Care Taker",32,"1990-03-04","F"),
(017,"Naveen",3,"Indian Leopard Care Taker",37,"1985-01-03","M"),
(101,"Reshma",4,"Black Buck Care Taker",29,"1993-09-07","F"),
(098,"Madappa",5,"Zebra Care Taker",45,"1977-04-06","M"),
(018,"Ranganna",4,"Cheetah Care Taker",39,"1983-12-23","M"),
(019,"Rahman",3,"Lion Care Taker",33,"1991-12-03","M"),
(200,"Lalitha",4,"Peacock Care Taker",24,"1998-02-23","F"),
(201,"Kamesh",5,"Oranguttan Care Taker",29,"1993-05-11","M"),
(087,"Lokesh",6,"Buggy Service",26,"1993-11-11","M"),
(135,"Ramesh",4,"Safari A/C Vehicle Driver",50,"1972-12-23","M"),
(997,"Srinivas",3,"Parking Incharge",49,"1973-04-28","M"),
(990,"Manjunath",6,"Restaurant Supervisor",36,"1994-07-15","M");
SELECT * from staff;

INSERT INTO Tourist VALUES
("9108989945","Lion Safari","IN","Sneha",22,200,"Deb/Credit","2022-01-03"),
("9845419934","Tiger Safari","IN","Saran",52,180,"UPI","2021-12-30"),
("9734516277","Carnivore Safari","US","Dhruv",15,400,"Cash","2021-12-31"),
("8746329018","Herbivore Safari","IN","Sangeetha",45,300,"UPI","2017-01-05");
SELECT * from tourist;

INSERT INTO Visit_Adopts VALUES
("El078","9108989945","Y","Y"),
("Il005","9845419934","N","Y"),
("Ze003","9734516277","Y","N");
SELECT * FROM Visit_Adopts;

/* Aggregate Function 1 - Ordering the Food in descending order by cost*/ 
SELECT * FROM FOOD
GROUP BY Species_ID 
ORDER BY (Cost)DESC;

/* Aggregate Function 2 - Displaying Animals Of Age > 4*/
SELECT * FROM STAFF
WHERE STAFF.Age > 30;

/* Left Outer Join - Between Adoption and Animals*/
SELECT * FROM ADOPTION
LEFT JOIN ANIMALS 
ON ADOPTION.Species_ID = ANIMALS.Species_ID;

/* Right Outer Join - Between Souvenir and Buys Table*/
SELECT * FROM SOUVENIR 
RIGHT JOIN BUYS
ON SOUVENIR.Item_ID = BUYS.Item_ID;

/* Nested Query - selecting the location of elephant using adoption table and animals table */
SELECT Location 
FROM ANIMALS 
WHERE Species_ID IN (SELECT Species_ID 
FROM ADOPTION
WHERE Species_ID = "El078");

/* TRIGGER FUNCTION - INSERT Trigger */
CREATE TABLE food_ins
(Species_ID varchar(5),
Species_name varchar(255),
time_modified timestamp);

CREATE TRIGGER FOOD_INSERTS before insert on FOOD
for each row insert into food_ins values(new.Species_ID,new.Species_name,now());

INSERT INTO FOOD VALUES 
("El078","African Elephant",200000,120,100);
select * from food_ins;

CREATE TABLE EXEC_FOOD(food_id int NOT NULL,
					 animal_age int);

INSERT INTO EXEC_FOOD VALUES
/*(1,10),
(2,11),
(3,12),
(4,13),
(5,14),
(6,15),
(7,17),
(8,10),
(9,16),
(10,20),
(11,10),
(12,9),
(13,4),
(14,7),
(15,21),
(16,18),
(17,10),
(18,30),
(19,11),
(20,16),
(21,20),
(22,23),
(23,10),
(24,10),
(25,1),
(26,03),
(27,08),
(28,03),
(29,15),
(30,16),
(31,10),
(32,2),
(33,1),
(34,17),
(35,11),
(35,12),
(36,23),
(37,13),
(38,03),
(39,05),
(40,02),
(41,1),
(42,13),
(43,14),
(44,11),*/
(46,10),
(47,7),
(48,8),
(49,2),
(50,12),
(51,15),
(52,22),
(53,13),
(54,6),
(55,18),
(56,19),
(57,21),
(58,10),
(59,13),
(60,24),
(61,19),
(62,9),
(63,8),
(64,7),
(65,6),
(66,5),
(67,7),
(68,3),
(69,2),
(70,4);

SELECT * FROM EXEC_FOOD 
GROUP BY food_id
ORDER BY(animal_age)DESC;
