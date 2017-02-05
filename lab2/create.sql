-- Lab2
-- Michael Gates

-- Drop the Lab2 schema and all tables to avoid conflicts
DROP SCHEMA Lab2 CASCADE;
-- Create an empty schema for Lab2
CREATE SCHEMA Lab2;

-- Alter search path for Lab2 schema, specific to logged in user
-- ALTER ROLE mjgates SET SEARCH_PATH to Lab2;

-- Create tables

CREATE TABLE Persons (
    SSN INTEGER PRIMARY KEY,
    NAME CHAR(30) NOT NULL,
    HouseID INTEGER,
    ApartmentNumber INTEGER,
    -- Decimal with at most 5 digits to the left of the decimal point
    --    and 2 decimal spaces after it.
    Salary DECIMAL(7,2)
);

CREATE TABLE Houses (
    HouseID INTEGER PRIMARY KEY,
    HouseAddress VARCHAR(40) UNIQUE,
    ApartmentCount INTEGER,
    Color VARCHAR(40)
);

CREATE TABLE Landlords (
    LandlordID INTEGER PRIMARY KEY,
    OwnerSSN INTEGER UNIQUE NOT NULL,
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
    HouseID INTEGER UNIQUE,
    ApartmentNumber INTEGER,
    LeaseTenantSSN INTEGER UNIQUE NOT NULL,
    LeaseStartDate DATE NOT NULL,
    LeaseExpirationDate DATE,
    Rent DECIMAL(7,2),
    LastRentPaidDate DATE,
    RentOverdue BOOLEAN,
    PRIMARY KEY (HouseID, ApartmentNumber)
);
