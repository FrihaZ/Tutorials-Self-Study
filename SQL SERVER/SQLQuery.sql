-- aLTER THE TABLE OR
-- drop the table and recreate it: delets the entire table
-- ATTRIBUTE - describes the column- right after the column 

DROP TABLE IF EXISTS Interests   -- drop the children first
DROP TABLE IF EXISTS Animals
DROP TABLE IF EXISTS Species

CREATE TABLE Species(
	ID INT PRIMARY KEY IDENTITY,  -- indexed
	Species VARCHAR(50) NOT NULL UNIQUE, -- indexed
	FriendlyName VARCHAR(50) NOT NULL
	);

	


CREATE TABLE Animals(
	ID INT PRIMARY KEY IDENTITY, -- indexed
	Name VARCHAR(50) NOT NULL,
	SpeciesID INT NOT NULL REFERENCES Species(ID),-- a foreign id which needs indexing -- linked to hte ID in species table
	ContactEmail VARCHAR(50) NOT NULL UNIQUE -- indexed

)


-- INTERMEDIATE TABLE
CREATE TABLE Interests(
	AnimalID INT NOT NULL,   -- TO ALLOW FOR AN ANIMAL TO BE INTERESTED TO IN MORE THAN 1 SPECIES REMOVE UNIQUE
	SpeciesID INT NOT NULL,
	CONSTRAINT FK_InterestsAnimals FOREIGN KEY(AnimalID) REFERENCES Animals(ID), 
	CONSTRAINT FK_InterestsSpecies FOREIGN KEY(SpeciesID) REFERENCES Species(ID), 
	CONSTRAINT PK_Interests PRIMARY KEY(AnimalID, SpeciesID) -- indexed -- COMPOUND (COMPOSITE) PRIMARY KEY 
	

)

-- HUNAGRIAN NOTATION 
-- CREATE ID COLUMN - UNIQUE TO DESCRIBE INTEREST

