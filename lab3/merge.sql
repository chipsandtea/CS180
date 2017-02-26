

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
    FROM Tenants t)
