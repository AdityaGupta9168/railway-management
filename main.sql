REM   Script: project
REM   project__

Create table Ticket(T_id number,Tim timestamp,Dat date,Price number,C_id number) 
INSERT INTO Ticket VALUES(2819542664,'22-Oct-2022 09:15','22-Oct2022',186,11741);

INSERT INTO Ticket VALUES(2819542612,'14-Sep-2021 10:45','14-Sep-2021', 125,  
11248);

INSERT INTO Ticket VALUES(2819542687,'26-Apr-2021 10:10:55pm','26-Apr- 2021',  
550, 11875);

INSERT INTO Ticket VALUES(2819542655,'10-Aug-2021 03:40:21pm','10-Aug2021',240,11657);

INSERT INTO Ticket VALUES(2819542694,'07-Mar-2021 01:57:43pm','07-Mar2021',605,11432);

Select * from Ticket;

Create table Passenger(Email varchar(200),Pass varchar(200),F_Name  
varchar(200),L_Name varchar(200),Mobile number,Address varchar(200),T_No  
number,C_id number) 
INSERT INTO Passenger VALUES('ybansal@gmail.com', '****',  
'Yash','Bansal',123456789,'Faridabad', 12926,11248);

INSERT INTO Passenger VALUES('ayadav@yahoo.in','****', 'Arvind',  
'Yadav',234567891,'Bhatinda', 12013,11432);

INSERT INTO Passenger VALUES('rsingh@gmail.com', '****', 'Rajat',  
'Singh',345678921,'Hyderabad',22429,11741);

INSERT INTO Passenger VALUES('pchauhan@gmail.com','****', 'Puneet',  
'Chauhan',456789312,'Mumbai',12497,11875);

INSERT INTO Passenger VALUES('hmalhotra@gmail.com', '****', 'Harshit',  
'Malhotra',567894231,'Jaipur',20807,11657);

Select * from Passenger;

Create table Train(AvailableSeats number,T_Name varchar(200),ArrivalTime  
timestamp,DepartureTime timestamp,TotalSeats number, R_id number, T_No  
number) 
INSERT INTO Train VALUES(823,'ASR SHTBDI EXP','10-Jan-2021 07:20','10-Jan- 2021  
01:30:30pm',1000,843,22429);

INSERT INTO Train VALUES(060,'AII ASR EXP','10-Jan-2021 8:05:05pm','11-Jan- 2021  
12:35:35pm',500,321,12926);

INSERT INTO Train VALUES(005,'PASCHIM EXP','10-Jan-2021 11:30','10-Jan- 2021  
02:30:30pm',500,654,12497);

INSERT INTO Train VALUES(081,'MEWAR EXP','10-Jan-2021 07:20','10-Jan-2021  
1:30:30pm',250,784,20807);

INSERT INTO Train VALUES(450,'HEMKUNT EXP','10-Jan-2021 5:20:20pm','10- Jan2021 9:58:58pm',1000,591,12013);

Select * from Train;

Create table Route(Source varchar(200),R_Name varchar(200),Destination  
varchar(200),S_No. number,R_id number) 
INSERT INTO Route VALUES('Jaipur','JPJUC','Jalandhar',31,321);

INSERT INTO Route VALUES('Kota', 'KOTAUDZ', 'Udaipur', 43,784);

INSERT INTO Route VALUES('Rishikesh','RKSHCDG','Chandigarh',54,591);

INSERT INTO Route VALUES('Amritsar', 'ASRNDLS', 'New Delhi',28,843);

INSERT INTO Route VALUES('Mumbai','MMCT','Ambala',62,654);

Select * from Route;

Create table RailwayStation(Platform_No number,S_Name varchar(200), S_No  
number) 
INSERT INTO RailwayStation VALUES(3,'Rishikesh',54);

INSERT INTO RailwayStation VALUES(6,'Amritsar',28);

INSERT INTO RailwayStation VALUES(2,'Mumbai',62);

INSERT INTO RailwayStation VALUES(5,'Kota',43);

INSERT INTO RailwayStation VALUES(1,'Jaipur',31);

Select * from RailwayStation;

Create table HasRoute(R_id number,S_No number) 
INSERT INTO HasRoute VALUES(654,62);

INSERT INTO HasRoute VALUES(591,54);

INSERT INTO HasRoute VALUES(321,31);

INSERT INTO HasRoute VALUES(843,28);

INSERT INTO HasRoute VALUES(784,43);

Select * from HasRoute;

Create table HasTrain(T_Types varchar(200),T_No number, S_No number) 
INSERT INTO HasTrain VALUES(Express,22429,28);

INSERT INTO HasTrain VALUES(Express,20807,43);

INSERT INTO HasTrain VALUES(Express,12926,31);

INSERT INTO HasTrain VALUES(Express,12497,62);

INSERT INTO HasTrain VALUES(Express,12013,54);

Select * from HasTrain;

--Query to display details of train which arrive in evening at the station 
Select * from train where to_char(ArrivalTime,'pm')='pm';
--Query to display details of passenger who has taken highest Fair Ticket 
Select p.F_Name , p.L_Name, T.T_id,T.Price from Passenger p,Ticket T where 
p.C_Id=T.C_Id and price =(select max(price) from Ticket);
--Query to display train no whose station is Jaipur
select t.T_No,t.S_No,R.S_Name from HasTrain t,RailwayStation R where 
R.S_Name='Jaipur' and R.S_No=t.S_No;



