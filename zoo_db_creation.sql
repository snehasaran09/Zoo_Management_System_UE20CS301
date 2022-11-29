use zoo_database;
CREATE TABLE Tourist ( Mob_No varchar(10) NOT NULL,
					 Package_Choice varchar(255),
                     Country Varchar(255) NOT NULL,
                     Tourist_Name varchar(255),
                     Age int,
                     Tcket_Price int,
                     Payment_Info varchar(10),
                     Visit_date date,
                     primary key(Mob_No));
CREATE TABLE Staff ( Emp_ID int NOT NULL,
					 Emp_Name varchar(255) NOT NULL,
                     Work_Days int,
                     Work_Type varchar(255),
                     Age int,
                     DOB date,
                     Gender varchar(10),
                     primary key(Emp_ID));
CREATE TABLE Safari ( Safari_ID varchar(5) NOT NULL,
					 Safari_name varchar(255) NOT NULL,
                     Animals_expected varchar(255) ,
                     Ticket_Price int,
                     Safari_hrs float,
                     Tariff float,
                     Mob_No varchar(10),
                     foreign key(Mob_No) references Tourist(Mob_No),
                     primary key(Safari_ID));
CREATE TABLE Animals ( Species_ID varchar(5) NOT NULL,
					 Species_name varchar(255) NOT NULL,
					 Location varchar(255),
                     Animal_gender varchar(2),
                     Age int,
					 Food_Requirement_KG int,
                     Emp_ID int NOT NULL,
                     foreign key(Emp_ID) references Staff(Emp_ID),
                     primary key(Species_ID));
CREATE TABLE Adoption ( Species_ID varchar(5) NOT NULL,
					 Species_name varchar(255),
					 Animal_name varchar(255) NOT NULL,
                     Class varchar(255) ,
                     Adopter_Name varchar(255),
                     Age int NOT NULL,
                     Amount int NOT NULL,
                     No_Adopted int,
                     Time_Period varchar(20),
                     primary key(Species_ID));
CREATE TABLE Food ( Species_ID varchar(5) NOT NULL,
					 Species_name varchar(255) NOT NULL,
                     Cost int,
                     Monthly_food_procured int,
                     Daily_req int,
                     foreign key(Species_ID) references ANIMALS(Species_ID));
                     
CREATE TABLE Souvenir ( Item_ID int NOT NULL,
					 Item_Name varchar(255) NOT NULL,
                     Mob_No varchar(10),
                     Email varchar(255),
                     Cust_name varchar(255),
                     Bill_amt int,
                     Bill_Date date,
                     Discount int,
                     primary key(Item_ID));
CREATE TABLE Facilities ( 
					 Faci_Name varchar(255),
                     Location varchar(100),
                     Capacity int,
                     Operator_ID int NOT NULL,
                     foreign key(Operator_ID) references Staff(Emp_ID));
                     
CREATE TABLE VISIT_ADOPTS( 
Species_ID varchar(5),
Mob_No varchar(10),
Visit varchar(2),
Adopts varchar(2),
foreign key(Species_ID) references ANIMALS(Species_ID),
foreign key(Mob_No) references TOURIST(Mob_No));

CREATE TABLE BUYS(
Item_ID int,
Mob_No varchar(10),
foreign key(Item_ID) references SOUVENIR(Item_ID),
foreign key(Mob_No) references TOURIST(Mob_No));

						