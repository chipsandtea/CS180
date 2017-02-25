-- Lab 2, Query 2

-- Find the different names of all persons who live at 1730 Alma Street.

SELECT DISTINCT Persons.Name
FROM Persons, Houses
WHERE Persons.HouseID = Houses.HouseID
    AND Houses.HouseAddress = '1730 Alma Street';
