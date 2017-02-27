-- Lab 3 2.4 Add General Constraints

-- 1. PropertyTax in Ownerships must be zero or more.

-- ALTER TABLE Ownerships DROP CONSTRAINT tax_greater_zero;
ALTER TABLE Ownerships ADD CONSTRAINT tax_greater_zero
CHECK ( PropertyTax >= 0 );

-- 2. Rent in Tenants must be positive.

-- ALTER TABLE Tenants DROP CONSTRAINT positive_rent;
ALTER TABLE Tenants ADD CONSTRAINT positive_rent
CHECK ( Rent > 0 );

-- 3. In Tenants, if LeaseExpirationDate isn’t NULL then it must be later than LeaseStartDate.

ALTER TABLE Tenants ADD CONSTRAINT date_check
CHECK (
       ( LeaseExpirationDate <> NULL 
         AND LeaseExpirationDate > LeaseStartDate )
       OR LeaseExpirationDate is NULL
      );

-- 4. If LastRentPaidDate in Tenants is the current date, then RentOverdue must be FALSE.

ALTER TABLE Tenants ADD CONSTRAINT rent_overdue_false
CHECK (
       ( LastRentPaidDate = CURRENT_DATE 
         AND RentOverdue = FALSE )
       OR LastRentPaidDate <> CURRENT_DATE
      );


