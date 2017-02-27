-- Lab 3 2.6 Working with views

/*
2.6.1 Create a view
Create a view named Home_Landlords that gives the SSN, LandlordID, HouseID, ApartmentNumber 
for Landlords who live in a house that they own. The SSN should be the Landlord’s SSN, 
and the HouseID and ApartmentNumber should be for the location where the Landlord lives.
*/

CREATE VIEW Home_Landlords (SSN, LandlordID, HouseID, ApartmentNumber) AS
   SELECT l.OwnerSSN, l.LandlordID, t.HouseID, t.ApartmentNumber
   FROM Landlords l, Tenants t
   WHERE l.OwnerSSN = t.LeaseTenantSSN; 
