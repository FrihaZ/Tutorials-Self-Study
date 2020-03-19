INSERT INTO Species	
Values('Pentagalus P. furnessi', 'Bunny');  -- YOU DON'T NEED TO ADD THE id NUMBER, IT WILL DO IT ITSELF


INSERT INTO Animals
Values('Sally', 1, 'sally@hotmail.com'), 
	('Franklin', 1, 'fRANKLIN@HOTMAIL.com');


SELECT Animals.ID, Animals.ContactEmail + '- ' + Animals.Name , Animals.SpeciesID 
FROM Animals


-- select all data
SELECT * FROM Animals


-- alias(nickname)-- chaneg  the names of column
SELECT Animals.Name + ' - ' + Animals.ContactEmail	AS Contact, 
Animals.SpeciesID AS 'Species ID' FROM Animals

-- chnage name of table to USERS

SELECT USERS.Name + ' - ' + USERS.ContactEmail	AS Contact, 
USERS.SpeciesID AS 'Species ID' FROM Animals AS USERS