CREATE DATABASE Metillo;
SHOW DATABASES;
USE Metillo;

CREATE TABLE tblStudent (
	studentNumber INT(11) AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(100),
    lastName VARCHAR(100) NOT NULL,
    middleName VARCHAR(100),
    birthdate VARCHAR(20),
    citizenship VARCHAR(50) COMMENT "Example: Filipino, Nigerian, Korean",
    gender VARCHAR(100) COMMENT "Male or Female"
);

SHOW FULL COLUMNS FROM tblStudent;

INSERT INTO tblStudent VALUES 
	(202014912, "STEVEN", "ESPIDIDO", "ROSALDO", "2000-01-01", "FILIPINO", "MALE"),
    (202014165, "NINA KLARISSE", "ULANGKAYA", "AMBROSIO", "2000-01-02", "FILIPINO", "FEMALE"),
    (202011535, "ADRIAN", "CARRANZA", "RUBIA", "2000-01-03", "FILIPINO", "MALE"),
    (202011818, "JEAN", "DACLES", "RICO", "2000-01-04", "FILIPINO", "FEMALE"),
    (202012336, "GILLIAN KYLE", "CATAHAN", "DIMAALA", "2000-01-05", "FILIPINO", "MALE");

ALTER TABLE tblStudent CHANGE gender sex VARCHAR(6);
ALTER TABLE tblStudent CHANGE birthdate birthdate DATE;
ALTER TABLE tblStudent CHANGE citizenship citizenship VARCHAR(20);

ALTER TABLE tblStudent ADD age INT(3) AFTER birthdate;

ALTER TABLE tblStudent RENAME studentinfo;

SELECT UCASE(firstName) AS "First Name", UCASE(lastName) AS "Last Name", UCASE(middleName) AS "Middle Name" 
FROM studentinfo;

SELECT firstName, lastName, middleName, birthdate, age, REPLACE(citizenship, "FILIPINO", "Pinoy"), sex
FROM studentinfo;

SELECT studentNumber, CONCAT(firstName, " ", middleName, " ", lastName) AS "Full Name" 
FROM studentinfo;

SELECT lastName, REPEAT(lastName, 5) AS "Repeated Last Name" 
FROM studentinfo;

SELECT AVG(age) AS "Average Age" FROM studentinfo;

SELECT studentNumber, firstName, lastName, middleName,  DATE_FORMAT(birthdate, '%M %d, %Y') AS formattedBirthDate,  age, citizenship, sex 
FROM studentinfo;

SELECT sex, COUNT(*) AS Total FROM studentinfo GROUP BY sex;

SELECT * FROM studentinfo ORDER BY lastName ASC;