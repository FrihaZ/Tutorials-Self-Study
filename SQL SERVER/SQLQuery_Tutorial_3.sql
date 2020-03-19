CREATE INDEX IX_AnimalsSpecies
ON Animals(SpeciesID);  


DROP INDEX IX_AnimalsSpecies
ON Animals



-- create index on Name and COntact email

CREATE INDEX  IX_AnimalsContact
ON Animals(Name, ContactEmail);

