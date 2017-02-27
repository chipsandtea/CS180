-- Lab3  2.5 Write unit tests

-- For each of the 3 HouseID foreign key constraints specified in section 2.3, write one unit test:
-- An INSERT command that violates the foreign key constraint (and elicits an error).

INSERT INTO Persons (SSN, Name, HouseID, ApartmentNumber, Salary) 
       VALUES (974579341, 'Darth Vador', 100, 404, 600);

