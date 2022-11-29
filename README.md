# Zoo_Management_System_UE20CS301
A mini project as a part of the course Database Management Systems - UE20CS301. 
The project consists of an ER Diagram followed by a relational model created from the ER Diagram. 
The project was done on MySQL workbench using SQL as the query language . 
Zoo Management System is a miniature version of the actual zoo database.This project is based out of my numerous visits to the Bannerughatta National Park , Bengaluru , India.The website of the zoo was taken as a reference to form a few entities and the rest being my assumptions of what a typical zoo database would consist of. It consists of the information regarding the various aspects of the zoo - the animals in the zoo , the animals in the safari , facilities provided the staff details, adoption details, tourist details, etc . 
A zoo databse enables the efficient management of the resources of a zoo and a consolidated documentation of all the data.
It consists of the following entities and relations: 
1. Adoption – consists of records of the animals adopted, the class the belong to 
(Diamond > 3Lakh, Gold up to 2 Lakhs , Silver up to 1 lakh ), their age , number of 
animals adopted, the name of the adopter, the money paid for adoption and the time 
period (years) of adoption. 

2. Animals – consists of the names of animals , their age, a specific species ID allotted to 
them , the gender of the animals and the ID of their Care taker. 

3. Food – consists of the food requirement of all species, the daily and monthly food 
requirement of each animal .

4. Safari – consists of the safaris available in the zoo – tiger , ion , carnivore and 
herbivore safari . It also holds the timings of the safari(hours), the animals expected 
to be seen in the safari , the ticket price(including tariff) and the tariff split up. 

5. Facilities – holds the facilities available in the zoo premises like Battery operated car 
services, AC vehicles for safari , Parking for 2 and 4 wheelers , restaurants etc. 

6. Staff – holds the records containing the details of the employees of the zoo , their 
unique ID , names , number of working days, their work type and their age and date of 
birth.

7. Tourist – Holds the records of people who visit the zoo . It contains their mobile 
number unique to each tourist, their name, the safari that they have chosen, the price 
of their ticket and the mode of payment . 

8. Souvenir – Holds the records of a souvenir shop present in the zoo premises. Has the 
items , each distinguished by a unique ID, their names , the mobile number , email and 
name of the customer that purchased it , the total bill amount and the bill date. 

The following are some of the relations that map one entity to the other: 
1. BUYS – holds the records of the item ID of the item bought and the mobile number of 
the buyer 

2. VISITS, ADOPTS – Holds the records of the animal adopted with its adopter or the details 
of the animals visited and the visitor details.

3. CHOOSES_SAFARI - hold the records for the number of tourist that chose to take the wildlife safari , with the dat time details and the type of safari chosen. 

4. CONSUMES - maps every animal to the food entity.

This is the ER Diagram : 

![image](https://user-images.githubusercontent.com/73630726/204438207-e78d5df8-fa45-494c-a97c-8699c05ef974.png)

