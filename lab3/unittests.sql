-- Lab3  2.5 Write unit tests

-- For each of the 3 HouseID foreign key constraints specified in section 2.3, write one unit test:
-- An INSERT command that violates the foreign key constraint (and elicits an error).

-- Insert with HouseID of 0, which violates foreign key constraint
INSERT INTO Persons (SSN, Name, HouseID, ApartmentNumber, Salary) 
    VALUES (974579341, 'Darth Vador', 0, 1, 1000);

-- Insert with HouseID of 7, which violates foreign key constraint
INSERT INTO Ownerships (LandlordID, HouseID, PurchaseDate, PropertyTax)
    VALUES (123, 7, '01/01/2001', 200);

-- Insert with HouseID of 0, which violates foreign key constraint
INSERT INTO Tenants (HouseID, ApartmentNumber, LeaseTenantSSN, LeaseStartDate,
                     LeaseExpirationDate, Rent, LastRentPaidDate, RentOverdue)
    VALUES (0, 7, 459020596, '01/01/2001', '01/01/2020',  900, '01/31/2017', TRUE);

-- For each of the 4 general constraints, write 2 unit tests:
-- An UPDATE command that meets the constraint.
-- An UPDATE command that violates the constraint (and elicits an error).

-- 1. PropertyTax in Ownerships must be zero or more.

-- Update with a PropertyTax greater than or equal to zero will meet the constraint.
UPDATE Ownerships
SET PropertyTax = 123.00
WHERE LandlordID = 100;

-- Update with a PropertyTax less than zero will meet the constraint.
UPDATE Ownerships
SET PropertyTax = -123.00
WHERE LandlordID = 100;

-- 2. Rent in Tenants must be positive.

-- Update with a positive Rent will meet the constraint.
UPDATE Tenants
SET Rent = 50.00
WHERE HouseID = 100;

-- Update with a non-positive Rent will violate the constraint.
UPDATE Tenants
SET Rent = 0.00
WHERE HouseID = 100;

-- 3. In Tenants, if LeaseExpirationDate isn’t NULL then it must be later than LeaseStartDate.

-- Update with a NULL LeaseExpirationDate
UPDATE Tenants
SET LeaseExpirationDate = NULL -- Weird
WHERE HouseID = 100;

-- Update with a non-null LastRentPaidDate that is earlier than LeaseStartDate
UPDATE Tenants
SET LeaseExpirationDate = '01/01/2014'
WHERE HouseID = 100;

-- 4. If LastRentPaidDate in Tenants is the current date, then RentOverdue must be FALSE.

-- Update LastRentPaidDate with a date other than current date, set RentOverdue to TRUE
UPDATE Tenants
SET LastRentPaidDate = '01/01/1969', RentOverdue = TRUE
WHERE HouseID = 100;

-- Update LastRentPaidDate with current date, set RentOverdue to FALSE
UPDATE Tenants
SET LastRentPaidDate = CURRENT_DATE, RentOverdue = TRUE
WHERE HouseID = 100;
 
