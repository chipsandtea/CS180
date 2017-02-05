-- Lab 2, Query 3
-- Find the different colors and apartment counts of houses where persons named John Smith live.

SELECT DISTINCT Houses.Color, Houses.ApartmentCount
FROM Houses, Persons
WHERE Houses.HouseID = Persons.HouseID
    AND Persons.Name = 'John Smith';

