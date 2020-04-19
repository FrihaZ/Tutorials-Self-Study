 
CREATE DATABASE Tutorial4;

---DROP DATABASE Tutorial2;


-- only use this database
USE[Tutorial4];

DROP TABLE IF EXISTS tblPerson;
DROP TABLE IF EXISTS tblGender;


-- An nvarchar column can store any Unicode data. 
-- A varchar column is restricted to an 8-bit codepage.


CREATE TABLE tblGender(
ID INT NOT NULL PRIMARY KEY,
Gender NVARCHAR(50) NOT NULL
);


CREATE TABLE tblPerson(
ID INT NOT NULL PRIMARY KEY,
Name NVARCHAR(50) NOT NULL,
Email NVARCHAR(50) NOT NULL,
GenderID INT NULL REFERENCES tblGender(ID)
);


---- CREATE FOREIGN KEY 


ALTER TABLE tblPerson 
ADD CONSTRAINT FK_tblPerson_GenderID 
FOREIGN KEY (GenderID) REFERENCES tblGender(ID)



-- ADD A COLUMN THAT WORKS AS A PRIMARY KEY TO AN EXISTING TABLE
-- INT IDENTITY(1,1) the first 1 means the starting value of ID and
-- the second 1 means the increment value of ID.

--ALTER TABLE tblGender ADD ID INT IDENTITY(1,1) not null
---GO
--ALTER TABLE tblGender
--ADD CONSTRAINT pk_tblGender_ID PRIMARY KEY(ID)


-- if gender is not given store default value

INSERT INTO tblPerson (ID, Name, Email) 
VALUES(4, 'TT', 'TT@r.com') -- no gender given

-- ALTERING AN EXISTING COLUMN TO ADD A DEFULT CONSTRAINT

ALTER TABLE tblPerson
ADD CONSTRAINT DF_tblPerson_GenderID
DEFAULT 3 FOR GenderID


SELECT * FROM tblPerson