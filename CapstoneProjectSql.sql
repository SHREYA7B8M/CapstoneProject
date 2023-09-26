Create database CapStone
use CapStone

CREATE TABLE AdminInfo (
	Id int Primary Key identity(1,1),
    EmailId VARCHAR(255),
    Password VARCHAR(255)
);

CREATE TABLE EmpInfo (
	Id int Primary Key identity(1,1),
    EmailId VARCHAR(255) unique,
    Name VARCHAR(255),
    DateOfJoining DATETIME,
    PassCode INT
);

CREATE TABLE BlogInfo (
    BlogId INT PRIMARY KEY identity(1,1),
    Title VARCHAR(255),
    Subject VARCHAR(255),
    DateOfCreation DATETIME,
    BlogUrl VARCHAR(255),
    EmpEmailId VARCHAR(255),
);

Insert into AdminInfo(EmailId,Password) Values ('Shreya','Anim@12')

INSERT INTO EmpInfo (EmailId, Name, DateOfJoining, PassCode)
VALUES ('geeta@gmail.com', 'Geeta Gupta', '2023-09-24 11:00:00', 12366);

INSERT INTO EmpInfo (EmailId, Name, DateOfJoining, PassCode)
VALUES ('jagan@gmail.com', 'Jagan Das', '2023-07-20 09:48:00', 54321);

INSERT INTO BlogInfo ( Title, Subject, DateOfCreation, BlogUrl, EmpEmailId)
VALUES ('Introduction to SQL', 'Database Management', '2023-09-21 14:30:00', 'https://example.com/sql-intro', 'geeta@gmail.com');

INSERT INTO BlogInfo ( Title, Subject, DateOfCreation, BlogUrl, EmpEmailId)
VALUES ( 'Advanced SQL Techniques', 'Database Optimization', '2023-07-20 16:15:00', 'https://example.com/advanced-sql', 'jagan@gmail.com');

Select * from AdminInfo
Select * from EmpInfo
Select * from BlogInfo