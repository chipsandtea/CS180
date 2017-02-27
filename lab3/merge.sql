-- Merge

-- Update Tenants from NewRentPayments, if LeaseTenantSSN and Rent match
UPDATE Tenants
SET LastRentPaidDate = nrp.DatePaid, RentOverdue = False
FROM NewRentPayments nrp
WHERE (nrp.LeaseTenantSSN, nrp.Rent) IN (
     SELECT t.LeaseTenantSSN, t.Rent
     FROM Tenants t 
     WHERE t.LeaseTenantSSN = nrp.LeaseTenantSSN
     AND  t.Rent = nrp.Rent
     );

-- Insert missing rows
INSERT INTO Tenants
SELECT n.HouseID,
    n.ApartmentNumber,
    n.LeaseTenantSSN,
    CURRENT_DATE,
    NULL,
    n.Rent,
    n.DatePaid,
    FALSE
FROM NewRentPayments n
WHERE (n.HouseID, n.ApartmentNumber) NOT IN (
    SELECT t.HouseID, t.ApartmentNumber
    FROM Tenants t);

