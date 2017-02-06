-- Lab2, Query 5
-- Find the addresses and landlord names for single-dwelling homes.

SELECT  h.HouseAddress, p.Name
FROM Houses h, Persons p, Ownerships o, Landlords l
WHERE h.ApartmentCount = 1
    AND h.HouseID = o.HouseID
    AND l.LandlordID = o.LandlordID
    AND l.OwnerSSN = p.SSN
