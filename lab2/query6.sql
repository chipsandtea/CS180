-- Lab2, Query 6
-- For the tenancies that have an overdue rent, find the address and apartment number of the tenancy, the ssn, name and salary of the lease tenant, and the name of the landlord of the leased apartment. THe attribute for the lease tenant's name should appear as TenantName, and the attribute for the landlord's name should appear as LandlordName.


/*
SELECT h.HouseAddress
FROM Houses h
WHERE h.HouseID IN (SELECT t.HouseID
                FROM Tenants t
                WHERE t.RentOverdue = true)
;
*/

SELECT Tenants.ApartmentNumber, Tenants.LeaseTenantSSN, t.Name as TenantName, t.Salary, Houses.HouseAddress, l.name as LandlordName
FROM Houses, Tenants, Persons t, Persons l, Landlords, Ownerships
WHERE RentOverdue
AND Tenants.HouseID = Houses.HouseID
AND t.SSN = Tenants.LeaseTenantSSN
AND l.SSN = Landlords.OwnerSSN
AND Ownerships.LandlordID = Landlords.LandlordID
AND Ownerships.HouseID = Houses.HouseID;
