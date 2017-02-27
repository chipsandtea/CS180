-- Lab 3 2.3 Add Foreign Key Constraints

ALTER TABLE LandLords
ADD FOREIGN KEY (OwnerSSN)
REFERENCES Persons(SSN);

ALTER TABLE Tenants
ADD FOREIGN KEY (LeaseTenantSSN)
REFERENCES Persons(SSN);

-- The HouseID fields in Persons, Ownerships and Tenants should reference the HouseID field in Houses.

ALTER TABLE Persons
ADD FOREIGN KEY (HouseID)
REFERENCES Houses(HouseID);

ALTER TABLE Ownerships
ADD FOREIGN KEY (HouseID)
REFERENCES Houses(HouseID);

ALTER TABLE Tenants
ADD FOREIGN KEY (HouseID)
REFERENCES Houses(HouseID);

-- The LandlordID field in Ownerships should reference the LandlordID field in Landlords.

ALTER TABLE Ownerships
ADD FOREIGN KEY (LandlordID)
REFERENCES Landlords(LandlordID);

