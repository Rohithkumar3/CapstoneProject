Create database Capstone
use Capstone

CREATE TABLE AdminInfo (
    EmailId NVARCHAR(100) PRIMARY KEY,
    Password NVARCHAR(100) NOT NULL
);

insert into admininfo values('rohithkumar@gmail.com','admin@123')


CREATE TABLE EmpInfo (
    EmailId NVARCHAR(255) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    DateOfJoining DATE NOT NULL,
    PassCode INT NOT NULL
);
insert into Empinfo values('Emp@gmail.com','Suresh','2023-01-18',3)

CREATE TABLE BlogInfo (
    BlogId INT PRIMARY KEY,
    Title NVARCHAR(255) NOT NULL,
    Subject NVARCHAR(MAX) NOT NULL,
    DateOfCreation DATETIME NOT NULL,
    BlogUrl NVARCHAR(MAX) NOT NULL,
    EmpEmailId NVARCHAR(255),
);
insert into BlogInfo values(101,'Life Of Animal','Forest','2023-02-16','www.google.com','Emp@gmail.com')

select * from AdminInfo
select * from EmpInfo
select * from BlogInfo