-- Lab1
-- Michael Gates

-- Drop the Lab1 schema and all tables to avoid conflicts
DROP SCHEMA Lab1 CASCADE;
-- Create an empty schema for Lab1
CREATE SCHEMA Lab1;

-- Alter search path for Lab1 schema, specific to logged in user
-- ALTER ROLE mjgates SET SEARCH_PATH to Lab1;

-- Create tables

CREATE TABLE Persons (
    SSN INTEGER PRIMARY KEY,
    NAME CHAR(30),
    HouseID INTEGER,
    ApartmentNumber INTEGER,
    -- Decimal with at most 5 digits to the left of the decimal point
    --    and 2 decimal spaces after it.
    Salary DECIMAL(7,2)
);

CREATE TABLE Houses (
    HouseID INTEGER PRIMARY KEY,
    HouseAddress VARCHAR(40),
    ApartmentCount INTEGER,
    Color VARCHAR(40)
);

CREATE TABLE Landlords (
    LandlordID INTEGER PRIMARY KEY,
    OwnerSSN INTEGER,
    LandlordAddress VARCHAR(40)
);

CREATE TABLE Ownerships (
    LandlordID INTEGER,
    HouseID INTEGER,
    PurchaseDate DATE,
    PropertyTax DECIMAL(7,2),
    PRIMARY KEY (LandlordID, HouseID)
);

CREATE TABLE Tenants (
    HouseID INTEGER,
    ApartmentNumber INTEGER,
    LeaseTenantSSN INTEGER,
    LeaseStartDate DATE,
    LeaseExpirationDate DATE,
    Rent DECIMAL(7,2),
    LastRentPaidDate DATE,
    RentOverdue BOOLEAN,
    PRIMARY KEY (HouseID, ApartmentNumber)
);
