CREATE DATABASE AddressBook



SELECT Name
FROM sys.databases;

USE AddressBook


CREATE TABLE AddressBook
(
	FirstName	varchar(50),
	LastName	varchar (50),
	Address		varchar(150),
	City		varchar(25),
	State		varchar(25),
	zip			BigInt,
	PhoneNumber BigInt,
	Email		varchar(50)
	)


INSERT INTO AddressBook([FirstName] ,[LastName],[Address] ,[City],[State],[zip],[PhoneNumber],[Email])
	
Values ('Raji','Balusupai','Dindigul','Dindigul','TN',561775,9887512345,'Raji123@gmail.com'),
			('Mani','Jammula','gandhi maidan','Krosur','Hyderabad', 856475,965431287,'mani87348@gmail.com'),
			('Abhi','sri','colony','Amaravathi','Guntur',369342,897894234,'mana@gmail.com'),
			('Manasa','mehta','Nagar','Hyd','Maharashtra',534342,9874564234,'vaishyugmail.com')
		   

UPDATE AddressBook Set  LastName = 'Jammula' WHERE FirstName = 'Mani' ;

DELETE From AddressBook WHERE FirstName = 'Raji';
	
	SELECT * FROM AddressBook 


SELECT * From AddressBook WHERE City = 'Dindigul';
SELECT * From AddressBook WHERE State = 'Maharashtra';


SELECT COUNT(City)  From AddressBook WHERE City = 'Dindigul';
SELECT COUNT(State) From AddressBook WHERE State = 'TN';



SELECT * FROM AddressBook WHERE City = 'Dindigul'
Order by FirstName ASc; 


ALTER TABLE AddressBook ADD Type varchar(30);
SELECT * FROM Addressbook;

UPDATE AddressBook Set Type = 'Friend' WHERE FirstName = 'Raji' or FirstName = 'Manasa' ;
UPDATE AddressBook Set Type = 'Family' WHERE FirstName = 'Mani';
SELECT * From Addressbook WHERE Type = 'Friend';

SELECT COUNT (Type) From Addressbook WHERE Type = 'Friend';
