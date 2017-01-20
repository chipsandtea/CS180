-- Lab1
-- Michael Gates

-- Drop the Lab1 schema to avoid conflicts
DROP SCHEMA Lab1 CASCADE;
-- Create an empty schema for Lab1
CREATE SCHEMA Lab1;
-- Alter search path for Lab1 schema, specific to logged in user
ALTER ROLE mjgates SET SEARCH_PATH to Lab1;

-- Create tables

CREATE TABLE Persons (
    SSN INT,
    NAME CHAR(30),
    HouseID INT,
    ApartmentNumber INT,
    -- Decimal with at most 5 digits to the left of the decimal point
    --    and 2 decimal spaces after it.
    Salary DECIMAL(7,2)
);

